
package anni.web;

import java.io.IOException;
import java.util.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.security.MessageDigest;

import anni.utils.UTools;
import anni.weixin.ResponseMsgHandle;


public class WeiXinServlet extends HttpServlet {
	
    /**
	 * 
	 */
	private static final long serialVersionUID = 4299720059965601827L;

    //WeiXinHandler为内部类不能使用非final类型的对象
    final String TOKEN="842347115810715161612808264454";
    
    private ResponseMsgHandle mResponseMsgHandle = new ResponseMsgHandle();
    
    private UTools mUTools = new UTools();

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
    	
    	mUTools.DebugOut("WeiXin Handle ServerName: http://" + request.getServerName() + request.getContextPath());

        try {
            String echostr=request.getParameter("echostr");
            
            if(null==echostr||echostr.isEmpty()){
            	mResponseMsgHandle.responseMsg(request, response);
            } else {
                if(this.checkSignature(request, response)){
                	response.getWriter().println(echostr);
                } else {
                	response.getWriter().println("error");
                }
            }
        } catch(Exception ex) {
            System.err.println(ex);
            ex.printStackTrace();
        }
    }

    //微信接口验证
    public boolean checkSignature(HttpServletRequest request,HttpServletResponse response)
            throws ServletException, IOException {

         String signature = request.getParameter("signature");
         String timestamp = request.getParameter("timestamp");
         String nonce = request.getParameter("nonce");
         String token=TOKEN;
         String[] tmpArr={token,timestamp,nonce};
         Arrays.sort(tmpArr);
         String tmpStr=this.ArrayToString(tmpArr);
         tmpStr=this.SHA1Encode(tmpStr);
         if(tmpStr.equalsIgnoreCase(signature)){
             return true;
         }else{
             return false;
         }
     }
     
     //数组转字符串
     public String ArrayToString(String [] arr){  
         StringBuffer bf = new StringBuffer();  
         for(int i = 0; i < arr.length; i++){  
          bf.append(arr[i]);  
         }  
         return bf.toString();  
     }
     
     //sha1加密
     public String SHA1Encode(String sourceString) {  
         String resultString = null;  
         try {  
            resultString = new String(sourceString);  
            MessageDigest md = MessageDigest.getInstance("SHA-1");  
            resultString = byte2hexString(md.digest(resultString.getBytes()));  
         } catch (Exception ex) {  
         }  
         return resultString;  
     }
     
     public final String byte2hexString(byte[] bytes) {  
         StringBuffer buf = new StringBuffer(bytes.length * 2);  
         for (int i = 0; i < bytes.length; i++) {  
             if (((int) bytes[i] & 0xff) < 0x10) {  
                 buf.append("0");  
             }  
             buf.append(Long.toString((int) bytes[i] & 0xff, 16));  
         }  
         return buf.toString().toUpperCase();  
     }
}