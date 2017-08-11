
package anni.dao;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import anni.domain.WiFiInfo;


public class WiFiInfoDao {

	//将参数存入session
    public WiFiInfo GetInfo(HttpServletRequest request,HttpServletResponse response)
            throws ServletException, IOException {
    	
    	WiFiInfo mWiFiInfo = new WiFiInfo();
    	
    	System.out.println("New Client:");
    	
    	String auth_server_addr = request.getParameter("aserver");
	    if(auth_server_addr == null) {
			System.out.println("auth_server_addr is null !!");
			return null;
		}
	    mWiFiInfo.setAuthServerAddr(auth_server_addr);
	    System.out.println("auth_server_addr: " + auth_server_addr);

	    String remote_port = request.getParameter("rport");
	    if(remote_port == null) {
			System.out.println("remote_port is null !!");
			return null;
		}
	    mWiFiInfo.setRemotePort(Integer.parseInt(remote_port));
	    System.out.println("remote_port: " + remote_port);
	    
	    String auth_client_ip = request.getParameter("aip");
	    if(auth_client_ip == null) {
			System.out.println("auth_client_ip is null !!");
			return null;
		}
	    mWiFiInfo.setAuthClientIP(auth_client_ip);
	    System.out.println("auth_client_ip: " + auth_client_ip);
	    
	    String auth_client_mac = request.getParameter("amac");
	    if(auth_client_mac == null) {
			System.out.println("auth_client_mac is null !!");
			return null;
		}
	    auth_client_mac = auth_client_mac.toUpperCase();
	    mWiFiInfo.setAuthClientMAC(auth_client_mac);
	    System.out.println("auth_client_mac: " + auth_client_mac);
	    
	    String auth_place_id = request.getParameter("placeid");
	    if(auth_place_id == null) {
			System.out.println("auth_space_id is null !!");
			return null;
		}
	    mWiFiInfo.setAuthPlaceID(Integer.parseInt(auth_place_id));
	    System.out.println("auth_place_id: " + auth_place_id);

	    return mWiFiInfo;
    }
}
