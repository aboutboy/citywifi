
package anni.domain;

public class User {
	private int m_UserID;
	private String m_OpenID;
	private String m_UserName="null";
	private int m_Age=0;
	private int m_SexType=1;
	private int m_CityCode=0;
    private String m_PassWord="null";
    private int m_PassWordTime=0;
    private int m_MyJifen=0;
    private int m_FollowType;
    private String m_FollowTime;
    private int m_FindWiFiDistance=5000;
    private String m_UserMac="null";
    private String m_UserUpdateTIme;
    private int m_VisitNum=1;
    private int m_FollowPlaceID=0;


    public int getUserID() {
        return m_UserID;
    }
	public void setUserID(int m_UserID) {
		this.m_UserID = m_UserID;
    }
	
	public String getOpenID() {
        return m_OpenID;
    }
	public void setOpenID(String m_OpenID) {
		this.m_OpenID = m_OpenID;
    }
    
    public String getUserName() {
        return m_UserName;
    }
    public void setUserName(String username) {
        this.m_UserName = username;
    }

    public int getAge() {
        return m_Age;
    }
	public void setAge(int m_Age) {
		this.m_Age = m_Age;
    }
	
	public int getSexType() {
        return m_SexType;
    }
	public void setSexType(int m_SexType) {
		this.m_SexType = m_SexType;
    }
	
	public int getCityCode() {
        return m_CityCode;
    }
	public void setCityCode(int m_CityCode) {
		this.m_CityCode = m_CityCode;
    }
	
	public String getPassWord() {
        return m_PassWord;
    }
    public void setPassWord(String m_PassWord) {
        this.m_PassWord = m_PassWord;
    }
    
    public int getPassWordTime() {
        return m_PassWordTime;
    }
    public void setPassWordTime(int m_PassWordTime) {
        this.m_PassWordTime = m_PassWordTime;
    }
    
    public int getMyJifen() {
        return m_MyJifen;
    }
	public void setMyJifen(int m_MyJifen) {
		this.m_MyJifen = m_MyJifen;
    }
	
	public int getFollowType() {
        return m_FollowType;
    }
    public void setFollowType(int m_FollowType) {
        this.m_FollowType = m_FollowType;
    }
    
    public String getFollowTime() {
        return m_FollowTime;
    }
	public void setFollowTime(String m_FollowTime) {
		this.m_FollowTime = m_FollowTime;
    }
	
	public int getFindWiFiDistance() {
        return m_FindWiFiDistance;
    }
    public void setFindWiFiDistance(int m_FindWiFiDistance) {
        this.m_FindWiFiDistance = m_FindWiFiDistance;
    }
    
    public String getUserMac() {
        return m_UserMac;
    }
	public void setUserMac(String m_UserMac) {
		this.m_UserMac = m_UserMac;
    }
	
	public String getUserUpdateTIme() {
        return m_UserUpdateTIme;
    }
	public void setUserUpdateTIme(String m_UserUpdateTIme) {
		this.m_UserUpdateTIme = m_UserUpdateTIme;
    }
	
	public int getVisitNum() {
        return m_VisitNum;
    }
	public void setVisitNum(int m_VisitNum) {
		this.m_VisitNum = m_VisitNum;
    }
	public void addVisitNum() {
		m_VisitNum++;
    }
	
	public int getFollowPlaceID() {
        return m_FollowPlaceID;
    }
    public void setFollowPlaceID(int m_FollowPlaceID) {
        this.m_FollowPlaceID = m_FollowPlaceID;
    }
}
