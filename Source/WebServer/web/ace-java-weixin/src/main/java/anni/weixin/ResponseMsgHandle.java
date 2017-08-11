
package anni.weixin;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

import javax.servlet.ServletInputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.dom4j.Document;
import org.dom4j.DocumentHelper;
import org.dom4j.Element;

import anni.domain.*;
import anni.utils.*;
import anni.weixin.ResponseMsg;

@SuppressWarnings("serial")
public class ResponseMsgHandle extends HttpServlet {
	
	private ResponseMsg mResponseMsg = new ResponseMsg();

	//private WiFiPasswordTools mWiFiPasswordTools = new WiFiPasswordTools();
	private SendMessager mSendMessager = new SendMessager();
	
	private UTools mUTools = new UTools();

    
    //从输入流读取post参数
  	public String readStreamParameter(ServletInputStream in) {
  		StringBuilder buffer = new StringBuilder();
  		BufferedReader reader=null;
  		try{
  			reader = new BufferedReader(new InputStreamReader(in, "utf-8"));
  			String line=null;
  			while((line = reader.readLine())!=null){
  				buffer.append(line);
  	        }
  		}catch(Exception e){
  			e.printStackTrace();
  		}finally{
  			if(null!=reader){
  				try {
  					reader.close();
  				} catch (IOException e) {
  					e.printStackTrace();
  				}
  			}
  		}
  		return buffer.toString();
  	}
  	
  	//自动回复内容
  	public void responseMsg(HttpServletRequest request, HttpServletResponse response)
  	        throws Exception {
  		
  		User mUser = null;
  		String postStr = this.readStreamParameter(request.getInputStream());
  		
  		mUTools.DebugOut(postStr);

  		if (null!=postStr&&!postStr.isEmpty()){
  			
  			Document document = DocumentHelper.parseText(postStr);
  			if(null==document){
  				mSendMessager.wxprint(response, "");
  				return;
  			}
  			Element root=document.getRootElement();
            String fromUsername = root.elementText("FromUserName");
            //String toUsername = root.elementText("ToUserName");
            String keyword = root.elementTextTrim("Content");
            String MsgType = root.elementTextTrim("MsgType");
            
            mUser = mResponseMsg.GetUser(request, response, fromUsername);

            //如果是推送事件消息
            if(MsgType.equalsIgnoreCase("event")) {
            	
            	//判断事件类型
            	String Event = root.elementTextTrim("Event");

            	//GPS推送消息
            	if(Event.equalsIgnoreCase("LOCATION")) {
            		
            		mResponseMsg.Put_Event_LOCATION(request, response, mUser, root);
            		return;
            	}

            	//subscribe(添加关注)
            	else if(Event.equalsIgnoreCase("subscribe")) {
            		
            		mResponseMsg.Put_Event_subscribe(request, response, mUser, root);
            		return;
            	}

            	//unsubscribe(取消关注)
            	else if(Event.equalsIgnoreCase("unsubscribe")) {
            		
            		mResponseMsg.Put_Event_unsubscribe(request, response, mUser, root);
            		return;
            	}

            	//点击菜单拉取消息时的事件推送
            	else if(Event.equalsIgnoreCase("CLICK")) {
            		
            		String EventKey = root.elementTextTrim("EventKey");

            		//所有WiFi
            		if(EventKey.equalsIgnoreCase("wifi_map")) {
            			mResponseMsg.Put_Event_CLICK_wifi_map(request, response, mUser, root);
            		}

            		//附近WiFi
            		else if(EventKey.equalsIgnoreCase("find_wifi")) {
            			mResponseMsg.Put_Event_CLICK_find_wifi(request, response, mUser, root);
            		}

            		//本地资讯
            		else if(EventKey.equalsIgnoreCase("wenzi_jianxun")) {
            			mResponseMsg.Put_Event_CLICK_wenzi_jianxun(request, response, mUser, root);
            		}

            		//我的位置
            		else if(EventKey.equalsIgnoreCase("my_position")) {	
            			mResponseMsg.Put_Event_CLICK_my_position(request, response, mUser, root);
            		}

            		//我的黄页
            		else if(EventKey.equalsIgnoreCase("city_huangye")) {
            			mResponseMsg.Put_Event_CLICK_city_huangye(request, response, mUser, root);
            		}

            		//我的天气
            		else if(EventKey.equalsIgnoreCase("today_tianqi")) {
            			mResponseMsg.Put_Event_CLICK_today_tianqi(request, response, mUser, root, null);
            		}

            		else {
            			//还未实现的功能
            			mResponseMsg.Put_Event_CLICK_codeing(request, response, mUser, root);
            		}
            	}
            }

            //如果什么也不是
            if(null!=keyword&&!keyword.equals(""))
            {
            	if(keyword.startsWith("us#")) {
            		//商家要更新广告信息
            		mResponseMsg.Put_Event_Keyword_UpdateSpreadContentCrontol(request, response, mUser, root);
            	}

            	else if(keyword.endsWith("天气")) {
            		//指定城市天气
            		mResponseMsg.Put_Event_CLICK_today_tianqi(request, response, mUser, root, keyword.substring(0, keyword.length()-2));
            	}
            	
            	else if(keyword.startsWith("天气")) {
            		//当地城市天气
            		mResponseMsg.Put_Event_CLICK_today_tianqi(request, response, mUser, root, null);
            	}
            	
            	else {
            		//我的黄页
            		mResponseMsg.Put_Event_Keyword_HuangYe(request, response, mUser, root);
            	}

            } else {
            	mSendMessager.wxprint(response, "Input something...");
            }
  		} else {
  			mSendMessager.wxprint(response, "");
  		}
  	}
}