
package anni.contl;

import java.io.InputStreamReader;
import java.io.BufferedReader;

public class SSHContlServlet {
	
    // 允许转发
    public int DataAccept(String AuthServer, int RemotePort, String AuthIP, String AuthMAC, String sRate) throws Exception {
        try {
			String cmd = new String();
			
			//ssh 192.168.1.254 ssh 127.0.0.1 -p 65401 /live186/bin/guard.sh accept 192.168.1.232 11:22:33:44:55:66 2
			//cmd = "ssh " + AuthServer + " ssh 127.0.0.1 -p " + RemotePort + " /live186/bin/guard.sh accept " + AuthIP + " " + AuthMAC + " " + sRate;
			
			//ssh 127.0.0.1 -p 65401 /live186/bin/guard.sh accept 192.168.1.232 11:22:33:44:55:66 2
			cmd = "ssh 127.0.0.1 -p " + RemotePort + " /live186/bin/guard.sh accept " + AuthIP + " " + AuthMAC + " " + sRate;
								
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
			
			if(result.equals("ACCEPT OK\n")) {
				return 1;
			} else {
				System.out.println("ACCEPT FALSE");
				return 0;
			}
		}
		catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
    }
}