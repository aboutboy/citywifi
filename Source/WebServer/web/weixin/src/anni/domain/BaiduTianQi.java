
package anni.domain;

public class BaiduTianQi {
	//状态值
	private int m_ErrNum;
	//状态信息
	private String m_ErrMsg;
	//天气情况
	private String m_Weather;
	//最低温度
	private int m_Ltmp;
	//最高温度
	private int m_Htmp;
	//海拔
	private int m_Altitude;
	 //风向
	private String m_WD;
	//风力
	private String m_WS;
	//邮编
	private String m_PostCode;
	//日出时间
	private String m_Sunrise;
	 //日落时间
	private String m_Sunset;
	//空气污染指数
	private int m_Aqi;
	//空气等级
	private String m_Level;
	//首要污染物
	private String m_Core;


    public int getErrNum() {
        return m_ErrNum;
    }
	public void setErrNum(int m_ErrNum) {
		this.m_ErrNum = m_ErrNum;
    }
	
	public String getErrMsg() {
        return m_ErrMsg;
    }
	public void setErrMsg(String m_ErrMsg) {
		this.m_ErrMsg = m_ErrMsg;
    }
	
	public String getWeather() {
        return m_Weather;
    }
	public void setWeather(String m_Weather) {
		this.m_Weather = m_Weather;
    }
	
	public int getLtmp() {
        return m_Ltmp;
    }
	public void setLtmp(int m_Ltmp) {
		this.m_Ltmp = m_Ltmp;
    }
	
	public int getHtmp() {
        return m_Htmp;
    }
	public void setHtmp(int m_Htmp) {
		this.m_Htmp = m_Htmp;
    }
	
	public int getAltitude() {
        return m_Altitude;
    }
	public void setAltitude(int m_Altitude) {
		this.m_Altitude = m_Altitude;
    }
	
	public String getWD() {
        return m_WD;
    }
	public void setWD(String m_WD) {
		this.m_WD = m_WD;
    }
	
	public String getWS() {
        return m_WS;
    }
	public void setWS(String m_WS) {
		this.m_WS = m_WS;
    }
	
	public String getPostCode() {
        return m_PostCode;
    }
	public void setPostCode(String m_PostCode) {
		this.m_PostCode = m_PostCode;
    }
	
	public String getSunrise() {
        return m_Sunrise;
    }
	public void setSunrise(String m_Sunrise) {
		this.m_Sunrise = m_Sunrise;
    }
	
	public String getSunset() {
        return m_Sunset;
    }
	public void setSunset(String m_Sunset) {
		this.m_Sunset = m_Sunset;
    }
	
	public int getAqi() {
        return m_Aqi;
    }
	public void setAqi(int m_Aqi) {
		this.m_Aqi = m_Aqi;
    }
	
	public String getLevel() {
        return m_Level;
    }
	public void setLevel(String m_Level) {
		this.m_Level = m_Level;
    }
	
	public String getCore() {
        return m_Core;
    }
	public void setCore(String m_Core) {
		this.m_Core = m_Core;
    }
}
