
package anni.web;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import anni.dao.LoginLogDao;
import anni.dao.UserDao;
import anni.dao.VIPPlaceDao;
import anni.dao.WiFiInfoDao;
import anni.domain.LoginLog;
import anni.domain.User;
import anni.domain.VIPPlace;
import anni.domain.WiFiInfo;
import anni.utils.UTools;
import anni.contl.SSHContlServlet;


public class AuthServlet extends HttpServlet {
	
    /**
	 * 
	 */
	private static final long serialVersionUID = 4299720059965601827L;
    
	private UserDao mUserDao = new UserDao();
    private LoginLogDao mLoginLogDao = new LoginLogDao();
	private VIPPlaceDao mVIPPlaceDao = new VIPPlaceDao();
	private WiFiInfoDao mWiFiInfoDao = new WiFiInfoDao();
	
	private UTools mUTools = new UTools();
	private SSHContlServlet mSSHContlServlet = new SSHContlServlet();
	
	//单页最多显示广告数量
	private int mMaxPageViewCount = 7;
	//历史认证商家最大广告次数
	private int mMaxLoginPlaceSpreadNum = 3;
	//最多出现的历史认证商家广告数量
	private int mMaxLoginPlaceViewCount = mMaxPageViewCount-1;
	//除历史认证商家外，显示附近多少公里的其他商家广告
	//private int mMaxOtherPlaceViewDistance = 500000;

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
    	
    	mUTools.DebugOut("AUTH Handle ServerName: http://" + request.getServerName() + request.getContextPath());
    	
    	String ServerName = request.getServerName();
    	System.out.println("ServerName：" + ServerName);

        try {
        	String method = request.getParameter("method");
        	
            if ("login".equals(method)) {
            	this.Login(request, response);
            	return;
            } else {
            	this.AuthIndex(request, response);
            	return;
            }
        } catch(Exception ex) {
            System.err.println(ex);
            ex.printStackTrace();
        }
    }

    //上网认证
    public void Login(HttpServletRequest request,HttpServletResponse response)
            throws Exception {
    	
    	HttpSession session = request.getSession();
    	
    	//如果mWiFiInfo已经不存在了，这个页面应该是个缓存页面，需要重新跳转刷新
    	WiFiInfo mWiFiInfo = (WiFiInfo) session.getAttribute("mWiFiInfo");
    	if(mWiFiInfo==null) {
    		response.sendRedirect("http://1.1.1.1:80");
    	}
    	
    	String sLevelRate="NULL";
    	User mUser = mUserDao.get("user_mac", mWiFiInfo.getAuthClientMAC());
        if(mUser != null) {
        	sLevelRate="VIP";
        }
        request.setAttribute("sLevelRate", sLevelRate);
    	
    	//ssh方式认证
    	int ret=1;
		try {
			ret = mSSHContlServlet.DataAccept(mWiFiInfo.getAuthServerAddr(),
								mWiFiInfo.getRemotePort(),
								mWiFiInfo.getAuthClientIP(),
								mWiFiInfo.getAuthClientMAC(),
								sLevelRate);
			
			LoginLog tLoginLog = new LoginLog();
			tLoginLog.setUserMac(mWiFiInfo.getAuthClientMAC());
			tLoginLog.setPlaceID(mWiFiInfo.getAuthPlaceID());
			tLoginLog.setLoginTime(mUTools.GetNowTime());
			tLoginLog.setLastSpreadTime(tLoginLog.getLoginTime());
			tLoginLog.setAuthServerAddr(mWiFiInfo.getAuthServerAddr());
			tLoginLog.setAuthServerRemotePort(mWiFiInfo.getRemotePort());
			tLoginLog.setUserIP(mWiFiInfo.getAuthClientIP());
			mLoginLogDao.add(tLoginLog);
		} catch (Exception e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}
		
		if(ret==1) {
			request.getRequestDispatcher("/user/security/loginSuccess.jsp").forward(request, response);
		}
    }
    
    //首页
    @SuppressWarnings("unchecked")
	public void AuthIndex(HttpServletRequest request,HttpServletResponse response)
            throws Exception {
    	
    	HttpSession session = request.getSession();
    	
    	int nPageNum = 1;
    	int nSurplusViewCount = mMaxPageViewCount;
    	
    	//如果从URL中能获取到参数，就跳转一下，别让用户看到原始URL
    	WiFiInfo mWiFiInfo = mWiFiInfoDao.GetInfo(request, response);
		if(mWiFiInfo==null) {
			//如果是跳转后的页面，URL中已经不带参数，参数已经放到session里
			mWiFiInfo = (WiFiInfo) session.getAttribute("mWiFiInfo");
			if(mWiFiInfo==null) {
				response.sendRedirect("http://1.1.1.1:80");
    		}
		} else {
			//获取到参数了，就跳转一下，别让用户看到原始URL
			session.setAttribute("mWiFiInfo", mWiFiInfo);
			response.sendRedirect(request.getContextPath() + "/auth");
			return;
		}
		
		List<VIPPlace>  tLoginVIPPlaceList = (List<VIPPlace>)session.getAttribute("tLoginVIPPlaceList");
		VIPPlace tLocalVIPPlace = mVIPPlaceDao.FindWiFi("place_id", String.valueOf(mWiFiInfo.getAuthPlaceID()));

		String sPageNum = (String)request.getParameter("pagenum");
		if(sPageNum==null || "1".equals(sPageNum)) {
			request.setAttribute("pagenum", "1");
			
			if(tLoginVIPPlaceList == null) {
				tLoginVIPPlaceList = new ArrayList<VIPPlace>();
				
				tLoginVIPPlaceList.add(tLocalVIPPlace);
				  
				List<LoginLog> LoginLogList = mLoginLogDao.getSpreadLog(mWiFiInfo.getAuthPlaceID(), tLocalVIPPlace.getPlaceType(), mWiFiInfo.getAuthClientMAC(), mMaxLoginPlaceSpreadNum, mMaxLoginPlaceViewCount);
				Iterator<LoginLog> it=LoginLogList.iterator();
				while(it.hasNext()) {
					LoginLog tLoginLog = (LoginLog)it.next();
					VIPPlace tLoginVIPPlace = mVIPPlaceDao.FindWiFi("place_id", String.valueOf(tLoginLog.getPlaceID()));
		          	  
					tLoginLog.setLastSpreadTime(mUTools.GetNowTime());
					tLoginLog.setSpreadCount(tLoginLog.getSpreadCount()+1);
					mLoginLogDao.update(tLoginLog);

					tLoginVIPPlaceList.add(tLoginVIPPlace);
				}
				session.setAttribute("tLoginVIPPlaceList", tLoginVIPPlaceList);
				nSurplusViewCount = mMaxPageViewCount - tLoginVIPPlaceList.size();
			}
		} else {
			request.setAttribute("pagenum", sPageNum);
			nPageNum = Integer.parseInt(sPageNum);
			
			if(tLoginVIPPlaceList == null) {
				response.sendRedirect(request.getContextPath() + "/auth?pagenum=1");
				return;
			}
		}

		if(nSurplusViewCount > 0) {
			int nStartNum = 0;
			if(nPageNum > 1) {
				nStartNum = ((nPageNum-1)*mMaxPageViewCount)-tLoginVIPPlaceList.size();
			}
					
			List<VIPPlace> tOtherVIPPlaceList = mVIPPlaceDao.FindWiFi(tLocalVIPPlace.getCityCode(),
											tLoginVIPPlaceList,
											tLocalVIPPlace.getPlaceType(),
											nStartNum,
											nSurplusViewCount+1);
			
			if(tOtherVIPPlaceList.size() - nSurplusViewCount >= 1) {
				request.setAttribute("bsurplus", "1");
				tOtherVIPPlaceList.remove(tOtherVIPPlaceList.size()-1);
			} else {
				request.setAttribute("bsurplus", "0");
			}
			
			request.setAttribute("tOtherVIPPlaceList", tOtherVIPPlaceList);
		}
		  
		request.setAttribute("urlservlet", "auth");
		request.getRequestDispatcher("/user/index.jsp").forward(request, response);
    }
}