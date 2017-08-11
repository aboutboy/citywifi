
package anni.contl;

import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.BufferedReader;
import java.io.OutputStream;
import java.net.Socket;

public class ContlServlet {
	
    // 允许上网
    public int DataAccept(String LoginIP, String LoginMac) throws Exception {
    	Socket con;//客户端连接socket
    	OutputStream out;
    	InputStream in;
    	byte b1[];
    	byte b2[];
    	int len;
    	int nScanCount;
    	String rev;
    	
    	try
    	{
    		StringBuffer cmd = new StringBuffer();
    		
    		cmd.append("KONY@@ACCEPT@@");
			cmd.append(LoginIP);
			cmd.append("@@");
			cmd.append(LoginMac);
			cmd.append("@@3@@2");
			
			
    		con=new Socket("172.16.0.2",8082);
    		con.setSoTimeout(10000);
    		b1=new byte[1024];
    		out=con.getOutputStream();
    		in=con.getInputStream();
    		b1=cmd.toString().getBytes();
    		out.write(b1);
    		out.flush();
    		
    		b2=new byte[12];
    		nScanCount = 3;
    		while(nScanCount-- > 0)
    		{
    			rev="";
    			if((len=in.read(b2))!=-1)
    			{
    				rev=new String(b2,0,len);
    				if("recv ok".equals(rev)) {
    					return 1;
    				}
    			}
    			Thread.sleep(1000);
    		}
    		
    		in.close();
    		out.close();
    		con.close();
    	}
    	catch(IOException ie)
    	{
    		ie.toString();
    	}
    	
    	return 0;
    }

    // 关闭转发
    public int DataDeny(String LoginIP, String LoginMac) throws Exception {
        try {
			//String[] cmd = new String[]{"/bin/sh", "-c", "whoami"};
			StringBuffer cmd = new StringBuffer();
			cmd.append("ssh ");
			cmd.append(LoginIP);
			
			cmd.append(" iptables -t nat -D PREROUTING -i eth1 -m mac --mac-source ");
			cmd.append(LoginMac);
			cmd.append(" -j ACCEPT;");
			
			cmd.append(" iptables -t filter -D FORWARD -i eth1 -m mac --mac-source ");
			cmd.append(LoginMac);
			cmd.append(" -j ACCEPT; hostname; date");
								
			Process ps = Runtime.getRuntime().exec(cmd.toString());
			BufferedReader br = new BufferedReader(new InputStreamReader(ps.getInputStream()));
			StringBuffer sb = new StringBuffer();
			String line;
			while ((line = br.readLine()) != null) {
				sb.append(line).append("\n");
			}
			String result = sb.toString();
			System.out.println(cmd.toString());
			System.out.println(result);
			return 1;
		}
		catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
    }
}