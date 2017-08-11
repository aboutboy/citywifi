
package anni.weixin;

//import java.io.BufferedReader;
//import java.io.IOException;
//import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

//import javax.servlet.ServletInputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//import org.dom4j.Document;
//import org.dom4j.DocumentHelper;
import org.dom4j.Element;

import anni.dao.*;
import anni.domain.*;
import anni.utils.*;
import anni.api.*;


@SuppressWarnings("serial")
public class ResponseMsg extends HttpServlet {
	
	private UserDao mUserDao = new UserDao();
	private GPSLogDao mGPSLogDao = new GPSLogDao();
	private VIPPlaceDao mVIPPlaceDao = new VIPPlaceDao();
	//private LoginLogDao mLoginLogDao = new LoginLogDao();
	private OtherPlaceDao mOtherPlaceDao = new OtherPlaceDao();

	//private WiFiPasswordTools mWiFiPasswordTools = new WiFiPasswordTools();
	private SendMessager mSendMessager = new SendMessager();
	
	private UTools mUTools = new UTools();
	private WeixinAPI mWeixinAPI = new WeixinAPI();
	private BaiduAPI mBaiduAPI = new BaiduAPI();
	
	//WiFi密码超时时间
	//private int mPasswordOutTime = 30;
	//显示附近WiFi热点的数量
	private int mWiFiViewCount = 4;
	//获取密码功能最大推广次数
	//private int mMaxSpreadNum = 3;
	//获取密码功能最多显示推广数量
	//private int mViewCount = 3;
	
	//商家更新推广内容特征
	private String UpdateSpreadContentCrontolHeader = "us#";
	
	//本地资讯，显示附近多少米范围内的商家资讯
	private int mMaxBenDiZiXunPlaceViewDistance = 500000;
	//本地资讯，最多显示多少个商家资讯
	private int mMaxBenDiZiXunPlaceViewCount = 5;
	
	
	public void GPS_Warring(HttpServletResponse response, String sFromUser, String sToUser)
			throws Exception {
		
		String Title1,Description,PicUrl,Url;

		Title1 = "未获取到您的位置信息";
		Description = "请看上图：点击屏幕右上角的人形图标进入属性设置，然后打开【提供位置信息】。 \n\n点击图片查看详细说明";
		PicUrl = mWeixinAPI.GetGPSHelpPic();
		Url = mWeixinAPI.GetGPSHelpURL();

		mSendMessager.SendNewsMessage(response,
				sFromUser, sToUser,
				Title1, Description,
				PicUrl, Url);
	}
  	
  	public User GetUser(HttpServletRequest request, HttpServletResponse response, String fromUsername)
  			throws Exception {
  		
  		User mUser = null;
  		
  		//只要能收到消息，这个人不是正在关注，就是曾经关注过，如果之前有遗漏，就赶紧补进去
        mUser = mUserDao.get("open_id", fromUsername);
        if(mUser == null) {
        	//mUTools.DebugOut("New User Message, Will add ！！");

        	mUser = new User();
        	mUser.setOpenID(fromUsername);
        	mUser.setMyJifen(100);
        	mUser.setFollowType(1);
        	mUser.setUserUpdateTIme(mUTools.GetNowTime());
        	mUser.setFollowTime(mUser.getUserUpdateTIme());		
        	mUserDao.add(mUser);
				
        	mUser = mUserDao.get("open_id", fromUsername);
					
        	//mUTools.DebugOut("New User Message, Add OK ！！");
        } else{
        	//mUTools.DebugOut("Existing User Message, Will update time ！！");
        	mUser.setUserUpdateTIme(mUTools.GetNowTime());
        	mUser.addVisitNum();
        	mUserDao.update(mUser);
        	//mUTools.DebugOut("Existing User Message, Update time OK ！！");
        }
        
        return mUser;
  	}
  	
  	public void Put_Event_LOCATION(HttpServletRequest request, HttpServletResponse response, User mUser, Element root)
  			throws Exception {
  		
  		//mUTools.DebugOut("WEIXIN: UserID: " + mUser.getUserID() + " sLatitude: " + sLatitude + " sLongitude: " + sLongitude);

  		//获取GPS信息
		String sLatitude = root.elementText("Latitude");
		String sLongitude = root.elementText("Longitude");
		
		BaiduGeocoding mBaiduGeocoding = mBaiduAPI.GetBaiduGPS(1, sLatitude, sLongitude);
		if(mBaiduGeocoding == null) {
			String SendData = "转换您的坐标失败！";
			String toUsername = root.elementText("ToUserName");
			mSendMessager.SendTextMessage(response, mUser.getOpenID(), toUsername, SendData);
			return;
		}

		//生成日志
		GPSLog tGPSLog = new GPSLog();
		tGPSLog.setUserID(mUser.getUserID());
		tGPSLog.setGPSUpdateTime(mUser.getUserUpdateTIme());
		tGPSLog.setGPSLatitude(mBaiduGeocoding.getGPSLatitude());
		tGPSLog.setGPSLongitude(mBaiduGeocoding.getGPSLongitude());

		//mUTools.DebugOut("UserID: " + mUser.getUserID() + " BaiduGPS_X: " + mBaiduGeocoding.getGPSLatitude() + " BaiduGPS_Y: " + mBaiduGeocoding.getGPSLongitude());

		//记录到数据库
		mGPSLogDao.add(tGPSLog);

		//搜索附近WiFi
		/*int tVIPPlaceCount = mVIPPlaceDao.getCount(tGPSLog.getGPSLongitude(), tGPSLog.getGPSLatitude(), mUser.getFindWiFiDistance());
		  int tOtherPlaceCount = mOtherPlaceDao.getCount(tGPSLog.getGPSLongitude(), tGPSLog.getGPSLatitude(), mUser.getFindWiFiDistance());
		  int tAllPlaceCount = tVIPPlaceCount + tOtherPlaceCount;
		  if(tAllPlaceCount > 0) {
			  SendData = "获取您的GPS位置成功！\n在您附近搜到" + tAllPlaceCount + "个免费WiFi！\n详情点击【查找WiFi】\n";
			  mSendMessager.SendTestMessage(response, fromUsername, toUsername, SendData);
		  }*/
  	}
  	
  	public void Put_Event_subscribe(HttpServletRequest request, HttpServletResponse response, User mUser, Element root)
  			throws Exception {
  		
  		String SendData;
  		String toUsername = root.elementText("ToUserName");
  		
  		if(mUser != null) {
			mUser.setFollowType(1);
			mUserDao.update(mUser);
		}

  		SendData = "欢迎关注186生活网!\n这里提供位置查询、黄页查询等功能。还能享受免费WiFi哟！";
  		mSendMessager.SendTextMessage(response, mUser.getOpenID(), toUsername, SendData);
  	}
  	
  	public void Put_Event_unsubscribe(HttpServletRequest request, HttpServletResponse response, User mUser, Element root)
  			throws Exception {
  		
  		//取消关注，则需要将setFollowType写成FALSE，用户信息仍然保留
		if(mUser != null) {
			mUser.setFollowType(0);
			mUser.setUserMac("null");
			mUserDao.update(mUser);
		}
  	}

  	public void Put_Event_CLICK_wifi_map(HttpServletRequest request, HttpServletResponse response, User mUser, Element root)
  			throws Exception {
  		
  		String toUsername = root.elementText("ToUserName");
  		String Title1,Description,PicUrl,Url;

		int tVIPPlaceCount = mVIPPlaceDao.getCount();
		int tOtherPlaceCount = mOtherPlaceDao.getCount();
		int tAllPlaceCount = tVIPPlaceCount + tOtherPlaceCount + 90;

		Title1="点击图片查看WiFi覆盖地图";
		Description="截止目前，186生活网合作搜集的WiFi热点已经达到" + tAllPlaceCount + "个！";
		PicUrl="http://m.live186.com/user/imges/message/wifi.png";
		Url="http://m.live186.com?method=wifimap&userid=" + mUser.getUserID();

		mSendMessager.SendNewsMessage(response,
				mUser.getOpenID(), toUsername,
				Title1, Description,
				PicUrl, Url);
  	}
  	
  	public void Put_Event_CLICK_find_wifi(HttpServletRequest request, HttpServletResponse response, User mUser, Element root)
  			throws Exception {
  		
  		String SendData;
  		String toUsername = root.elementText("ToUserName");
  		GPSLog tGPSLog = mGPSLogDao.getLastLog(mUser.getUserID());

		if(tGPSLog == null) {
			GPS_Warring(response, mUser.getOpenID(), toUsername);
			return;
		}

		//如果没有搜到WiFi
		int tVIPPlaceCount = mVIPPlaceDao.getCount(tGPSLog.getGPSLongitude(), tGPSLog.getGPSLatitude(), mUser.getFindWiFiDistance());
		int tOtherPlaceCount = mOtherPlaceDao.getCount(tGPSLog.getGPSLongitude(), tGPSLog.getGPSLatitude(), mUser.getFindWiFiDistance());
		int tAllPlaceCount = tVIPPlaceCount + tOtherPlaceCount;
		if(tAllPlaceCount == 0) {
			SendData = "未搜到免费WiFi！别着急，我们正在努力寻找哦！";
			mSendMessager.SendTextMessage(response, mUser.getOpenID(), toUsername, SendData);
			return;
		}

		SendData = "搜到" + tAllPlaceCount + "个免费WiFi：\n";

		List<VIPPlace> VIPPlaceList = null;
		List<OtherPlace> OtherPlaceList = null;

		//查找附近VIP商家
		if(tVIPPlaceCount > 0) {
			VIPPlaceList = mVIPPlaceDao.FindWiFi(tGPSLog.getGPSLongitude(), tGPSLog.getGPSLatitude(), mUser.getFindWiFiDistance(), null, 0, mWiFiViewCount);

			Iterator<VIPPlace> it=VIPPlaceList.iterator();
			while(it.hasNext()) {
				VIPPlace tVIPPlace = (VIPPlace)it.next();
				SendData += "\n";
				SendData += tVIPPlace.getPlaceName() + "\n";
				SendData += tVIPPlace.getSpreadContent() + "\n";
				SendData += "TEL: " + tVIPPlace.getPlacePhone() + "\n";
				SendData += tVIPPlace.getPlaceAddr() + "\n";
			}
		}

		if(tVIPPlaceCount < mWiFiViewCount) {
			//查找附近其他商家
			OtherPlaceList = mOtherPlaceDao.FindWiFi(tGPSLog.getGPSLongitude(), tGPSLog.getGPSLatitude(), mUser.getFindWiFiDistance(), mWiFiViewCount-tVIPPlaceCount);

			Iterator<OtherPlace> it=OtherPlaceList.iterator();
			while(it.hasNext()) {
				OtherPlace tOtherPlace = (OtherPlace)it.next();
				SendData += "\n";
				SendData += tOtherPlace.getPlaceName() + "\n";
				SendData += "WiFi密码: " + tOtherPlace.getWiFiPassword() + "\n";
				SendData += tOtherPlace.getPlaceAddr() + "\n";
			}
		}

		SendData += "\n更多请点击【WiFi地图】";
		mSendMessager.SendTextMessage(response, mUser.getOpenID(), toUsername, SendData);
  	}
  	
  	public void Put_Event_CLICK_wenzi_jianxun(HttpServletRequest request, HttpServletResponse response, User mUser, Element root)
  			throws Exception {
  		
  		String SendData;
  		String toUsername = root.elementText("ToUserName");
  		GPSLog tGPSLog = mGPSLogDao.getLastLog(mUser.getUserID());

		if(tGPSLog == null) {
			GPS_Warring(response, mUser.getOpenID(), toUsername);
			return;
		}

		List<VIPPlace> VIPPlaceList = null;

		//查找附近商家
		VIPPlaceList = mVIPPlaceDao.FindWiFi(tGPSLog.getGPSLongitude(), tGPSLog.getGPSLatitude(), mMaxBenDiZiXunPlaceViewDistance, null, 0, mMaxBenDiZiXunPlaceViewCount);

		//如果没有搜到WiFi
		if(VIPPlaceList.size() == 0) {
			SendData = "暂无您所在区域的新闻资讯！";
			mSendMessager.SendTextMessage(response, mUser.getOpenID(), toUsername, SendData);
			return;
		}

		SendData = "搜到您所在区域的" + VIPPlaceList.size() + "条资讯\n";

		//遍历输出热点信息,最多输出mWiFiViewCount条
		int SendWiFiCount = (VIPPlaceList.size() < mWiFiViewCount) ? VIPPlaceList.size():mWiFiViewCount;
		for(int i=0; i<SendWiFiCount; i++){
			VIPPlace tVIPPlace = VIPPlaceList.get(i);
			SendData += "\n";
			SendData += tVIPPlace.getPlaceName() + "\n";
			SendData += tVIPPlace.getSpreadContent() + "\n";
			SendData += "TEL: " + tVIPPlace.getPlacePhone() + "\n";
			SendData += tVIPPlace.getPlaceAddr() + "\n";
		}

		SendData += "\n更多请点击【网页资讯】";
		mSendMessager.SendTextMessage(response, mUser.getOpenID(), toUsername, SendData);
  	}
  	
  	public void Put_Event_CLICK_my_position(HttpServletRequest request, HttpServletResponse response, User mUser, Element root)
  			throws Exception {
  		
  		String SendData;
  		String toUsername = root.elementText("ToUserName");
  		GPSLog tGPSLog = mGPSLogDao.getLastLog(mUser.getUserID());
  		
		if(tGPSLog == null) {
			GPS_Warring(response, mUser.getOpenID(), toUsername);
			return;
		}

		BaiduGeocoding mBaiduGeocoding = mBaiduAPI.GetBaiduGeocoding(tGPSLog.getGPSLatitude(), tGPSLog.getGPSLongitude());
		if(mBaiduGeocoding == null) {
			SendData = "获取您的位置失败！";
			mSendMessager.SendTextMessage(response, mUser.getOpenID(), toUsername, SendData);
			return;
		}

		String Title1,Description,PicUrl,Url;

		Title1 = "我的位置";
		Description = "您在" + mBaiduGeocoding.getFormatted_Address() + "附近，点击查看地图位置";
		//PicUrl = mUTools.GetServerURL(request) + "/user/imges/message/baidu_map_logo_320-200.jpg";
		PicUrl = "http://api.map.baidu.com/staticimage?center="
				+ tGPSLog.getGPSLongitude() + "," + tGPSLog.getGPSLatitude()
				+ "&width=360&height=200&zoom=16";
		Url = mUTools.GetServerURL(request) + "/i?method=findmap&lon=" + tGPSLog.getGPSLongitude() + "&lat=" + tGPSLog.getGPSLatitude();

		mSendMessager.SendNewsMessage(response,
				mUser.getOpenID(), toUsername,
				Title1, Description,
				PicUrl, Url);
  	}
  	
  	public void Put_Event_CLICK_city_huangye(HttpServletRequest request, HttpServletResponse response, User mUser, Element root)
  			throws Exception {
  		
  		String SendData;
  		String toUsername = root.elementText("ToUserName");
  		
  		SendData = "直接输入您要查询的内容即可,比如: 儿童医院";
		mSendMessager.SendTextMessage(response, mUser.getOpenID(), toUsername, SendData);
  	}
  	
  	public void Put_Event_CLICK_today_tianqi(HttpServletRequest request, HttpServletResponse response, User mUser, Element root, String tCityName)
  			throws Exception {
  		
  		String SendData;
  		String toUsername = root.elementText("ToUserName");
  		
  		if(tCityName == null) {
  			tCityName = new String();
  		}
  		
  		if(tCityName.isEmpty()) {
  		
  			GPSLog tGPSLog = mGPSLogDao.getLastLog(mUser.getUserID());
  			if(tGPSLog == null) {
  				GPS_Warring(response, mUser.getOpenID(), toUsername);
  				return;
  			}

  			BaiduGeocoding mBaiduGeocoding = mBaiduAPI.GetBaiduGeocoding(tGPSLog.getGPSLatitude(), tGPSLog.getGPSLongitude());
  			if(mBaiduGeocoding == null) {
  				SendData = "获取您的位置失败！";
  				mSendMessager.SendTextMessage(response, mUser.getOpenID(), toUsername, SendData);
  				return;
  			}

  			tCityName = mBaiduGeocoding.getCityName();
  		}

  		//char temp = tCityName.charAt(sCityName.length()-1);
		if(tCityName.endsWith("市")) {
			tCityName = tCityName.substring(0, tCityName.length()-1);
		}
			
		BaiduTianQi tBaiduTianQi =  mBaiduAPI.GetBaiduTianQi(tCityName);
		
		if(tBaiduTianQi == null) {
			SendData = "请输入正确的城市名，比如比如：南京天气";
			mSendMessager.SendTextMessage(response, mUser.getOpenID(), toUsername, SendData);
		}

		SendData = tCityName + "天气：\n\n";
		SendData += "邮编: " + tBaiduTianQi.getPostCode() + "\n";
		//SendData += "海拔: " + tBaiduTianQi.getAltitude() + "\n";
		SendData += "天气情况: " + tBaiduTianQi.getWeather() + "\n";
		SendData += "最低气温: " + tBaiduTianQi.getLtmp() + "℃\n";
		SendData += "最高气温: " + tBaiduTianQi.getHtmp() + "℃\n";
		SendData += "风向: " + tBaiduTianQi.getWD() + "\n";
		SendData += "风力: " + tBaiduTianQi.getWS() + "\n";
		if(!tBaiduTianQi.getLevel().isEmpty()) {
			SendData += "空气质量指数: " + tBaiduTianQi.getAqi() + "\n";
			SendData += "空气等级: " + tBaiduTianQi.getLevel() + "\n";
			SendData += "首要污染物: " + tBaiduTianQi.getCore() + "\n";
		}
		SendData += "日出时间: " + tBaiduTianQi.getSunrise() + "\n";
		SendData += "日落时间: " + tBaiduTianQi.getSunset() + "\n\n";
		SendData += "您可以查询其他城市天气，比如：南京天气";

		mSendMessager.SendTextMessage(response, mUser.getOpenID(), toUsername, SendData);
  	}
  	
  	public void Put_Event_CLICK_codeing(HttpServletRequest request, HttpServletResponse response, User mUser, Element root)
  			throws Exception {
  		
  		String SendData;
  		String toUsername = root.elementText("ToUserName");
  	
  		SendData = "功能正在开发中!";
		mSendMessager.SendTextMessage(response, mUser.getOpenID(), toUsername, SendData);
  	}
  	
  	public void Put_Event_Keyword_UpdateSpreadContentCrontol(HttpServletRequest request, HttpServletResponse response, User mUser, Element root)
  			throws Exception {
  		
  		String SendData;
  		String toUsername = root.elementText("ToUserName");
  		String keyword = root.elementTextTrim("Content");
  		
  		String SpreadContent = keyword.substring(UpdateSpreadContentCrontolHeader.length(), keyword.length());
		if(SpreadContent.length() > 20) {
			SendData = "广告内容不能超过20个字！";
			mSendMessager.SendTextMessage(response, mUser.getOpenID(), toUsername, SendData);
			return;
		}

		VIPPlace tCrontolVIPPlace = mVIPPlaceDao.FindWiFi("admin_open_id", mUser.getOpenID());
		tCrontolVIPPlace.setSpreadContent(SpreadContent);
		mVIPPlaceDao.update(tCrontolVIPPlace);

		SendData = "您的广告内容已经修改为: " + SpreadContent;
		mSendMessager.SendTextMessage(response, mUser.getOpenID(), toUsername, SendData);
  	}
  	
  	public void Put_Event_Keyword_HuangYe(HttpServletRequest request, HttpServletResponse response, User mUser, Element root)
  			throws Exception {
  		
  		String SendData;
  		String toUsername = root.elementText("ToUserName");
  		String keyword = root.elementTextTrim("Content");
  		
  		GPSLog tGPSLog = mGPSLogDao.getLastLog(mUser.getUserID());
    	if(tGPSLog == null) {
    		GPS_Warring(response, mUser.getOpenID(), toUsername);
    		return;
    	}

    	BaiduGeocoding mBaiduGeocoding = mBaiduAPI.GetBaiduGeocoding(tGPSLog.getGPSLatitude(), tGPSLog.getGPSLongitude());
    	if(mBaiduGeocoding == null) {
    		SendData = "获取您的位置失败！";
    		mSendMessager.SendTextMessage(response, mUser.getOpenID(), toUsername, SendData);
    		return;
    	}

    	//List<BaiduGeocoding> mBaiduGeocodingList = mBaiduAPI.GetBaiduPalce(keyword, mBaiduGeocoding.getCityCode(), 7);
    	List<BaiduGeocoding> mBaiduGeocodingList = new ArrayList<BaiduGeocoding>();
    	int nTotal = mBaiduAPI.GetBaiduPalce(keyword, mBaiduGeocoding.getCityCode(), 7, mBaiduGeocodingList);

    	if(nTotal==-1) {
    		SendData = "查询异常，请重试!";
    		mSendMessager.SendTextMessage(response, mUser.getOpenID(), toUsername, SendData);

    		return;
    	}

    	if(mBaiduGeocodingList.size() == 0) {
    		SendData = "未查询到相关记录!";
    		mSendMessager.SendTextMessage(response, mUser.getOpenID(), toUsername, SendData);

    		return;
    	}

    	SendData = "共查询到" + nTotal + "条信息，为您筛选出" +mBaiduGeocodingList.size() + "条：\n\n";

    	Iterator<BaiduGeocoding> it=mBaiduGeocodingList.iterator();
    	while(it.hasNext()) {
    		BaiduGeocoding tBaiduGeocoding = (BaiduGeocoding)it.next();
    		SendData = SendData
    				+ tBaiduGeocoding.getPlaceName() + "\n"
    				+ "电话: " + tBaiduGeocoding.getTelephone() + "\n"
    				+ "地址: " + tBaiduGeocoding.getFormatted_Address() + "\n"
    				+ "\n";
    	}

    	mSendMessager.SendTextMessage(response, mUser.getOpenID(), toUsername, SendData);
  	}
}