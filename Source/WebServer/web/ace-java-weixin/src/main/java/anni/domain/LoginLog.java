
package anni.domain;

public class LoginLog {
	private int m_LoginID;
	private String m_UserMac;
	private int m_PlaceID;
    private String m_LoginTime;
    private int m_SpreadCount=0;
    private String m_LastSpreadTime;
    private String m_AuthServerAddr;
    private int m_AuthServerRemotePort;
    private String m_UserIP;


    public int getLoginID() {
        return m_LoginID;
    }
    public void setLoginID(int m_LoginID) {
        this.m_LoginID = m_LoginID;
    }
    
	public String getUserMac() {
        return m_UserMac;
    }
	public void setUserMac(String m_UserMac) {
		this.m_UserMac = m_UserMac;
    }
    
    public int getPlaceID() {
        return m_PlaceID;
    }
    public void setPlaceID(int m_PlaceID) {
        this.m_PlaceID = m_PlaceID;
    }

    public String getLoginTime() {
        return m_LoginTime;
    }
    public void setLoginTime(String m_LoginTime) {
        this.m_LoginTime = m_LoginTime;
    }

    public int getSpreadCount() {
        return m_SpreadCount;
    }
    public void setSpreadCount(int m_SpreadCount) {
        this.m_SpreadCount = m_SpreadCount;
    }

    public String getLastSpreadTime() {
        return m_LastSpreadTime;
    }
    public void setLastSpreadTime(String m_LastSpreadTime) {
        this.m_LastSpreadTime = m_LastSpreadTime;
    }
    
    public String getAuthServerAddr() {
        return m_AuthServerAddr;
    }
    public void setAuthServerAddr(String m_AuthServerAddr) {
        this.m_AuthServerAddr = m_AuthServerAddr;
    }
    
    public int getAuthServerRemotePort() {
        return m_AuthServerRemotePort;
    }
    public void setAuthServerRemotePort(int m_AuthServerRemotePort) {
        this.m_AuthServerRemotePort = m_AuthServerRemotePort;
    }
    
    public String getUserIP() {
        return m_UserIP;
    }
    public void setUserIP(String m_UserIP) {
        this.m_UserIP = m_UserIP;
    }
}
