
package anni.utils;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
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

	public String GetServerURL(HttpServletRequest request) {
		return "http://" + request.getServerName() + /*":" + request.getServerPort() +*/ request.getContextPath();
	}

	//提示页面
    public void WarringWeb(HttpServletRequest request, HttpServletResponse response, String sTitle, String sContent)
    		throws ServletException, IOException {

    	request.setAttribute("mHeader", sTitle);
    	request.setAttribute("mContent", sContent);
    	request.getRequestDispatcher("/user/warring.jsp").forward(request, response);
    }
    
    public String GetFromURL(String sURL)
    		throws IOException {
    
    	URL url=new URL(sURL);

    	URLConnection connection=url.openConnection();
    	connection.setConnectTimeout(30000);
    	connection.setReadTimeout(30000);
    	BufferedReader reader=new BufferedReader(new InputStreamReader(connection.getInputStream(), "utf-8"));
      
    	String sBaiduResult="", br="";
    	while((br = reader.readLine()) != null) {
    		sBaiduResult += br;
    	}
    	
    	return sBaiduResult;
    }
}
