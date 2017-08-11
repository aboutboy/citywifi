
package anni.api;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;
import anni.utils.*;


public class WeixinAPI {
	
	UTools mUTools = new UTools();
	
	/*
	//微信AppID
	private String WeiXinAppID="wxca2b2e412f61a85c";
	private String WeiXinAppSecret="a052b99fc2da608c556018ca1c2f2b8d";
	*/
	
	//测试AppID
	private String WeiXinAppID="wxeaab9d9ac7860897";
	private String WeiXinAppSecret="410234f7201c66825119799b1ce92d57";
	
	
	public String GetGPSHelpPic() {
		
		String GPS_Warring_Pic = "https://mmbiz.qlogo.cn/mmbiz/cQWy6noHL5fxo1H8ublJF4XLsjKQgHmo9uHbjAX34TddVYB7f9nSL0E8qKibZvqfpcrITJM0tSjEbdKJkM77gfg/0?wx_fmt=jpeg";
		return GPS_Warring_Pic;
	}
	
	public String GetGPSHelpURL() {
		
		String GPS_Warring_Url = "http://mp.weixin.qq.com/s?__biz=MjM5NDMwOTY4OQ==&mid=205095654&idx=1&sn=d01d53193b37b39cb4c0f8bbadb842e2#rd";
		return GPS_Warring_Url;
	}
   
    public void ToDoAPI(HttpServletResponse response, String sRedirectURI, String sState) 
    		throws IOException {
    	
    	String WeiXinApiUrl="https://open.weixin.qq.com/connect/oauth2/authorize"
				+ "?appid=" + WeiXinAppID
				+ "&redirect_uri=" + java.net.URLEncoder.encode(sRedirectURI, "utf-8")
				+ "&response_type=code&scope=snsapi_base"
				+ "&state=" + sState
				+ "#wechat_redirect";
		
    	//mUTools.DebugOut("WeiXinApiUrl: " + WeiXinApiUrl);
		
		response.sendRedirect(WeiXinApiUrl);
		//request.getRequestDispatcher(WeiXinApiUrl).forward(request, response);
    }
    
    public String GetOpenID(String sCode)
    		throws IOException {
    	
    	String WeiXinApiUrl="https://api.weixin.qq.com/sns/oauth2/access_token"
    			+ "?appid=" + WeiXinAppID
    			+ "&secret=" + WeiXinAppSecret
    			+ "&code=" + sCode
    			+ "&grant_type=authorization_code";
    	
    	String WeiXinApiResult=mUTools.GetFromURL(WeiXinApiUrl);
    	//mUTools.DebugOut("WeiXinApiResult: " + WeiXinApiResult);
    	
    	// 以employee为例解析，map类似
        JSONObject jb = JSONObject.fromObject(WeiXinApiResult);
        String sWeiXinOpenID = jb.getString("openid");
        
        //mUTools.DebugOut("sCode: " + sCode);
        //mUTools.DebugOut("sWeiXinOpenID: " + sWeiXinOpenID);
        
        return sWeiXinOpenID;
    }
}
