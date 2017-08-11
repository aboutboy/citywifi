
package anni.domain;

public class WiFiInfo {
	private String m_AuthServerIP="0";
	private int m_RemotePort=0;
    private String m_AuthClientIP="0";
    private String m_AuthClientMAC="0";
    private int m_AuthPlaceID=0;
    
	
	public String getAuthServerIP() {
        return m_AuthServerIP;
    }
	public void setAuthServerIP(String m_AuthServerIP) {
		this.m_AuthServerIP = m_AuthServerIP;
    }
    
	public int getRemotePort() {
        return m_RemotePort;
    }
    public void setRemotePort(int m_RemotePort) {
        this.m_RemotePort = m_RemotePort;
    }
    
    public String getAuthClientIP() {
        return m_AuthClientIP;
    }
    public void setAuthClientIP(String m_AuthClientIP) {
        this.m_AuthClientIP = m_AuthClientIP;
    }
    
    public String getAuthClientMAC() {
        return m_AuthClientMAC;
    }
    public void setAuthClientMAC(String m_AuthClientMAC) {
        this.m_AuthClientMAC = m_AuthClientMAC;
    }
    
    public int getAuthPlaceID() {
        return m_AuthPlaceID;
    }
    public void setAuthPlaceID(int m_AuthPlaceID) {
        this.m_AuthPlaceID = m_AuthPlaceID;
    }
}
