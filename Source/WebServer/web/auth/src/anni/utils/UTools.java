
package anni.utils;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class UTools {

	public String GetNowTime() {
  		SimpleDateFormat s = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
  		return s.format(new Date());
  	}
	
	public String GetSecondTime() {
		String time = (new Date().getTime()) /1000 + "";
  		return time;
  	}
	
	//Debug输出
	public void DebugOut(String content) {
		System.out.println(GetNowTime() +": " + content);
	}
	
	//报错页面
    public void WebPrintError(HttpServletRequest request, HttpServletResponse response, String sHeader, String sContent) {
    	try {
    		request.setAttribute("mHeader", sHeader);
    		request.setAttribute("mContent", sContent);
			response.getWriter().println("错误：");
			response.getWriter().println("	当前为缓存页面，无法认证，请重新打开浏览器点任意网站进入！");
		} catch (IOException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}
    }
}
