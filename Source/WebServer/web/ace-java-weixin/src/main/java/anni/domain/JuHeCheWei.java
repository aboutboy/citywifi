
package anni.domain;

public class JuHeCheWei {
	
	//状态值
	private int m_ErrorCode;
		
	//状态信息
	private String m_Reason;
	
	//名称
	private String m_CCMC;
	
	//地址
	private String m_CCDZ;
	
	//空车位
	private int m_KCW=0;
	
	//总车位
	private int m_ZCW=0;
	
	//停车场分类{ "占道停车场": "1", "路外露天停车场": "2", "非露天地上停车场": "3", "非露天地下停车场": "4",}
	private int m_CCFL=0;
	
	//停车场类型{ "平面自走式": "1", "机械式": "2", "立体自动车库": "3",}
	private int m_CCLX=0;
	
	//营业开始时间
	private String m_YYKSSJ;
	
	//营业结束时间
	private String m_YYJSSJ;
	
	//白天停车价格
	private String m_BTTCJG;
	
	//晚上停车价格
	private String m_WSTCJG;
	
	//计次收费-大型车[示例：10元/次、19：30-07：30(10元/次)]
	private String m_JCSFA;
	
	//计次收费-小型车[示例：10元/次、19：30-07：30(10元/次)]
	private String m_JCSFB;
	
	//是否开放(0：不开放；1：开放；)
	private int m_SFKF=0;
	
	//停车场图片
	private String m_CCTP;
	
	//经纬度
	private String m_GPSLatitude;
	private String m_GPSLongitude;
	
	//输出内容
	private String m_Out="";


	public int getErrorCode() {
        return m_ErrorCode;
    }
	public void setErrorCode(int m_ErrorCode) {
		this.m_ErrorCode = m_ErrorCode;
    }
	
	public String getReason() {
        return m_Reason;
    }
	public void setReason(String m_Reason) {
		this.m_Reason = m_Reason;
    }
	
	public String getCCMC() {
        return m_CCMC;
    }
	public void setCCMC(String m_CCMC) {
		this.m_CCMC = m_CCMC;
    }
	
	public String getCCDZ() {
        return m_CCDZ;
    }
	public void setCCDZ(String m_CCDZ) {
		this.m_CCDZ = m_CCDZ;
    }
	
	public int getKCW() {
        return m_KCW;
    }
	public void setKCW(int m_KCW) {
		this.m_KCW = m_KCW;
    }
	
	public int getZCW() {
        return m_ZCW;
    }
	public void setZCW(int m_ZCW) {
		this.m_ZCW = m_ZCW;
    }
	
	public int getCCFL() {
        return m_CCFL;
    }
	public void setCCFL(int m_CCFL) {
		this.m_CCFL = m_CCFL;
    }
	
	public int getCCLX() {
        return m_CCLX;
    }
	public void setCCLX(int m_CCLX) {
		this.m_CCLX = m_CCLX;
    }
	
	public String getYYKSSJ() {
        return m_YYKSSJ;
    }
	public void setYYKSSJ(String m_YYKSSJ) {
		this.m_YYKSSJ = m_YYKSSJ;
    }
	
	public String getYYJSSJ() {
        return m_YYJSSJ;
    }
	public void setYYJSSJ(String m_YYJSSJ) {
		this.m_YYJSSJ = m_YYJSSJ;
    }
	
	public String getBTTCJG() {
        return m_BTTCJG;
    }
	public void setBTTCJG(String m_BTTCJG) {
		this.m_BTTCJG = m_BTTCJG;
    }
	
	public String getWSTCJG() {
        return m_WSTCJG;
    }
	public void setWSTCJG(String m_WSTCJG) {
		this.m_WSTCJG = m_WSTCJG;
    }
	
	public String getJCSFA() {
        return m_JCSFA;
    }
	public void setJCSFA(String m_JCSFA) {
		this.m_JCSFA = m_JCSFA;
    }
	
	public String getJCSFB() {
        return m_JCSFB;
    }
	public void setJCSFB(String m_JCSFB) {
		this.m_JCSFB = m_JCSFB;
    }
	
	public int getSFKF() {
        return m_SFKF;
    }
	public void setSFKF(int m_SFKF) {
		this.m_SFKF = m_SFKF;
    }
	
	public String getCCTP() {
        return m_CCTP;
    }
	public void setCCTP(String m_CCTP) {
		this.m_CCTP = m_CCTP;
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
	
	public String getOut() {
        return m_Out;
    }
	public void setOut(String m_Out) {
		this.m_Out = m_Out;;
    }
	public void addOut(String m_Out) {
		this.m_Out += m_Out;
    }
	public void clearOut(String m_Out) {
		this.m_Out = "";
    }
}
