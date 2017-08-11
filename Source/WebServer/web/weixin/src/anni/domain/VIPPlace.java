
package anni.domain;

public class VIPPlace {
	private int m_PlaceID;
	private String m_PlaceName;
	private String m_PlaceAddr;
	private String m_PlacePhone;
    private int m_CityCode;
    private int m_SpreadID;
    private int m_SpreadCount;
    private int m_WifiRate;
    private String m_GPSLatitude="0";
    private String m_GPSLongitude="0";
    private String m_GPSPrecision="0";
    private String m_SpreadContent;
    private String m_AdminOpenID;
    private String m_PlaceUpdateTime;
    private int m_PlaceType;
    private String m_RedirectURI="#";

    
    public int getPlaceID() {
        return m_PlaceID;
    }
    public void setPlaceID(int m_PlaceID) {
        this.m_PlaceID = m_PlaceID;
    }
    
    public String getPlaceName() {
        return m_PlaceName;
    }
    public void setPlaceName(String m_PlaceName) {
        this.m_PlaceName = m_PlaceName;
    }
    
    public String getPlaceAddr() {
        return m_PlaceAddr;
    }
    public void setPlaceAddr(String m_PlaceAddr) {
        this.m_PlaceAddr = m_PlaceAddr;
    }
    
    public String getPlacePhone() {
        return m_PlacePhone;
    }
    public void setPlacePhone(String m_PlacePhone) {
        this.m_PlacePhone = m_PlacePhone;
    }
    
    public int getCityCode() {
        return m_CityCode;
    }
    public void setCityCode(int m_CityCode) {
        this.m_CityCode = m_CityCode;
    }
    
    public int getSpreadID() {
        return m_SpreadID;
    }
    public void setSpreadID(int m_SpreadID) {
        this.m_SpreadID = m_SpreadID;
    }
    
    public int getSpreadCount() {
        return m_SpreadCount;
    }
    public void setSpreadCount(int m_SpreadCount) {
        this.m_SpreadCount = m_SpreadCount;
    }
    
    public int getWifiRate() {
        return m_WifiRate;
    }
    public void setWifiRate(int m_WifiRate) {
        this.m_WifiRate = m_WifiRate;
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
    
    public String getSpreadContent() {
        return m_SpreadContent;
    }
    public void setSpreadContent(String m_SpreadContent) {
        this.m_SpreadContent = m_SpreadContent;
    }
    
    public String getAdminOpenID() {
        return m_AdminOpenID;
    }
    public void setAdminOpenID(String m_AdminOpenID) {
        this.m_AdminOpenID = m_AdminOpenID;
    }
    
    public String getPlaceUpdateTime() {
        return m_PlaceUpdateTime;
    }
    public void setPlaceUpdateTime(String m_PlaceUpdateTime) {
        this.m_PlaceUpdateTime = m_PlaceUpdateTime;
    }
    
    public int getPlaceType() {
        return m_PlaceType;
    }
    public void setPlaceType(int m_PlaceType) {
        this.m_PlaceType = m_PlaceType;
    }
    
    public String getRedirectURI() {
        return m_RedirectURI;
    }
    public void setRedirectURI(String m_RedirectURI) {
        this.m_RedirectURI = m_RedirectURI;
    }
}
