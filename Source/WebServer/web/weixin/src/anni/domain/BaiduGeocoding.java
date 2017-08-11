
package anni.domain;

public class BaiduGeocoding {
	//状态值
	private int m_Status;
	//场所名
	private String m_PlaceName;
	//电话
	private String m_Telephone = "无记录";
	//字符串地址
	private String m_Formatted_Address;
	//区号
	private int m_CityCode;
	//城市名
	private String m_CityName;
	//经纬度
	private String m_GPSLatitude;
	private String m_GPSLongitude;


    public int getStatus() {
        return m_Status;
    }
	public void setStatus(int m_Status) {
		this.m_Status = m_Status;
    }
	
	public String getPlaceName() {
        return m_PlaceName;
    }
	public void setPlaceName(String m_PlaceName) {
		this.m_PlaceName = m_PlaceName;
    }
	
	public String getTelephone() {
        return m_Telephone;
    }
	public void setTelephone(String m_Telephone) {
		this.m_Telephone = m_Telephone;
    }
	
	public String getFormatted_Address() {
        return m_Formatted_Address;
    }
	public void setFormatted_Address(String m_Formatted_Address) {
		this.m_Formatted_Address = m_Formatted_Address;
    }
    
	public int getCityCode() {
        return m_CityCode;
    }
    public void setCityCode(int m_CityCode) {
        this.m_CityCode = m_CityCode;
    }
    
    public String getCityName() {
        return m_CityName;
    }
	public void setCityName(String m_CityName) {
		this.m_CityName = m_CityName;
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
}
