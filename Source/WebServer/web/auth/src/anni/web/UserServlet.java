
package anni.web;

import java.io.IOException;
import java.io.BufferedReader;
import java.io.InputStreamReader;

import java.net.URL;
import java.net.URLConnection;

import java.util.*;
import java.text.*;

import anni.utils.OnlineUserBindingListener;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import anni.dao.UserDao;
import anni.dao.ThreadDao;
import anni.dao.WiFiInfoDao;

import anni.domain.User;
import anni.domain.Thread;
import anni.domain.WiFiInfo;

import anni.contl.*;
import anni.utils.UTools;


public class UserServlet extends HttpServlet {
	
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private UserDao userDao = new UserDao();
	private ThreadDao threadDao = new ThreadDao();
	private WiFiInfoDao mWiFiInfoDao = new WiFiInfoDao();
	
    //private ContlServlet contlServlet = new ContlServlet();
    private SSHContlServlet sshContlServlet = new SSHContlServlet();
    
    private UTools mUTools = new UTools();
    
    private String ElePassWord = "";

    /**
     * 处理get请求.
     */
    public void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {

        this.process(request, response);
    }

    /**
     * 处理post请求
     */
    public void doPost(HttpServletRequest request,HttpServletResponse response)
        throws ServletException, IOException {

        this.process(request, response);
    }

    /**
     * 处理请求.
     */
    public void process(HttpServletRequest request,HttpServletResponse response)
        throws ServletException, IOException {

        String method = request.getParameter("method");

        try {
            // 分发请求
            if ("register".equals(method)) {
                this.register(request, response);
            } else if ("login".equals(method)) {
                this.login(request, response);
            } else if ("passlogin".equals(method)) {
                this.passlogin(request, response);
            } else if ("logout".equals(method)) {
                this.logout(request, response);
            } else if ("admin_login".equals(method)) {
                this.admin_login(request, response);
            } else if ("admin_logout".equals(method)) {
                this.admin_logout(request, response);
            } else if ("user_info".equals(method)) {
                this.user_info(request, response);
            } else {
            	this.loginweb(request, response);
            }
        } catch(Exception ex) {
            System.err.println(ex);
            ex.printStackTrace();
        }
    }

    //认证页面
    public void loginweb(HttpServletRequest request,HttpServletResponse response) throws Exception {
    	HttpSession session = request.getSession();
    	
    	//如果从URL中能获取到参数，就跳转一下，别让用户看到原始URL
    	WiFiInfo mWiFiInfo = mWiFiInfoDao.GetInfo(request, response);
		if(mWiFiInfo==null) {
			//如果是跳转后的页面，URL中已经不带参数，参数已经放到session里
			mWiFiInfo = (WiFiInfo) session.getAttribute("mWiFiInfo");
			if(mWiFiInfo==null) {
				response.sendRedirect("http://1.1.1.1:80");
				return;
    		}
		} else {
			//获取到参数了，就跳转一下，别让用户看到原始URL
			session.setAttribute("mWiFiInfo", mWiFiInfo);
			//response.sendRedirect(request.getContextPath() + "/auth");
			//return;
		}
    	
	    request.getRequestDispatcher("/user/login.jsp").forward(request, response);
    }

    /**
     * 注册新用户.
     */
    public void register(HttpServletRequest request,HttpServletResponse response) throws Exception {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String requestCaptcha = request.getParameter("captcha");
        String sessionCaptcha = (String) request.getSession().getAttribute("captcha");

        boolean userExists = userDao.checkExists(username);
        if (userExists) {
            request.setAttribute("error", "用户名：" + username + "已被使用了，请更换其他用户名注册。");
            request.getRequestDispatcher("/user/register.jsp").forward(request, response);
        } else {
			if (sessionCaptcha.equals(requestCaptcha)) {
				User user = new User();
            	user.setUserName(username);
            	user.setPassword(password);
            	SimpleDateFormat s = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				Date date = new Date();
				user.setRegTime(s.format(date));
				user.setState(1);
           	 	userDao.save(user);
           	 	
            	response.sendRedirect(request.getContextPath() + "/user/security/registerSuccess.jsp");
            	return;
			} else if(requestCaptcha != null) {
           	 	request.setAttribute("error", "验证码输入错误");
            	request.getRequestDispatcher("/user/register.jsp").forward(request, response);
            	return;
			} else {
	        	response.sendRedirect(request.getContextPath() + "/user/register.jsp");
	        	return;
			}
        }
    }

    /**
     * 管理员登录.
     */
    public void admin_login(HttpServletRequest request,HttpServletResponse response) throws Exception {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
		User user = userDao.login(username, password);
        if (user != null) {
			int nState = user.getState();
			if (nState == 0) {
				if (user.getLevel() != 1) {
					request.setAttribute("error", "非管理员身份！");
				} else {
					SimpleDateFormat s = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
					Date date = new Date();
					user.setLastLogin(s.format(date));
					userDao.update(user);
					HttpSession session = request.getSession();
					session.setAttribute("user", user);
					
					response.sendRedirect(request.getContextPath() + "/admin.do?method=userlist");
					return;
				}
			} else if (nState == 1) {
				request.setAttribute("error", "您的账户暂未通过审核！");
			} else if (nState == 2) {
				request.setAttribute("error", "你的账户已被禁用！");
			} else {
				request.setAttribute("error", "您的账户遭遇异常！");
			}
        } else {
            request.setAttribute("error", "用户名或密码错误！");
        }
		
		request.getRequestDispatcher("/admin/login.jsp").forward(request, response);
    }

    /**
     * 管理员注销.
     */
    public void admin_logout(HttpServletRequest request,HttpServletResponse response) throws Exception {
        request.getSession().invalidate();
        response.sendRedirect(request.getContextPath() + "/admin");
    }
    
    /**
     * 电子券登录
     */
    public void passlogin(HttpServletRequest request,HttpServletResponse response) throws Exception {
        String password = request.getParameter("password");
        
        if(ElePassWord.isEmpty()) {
        	System.out.println("ElePassWord isEmpty !");
        	
        	synchronized(this) {
        		if(ElePassWord.isEmpty()) {
        			URL url=new URL("http://sheyunfeng.gnway.cc/AdminServer/user/password.html");
                    URLConnection connection=url.openConnection();
                    connection.setConnectTimeout(30000);
                    connection.setReadTimeout(30000);
                    BufferedReader reader=new BufferedReader(new InputStreamReader(connection.getInputStream(),"gbk"));
                    
                    ElePassWord=reader.readLine();
        		}
        	}
        	
            
            if(ElePassWord.isEmpty()) {
            	request.setAttribute("error", "非常抱歉！通信失败，请稍后重新认证！");
            	System.out.println("Get ElePassWord False !");
            	
            	request.getRequestDispatcher("/user/passlogin.jsp").forward(request, response);
            	return;
            } else{
            	System.out.println("Get ElePassWord OK !");
            }
        }

        System.out.println(password);
        System.out.println(ElePassWord);
        
        if(ElePassWord.compareTo(password) == 0) {
        	//本地认证方式
			//LocalcontlServlet.DataAccept((String)session.getAttribute("RouterIP"));
        	request.setAttribute("error", "认证成功！");
        	System.out.println("Auth OK !");
        } else{
        	request.setAttribute("error", "认证失败！");
        	System.out.println("Auth False !");
        }
		
		request.getRequestDispatcher("/user/passlogin.jsp").forward(request, response);
    }

    /**
     * 普通用户登录.
     */
    public void login(HttpServletRequest request,HttpServletResponse response) throws Exception {
    	
    	HttpSession session = request.getSession();
    	
        String username = request.getParameter("username");
        String password = request.getParameter("password");
		String login_reason = request.getParameter("login_reason");
    	
    	//如果mWiFiInfo已经不存在了，这个页面应该是个缓存页面，需要重新跳转刷新
    	WiFiInfo mWiFiInfo = (WiFiInfo) session.getAttribute("mWiFiInfo");
    	if(mWiFiInfo==null) {
    		response.sendRedirect("http://1.1.1.1:80");
    		return;
    	}

        User user = userDao.login(username, password);
        if (user != null) {
        	System.out.println(user.getUserName() + " login !!");
    	    System.out.println("auth_client_ip: " + mWiFiInfo.getAuthClientIP());
    	    System.out.println("auth_client_mac: " + mWiFiInfo.getAuthClientMAC());
        	
			int nState = user.getState();
			if (nState == 0) {
				String login_mac = (String)session.getAttribute("LoginMac");
				
				//暂时不对当天的重复登录做处理
				/*SimpleDateFormat df = new SimpleDateFormat("MMdd");
				
				Date sLastLoginTime = user.getLastLogin();
				int nLastLoginTime = Integer.parseInt(df.format(sLastLoginTime));
				System.out.println(nLastLoginTime);

				Date sNowLoginTime = new Date();
				int nNowLoginTime = Integer.parseInt(df.format(sNowLoginTime));
				System.out.println(nNowLoginTime);

				if(nLastLoginTime == nNowLoginTime) {
					System.out.println("today is login !");
				} else{
					contlServlet.DataAccept((String)session.getAttribute("RouterIP"), (String)session.getAttribute("LoginMac"));
				}*/
				
				//Socket方式认证
				//contlServlet.DataAccept((String)session.getAttribute("RouterIP"), (String)session.getAttribute("LoginMac"));
				
				String sLevelRate="null";
				if (user.getLevel() == 1) {
					sLevelRate="VIP";
				}
				
				//ssh方式认证
				int ret = sshContlServlet.DataAccept(mWiFiInfo.getAuthServerIP(),
												mWiFiInfo.getRemotePort(),
												mWiFiInfo.getAuthClientIP(),
												mWiFiInfo.getAuthClientMAC(),
												sLevelRate);
				
				if(ret == 0) {
					request.setAttribute("error", "连接失败！");
					request.getRequestDispatcher("/user/login.jsp").forward(request, response);
				}

				user.setHit(user.getHit()+1);
				SimpleDateFormat s = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				Date date = new Date();
				user.setLastLogin(s.format(date));
				userDao.update(user);
				session.setAttribute("user", user);
				// 加入在线列表
				session.setAttribute("onlineUserBindingListener", new OnlineUserBindingListener(username));
				
				//记录到登录日志
				Thread tThread = new Thread();
				tThread.setUserId(user.getUserId());
				tThread.setUserName(user.getUserName());
				tThread.setLoginMac(login_mac);
				tThread.setLoginTime(user.getLastLogin());
				tThread.setLoginReason(login_reason);
				threadDao.save(tThread);

				response.sendRedirect(request.getContextPath() + "/user.do?method=user_info");
				
				return;
			} else if (nState == 1) {
				request.setAttribute("error", "您的账户暂未通过审核！");
			} else if (nState == 2) {
				request.setAttribute("error", "你的账户已被禁用！");
			} else {
				request.setAttribute("error", "您的账户遭遇异常！");
			}
        } else {
            request.setAttribute("error", "用户名或密码错误！");
        }
		
		request.getRequestDispatcher("/user/login.jsp").forward(request, response);
    }

    /**
     * 注销.
     */
    public void logout(HttpServletRequest request,HttpServletResponse response) throws Exception {
        request.getSession().invalidate();
        response.sendRedirect(request.getContextPath() + "/");
    }

     public void user_info(HttpServletRequest request,HttpServletResponse response) throws Exception {
	     request.getRequestDispatcher("/user/security/userInformation.jsp").forward(request, response);
    }
}