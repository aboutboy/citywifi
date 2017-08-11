
package anni.contl;

import java.io.InputStreamReader;
import java.io.BufferedReader;

public class SSHContlServlet {
	
    // 允许转发
    public int DataAccept(String sAuthServer, int sRemotePort, String sAuthIP, String sAuthMac, String sLevel) throws Exception {
        try {
			String cmd = new String();
			
			cmd = "ssh 127.0.0.1 -p " + sRemotePort + " /live186/bin/guard.sh accept " + sAuthIP + " " + sAuthMac + " " + sLevel;
								
			Process ps = Runtime.getRuntime().exec(cmd);
			BufferedReader br = new BufferedReader(new InputStreamReader(ps.getInputStream()));
			StringBuffer sb = new StringBuffer();
			String line;
			while ((line = br.readLine()) != null) {
				sb.append(line).append("\n");
			}
			String result = sb.toString();
			System.out.println(cmd);
			System.out.println(result);
		}
		catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
        
        return 1;
    }
}