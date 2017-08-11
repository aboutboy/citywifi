
package anni.web;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import anni.dao.*;
import anni.domain.*;
import anni.api.*;
import anni.utils.UTools;


public class MServlet extends HttpServlet {
	
    /**
	 * 
	 */
	private static final long serialVersionUID = 4299720059965601827L;
    
	private UserDao mUserDao = new UserDao();
    private GPSLogDao mGPSLogDao = new GPSLogDao();
    private VIPPlaceDao mVIPPlaceDao = new VIPPlaceDao();
    private OtherPlaceDao mOtherPlaceDao = new OtherPlaceDao();
    private WiFiInfoDao mWiFiInfoDao = new WiFiInfoDao();
	
	private UTools mUTools = new UTools();
	private WeixinAPI mWeixinAPI = new WeixinAPI();
	private JuHeAPI mJuHeAPI = new JuHeAPI();
	
	//单页最多显示广告数量
	private int mMaxPageViewCount = 5;

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
    	
    	mUTools.DebugOut("M Handle ServerName: " + mUTools.GetServerURL(request));
    	
    	/*if(!request.getServerName().equalsIgnoreCase("m.live186.com")) {
    		mUTools.DebugOut("Drop it !!!");
    		return;
    	}*/

        try {
        	String method = request.getParameter("method");

            if (method==null || method.isEmpty()) {
            	this.MIndex(request, response);
            	return;
            } else if ("chewei".equals(method)) {
            	this.CheWeiMap(request, response);
                return;
            } else if ("findmap".equals(method)) {
            	this.FindMap(request, response);
                return;
            } else if ("myvip".equals(method)) {
            	this.MyVIP(request, response);
                return;
            }
        } catch(Exception ex) {
            System.err.println(ex);
            ex.printStackTrace();
        }
    }
    
    //或获取到GPS信息帮助页面
    public void GPS_Warring(HttpServletRequest request, HttpServletResponse response) 
    		throws IOException {
    	
    	response.sendRedirect(mWeixinAPI.GetGPSHelpURL());
    }
    
    //查看会员信息
    public void MyVIP(HttpServletRequest request,HttpServletResponse response)
            throws Exception {

    	String sUserMac = request.getParameter("state");
    	String sCode = request.getParameter("code");
    	if(sUserMac==null || sCode==null) {
    		sUserMac="null";
        	WiFiInfo mWiFiInfo = mWiFiInfoDao.GetInfo(request, response);
    		if(mWiFiInfo!=null) {
    			sUserMac=mWiFiInfo.getAuthClientMAC();
    		}
    		
    		mWeixinAPI.ToDoAPI(response, "http://"+request.getServerName()+request.getContextPath() + "?method=myvip", sUserMac);
    		return;
    	}
    	//mUTools.DebugOut("sUserMac: " + sUserMac);
    	
    	String sWeiXinOpenID = mWeixinAPI.GetOpenID(sCode);
        User mUser = mUserDao.get("open_id", sWeiXinOpenID);
        if(mUser != null) {
        	//如果没有通过8路由登陆该页
        	if(sUserMac.isEmpty() || sUserMac.equalsIgnoreCase("null")) {
        		//如果mac为空，就是之前没有办理过会员
        		if(mUser.getUserMac().isEmpty() || mUser.getUserMac().equalsIgnoreCase("null")) {
        			mUTools.WarringWeb(request, response, "温馨提示", "您需要先连上【live186.com】的热点,才能办理VIP会员！");
        		}
        		//反之mac不为空，就是之前办理过
        		else {
        			mUTools.WarringWeb(request, response, "温馨提示", "您已经是186生活网的VIP会员！");
        		}
        	}
        	//如果是通过8路由登陆该页
        	else {
        		//如果mac为空，就是之前没有办理过会员
        		if(mUser.getUserMac().isEmpty() || mUser.getUserMac().equalsIgnoreCase("null")) {
        			mUser.setUserMac(sUserMac);
        			mUserDao.update(mUser);
        			mUTools.WarringWeb(request, response, "温馨提示", "<p>您已成功办理186生活网的VIP会员！</p><p>国内不限带宽免费WiFi服务将于明日起生效！</p>");
        		}
        		//反之mac不为空，就是之前办理过
        		else {
        			if(!sUserMac.equalsIgnoreCase(mUser.getUserMac())) {
            			mUser.setUserMac(sUserMac);
            			mUserDao.update(mUser);
            			mUTools.WarringWeb(request, response, "温馨提示", "<p>您已重新绑定186生活网的VIP会员！</p><p>国内不限带宽免费WiFi服务将于明日起生效！</p>");
            		} else {
            			mUTools.WarringWeb(request, response, "温馨提示", "您已经是186生活网的VIP会员！");
            		}
        		}
        	}
        }
    }
    
    //查找车位地图,已知UserID或者未知
    public void CheWeiMap(HttpServletRequest request,HttpServletResponse response)
            throws Exception {
    	
    	int nUserID = 0;
    	
    	String sCode = request.getParameter("code");
    	String sUserID = request.getParameter("userid");
    	
    	if(sUserID!=null) {
    		nUserID = Integer.parseInt(sUserID);
    	} else {
    		if(sCode==null) {
    			String tRequestURL = mUTools.GetServerURL(request) + "/i?method=chewei";
    			//mUTools.DebugOut("CheWeiMap ToDoWeiXinAPI: " + tRequestURL);
    			mWeixinAPI.ToDoAPI(response, tRequestURL, "null");
    	        
    			return;
    		}
    		
    		String sWeiXinOpenID = mWeixinAPI.GetOpenID(sCode);
	        User mUser = mUserDao.get("open_id", sWeiXinOpenID);
	        if(mUser != null) {
	        	nUserID = mUser.getUserID();
	        	//mUTools.DebugOut("CheWeiMap get UserID from code: " + nUserID);
	        }
    	}
    	
    	//HttpSession session = request.getSession();
    	
    	GPSLog tGPSLog = null;
    	tGPSLog = mGPSLogDao.getLastLog(nUserID);
		  
    	if(tGPSLog == null) {
    		GPS_Warring(request, response);
    		return;
    	}
    	
    	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    	SimpleDateFormat df = new SimpleDateFormat("MMddHH");
		  
    	Date dLastLoginTime = sdf.parse(tGPSLog.getGPSUpdateTime());
    	//mUTools.DebugOut("dLastLoginTime: " + dLastLoginTime);

    	int nLastLoginTime = Integer.parseInt(df.format(dLastLoginTime));
    	int nNowLoginTime = Integer.parseInt(df.format(new Date()));
		  
    	//只取最近2分钟内的GPS数据
    	if(nNowLoginTime-nLastLoginTime>=120) {
    		GPS_Warring(request, response);
    		return;
    	}
    	
    	List<JuHeCheWei> ListJuHeCheWei = new ArrayList<JuHeCheWei>();
    	
    	int nRet = mJuHeAPI.GetCheWei(tGPSLog.getGPSLongitude(), tGPSLog.getGPSLatitude(), 1000, 50, ListJuHeCheWei);
    	
    	if(nRet <= 0) {
    		return;
    	}
    	
    	HttpSession session = request.getSession();
    	
    	//用户所在位置
    	session.setAttribute("GPSLongitude", tGPSLog.getGPSLongitude());
    	session.setAttribute("GPSLatitude", tGPSLog.getGPSLatitude());

    	//显示车位图标
    	request.setAttribute("ListJuHeCheWei", ListJuHeCheWei);
    	
    	request.getRequestDispatcher("/user/chewei_map.jsp").forward(request, response);
    }
    
    //已知中心坐标
    public void FindMap(HttpServletRequest request,HttpServletResponse response)
            throws Exception {
    	
    	//mUTools.DebugOut("FindMap Handle ");
    	
    	String sGPSLongitude = request.getParameter("lon");
    	String sGPSLatitude = request.getParameter("lat");
    	
    	if(sGPSLongitude.isEmpty() | sGPSLatitude.isEmpty()) {
    		String sTip = "<p>未知的地理位置</p>";
    		mUTools.WarringWeb(request, response, "错误提示", sTip);
    		return;
    	}
    		
    	ViewMap(request, response, sGPSLongitude, sGPSLatitude);
    	//request.getRequestDispatcher("/user/wifimap.jsp").forward(request, response);
    }
    
    //根据指定的GPS为中心显示地理位置
    public void ViewMap(HttpServletRequest request, HttpServletResponse response, String sGPSLongitude, String sGPSLatitude)
            throws Exception {
    	
    	HttpSession session = request.getSession();
    	
    	//用户所在位置
    	session.setAttribute("GPSLongitude", sGPSLongitude);
    	session.setAttribute("GPSLatitude", sGPSLatitude);

    	//显示VIP商家
    	List<VIPPlace> tVIPPlaceList = mVIPPlaceDao.AllWiFi();
    	request.setAttribute("tVIPPlaceList", tVIPPlaceList);
    	
    	//显示其他商家
    	List<OtherPlace> tOtherPlaceList = mOtherPlaceDao.AllWiFi();
    	request.setAttribute("tOtherPlaceList", tOtherPlaceList);

    	request.getRequestDispatcher("/user/wifimap.jsp").forward(request, response);
    }
    
    //首页
    public void MIndex(HttpServletRequest request,HttpServletResponse response)
            throws Exception {
    	
    	//HttpSession session = request.getSession();
    	String sPageNum = (String)request.getParameter("pagenum");
    	
    	/*
    	//获取登录这个jsp页面的ip地址
    	String sClientIP = (String)request.getRemoteAddr();
    	
    	String sBaiduIPGPS=mUTools.GetFromBaiduAPI("http://api.map.baidu.com/location/ip?ip="
			  	+ sClientIP);
    	
    	mUTools.DebugOut("sBaiduIPGPS="+sBaiduIPGPS);
    	
    	if(sBaiduIPGPS.isEmpty()) {
    		return;
        }

    	// 以employee为例解析，map类似
    	JSONObject jb = JSONObject.fromObject(sBaiduIPGPS);
    	String content = jb.getString("content");
    	jb = JSONObject.fromObject(content);
    	String address_detail = jb.getString("address_detail");
    	jb = JSONObject.fromObject(address_detail);
    	int nCityCode = jb.getInt("city_code");
    	mUTools.DebugOut("nCityCode="+nCityCode);
    	*/
    	int nPageNum = 1;
    	int nStartNum = 0;
		
		if(sPageNum==null || "1".equals(sPageNum)) {
			request.setAttribute("pagenum", "1");
		} else {
			request.setAttribute("pagenum", sPageNum);
			nPageNum = Integer.parseInt(sPageNum);
			
			nStartNum = (nPageNum-1)*mMaxPageViewCount;
		}

		List<VIPPlace> tOtherVIPPlaceList = mVIPPlaceDao.FindWiFi(315,
										null,
										0,
										nStartNum,
										mMaxPageViewCount+1);
			
			if(tOtherVIPPlaceList.size() - mMaxPageViewCount >= 1) {
				request.setAttribute("bsurplus", "1");
				tOtherVIPPlaceList.remove(tOtherVIPPlaceList.size()-1);
			} else {
				request.setAttribute("bsurplus", "0");
			}
			
			request.setAttribute("tOtherVIPPlaceList", tOtherVIPPlaceList);
		  
		request.getRequestDispatcher("/user/index.jsp").forward(request, response);
    }
}