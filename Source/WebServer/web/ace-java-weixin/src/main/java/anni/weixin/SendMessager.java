
package anni.weixin;

import java.io.IOException;
import anni.utils.UTools;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletResponse;

public class SendMessager {
	
	private UTools mUTools = new UTools();
	
	//向请求端发送返回数据
  	public void wxprint(HttpServletResponse response, String content)
  	        throws ServletException, IOException {
  		try{
  			response.getWriter().print(content);
  			response.getWriter().flush();
  			response.getWriter().close();
  			mUTools.DebugOut(content);
  		}catch(Exception e){
  			// TODO 自动生成的 catch 块
			e.printStackTrace();
  		}
  	}
  	
  	//发送普通文字信息
  	public void SendTextMessage(HttpServletResponse response,
  							String fromUsername, String toUsername,
  							String TestMessage)
  	        throws ServletException, IOException {
  		
  		String textTpl = "<xml>"+
					"<ToUserName><![CDATA[%1$s]]></ToUserName>"+
					"<FromUserName><![CDATA[%2$s]]></FromUserName>"+
					"<CreateTime>%3$s</CreateTime>"+
					"<MsgType><![CDATA[text]]></MsgType>"+
					"<Content><![CDATA[%4$s]]></Content>"+
					//"<FuncFlag>0</FuncFlag>"+
					"</xml>";
  		
    	String time = mUTools.GetSecondTime();
    	
      	String resultStr = String.format(textTpl,
      								fromUsername, toUsername,
      								time,
      								TestMessage);
      	
      	wxprint(response, resultStr);
  	}
  	
  	//发送单个图文信息
  	public void SendNewsMessage(HttpServletResponse response,
  						String fromUsername, String toUsername,
  						String Title1, String Description,
  						String PicUrl, String Url)
  	        throws ServletException, IOException {
  		
  		String textTpl = "<xml>"+
					"<ToUserName><![CDATA[%1$s]]></ToUserName>" +
					"<FromUserName><![CDATA[%2$s]]></FromUserName>" +
					"<CreateTime>%3$s</CreateTime>" +
					"<MsgType><![CDATA[news]]></MsgType>" +
					"<ArticleCount>1</ArticleCount>" +
  					"<Articles>" +
  						"<item>" +
  							"<Title><![CDATA[%4$s]]></Title>" +
  							"<Description><![CDATA[%5$s]]></Description>" +
  							"<PicUrl><![CDATA[%6$s]]></PicUrl>" +
  							"<Url><![CDATA[%7$s]]></Url>" +
  						"</item>" +
  					"</Articles>" +
  					"</xml>";

    	String time = mUTools.GetSecondTime();
    	
      	String resultStr = String.format(textTpl,
      									fromUsername, toUsername, 
      									time,
      									Title1, Description,
      									PicUrl, Url);
      	
      	wxprint(response, resultStr);
  	}
}
