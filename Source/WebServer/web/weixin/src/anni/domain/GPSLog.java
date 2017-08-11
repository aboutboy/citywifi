
package anni.domain;

public class GPSLog {
	private int m_UserID;
	private String m_GPSUpdateTime="NULL";
	private String m_GPSLatitude="0";
    private String m_GPSLongitude="0";
    private String m_GPSPrecision="0";


    public int getUserID() {
        return m_UserID;
    }
	public void setUserID(int m_UserID) {
		this.m_UserID = m_UserID;
    }
	
	public String getGPSUpdateTime() {
        return m_GPSUpdateTime;
    }
	public void setGPSUpdateTime(String m_GPSUpdateTime) {
		this.m_GPSUpdateTime = m_GPSUpdateTime;
    }
    
	public String getGPSLatitude() {
        return m_GPSLatitude;
    }
    public void setGPSLatitude(String m_GPSLatitude) {
        this.m_GPSLatitude = m_GPSLatitude;
    }
    
    public String getGPSLongitude() {
        return m_GPSLongitude;
    }
    public void setGPSLongitude(String m_GPSLongitude) {
        this.m_GPSLongitude = m_GPSLongitude;
    }
    
    public String getGPSPrecision() {
        return m_GPSPrecision;
    }
    public void setGPSPrecision(String m_GPSPrecision) {
        this.m_GPSPrecision = m_GPSPrecision;
    }
}
