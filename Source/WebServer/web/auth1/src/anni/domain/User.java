
package anni.domain;

public class User {
	private Integer m_UserId = 0;
	private String m_UserName;
    private String m_PassWord;
    private String m_RegTime;
    private String m_LastLogin;
	private Integer m_State = 1;
	private Integer m_Level = 0;
	private Integer m_Hit = 0;


	public Integer getUserId() {
        return m_UserId;
    }
	public void setUserId(int m_UserId) {
		this.m_UserId = m_UserId;
    }
    
    public String getUserName() {
        return m_UserName;
    }
    public void setUserName(String username) {
        this.m_UserName = username;
    }

    public String getPassword() {
        return m_PassWord;
    }
    public void setPassword(String password) {
        this.m_PassWord = password;
    }

    public String getRegTime() {
        return m_RegTime;
    }
    public void setRegTime(String regTime) {
        this.m_RegTime = regTime;
    }

    public String getLastLogin() {
        return m_LastLogin;
    }
    public void setLastLogin(String lastLogin) {
        this.m_LastLogin = lastLogin;
    }
	
	// 0: 正常 1: 待审核 2: 被禁用
	public Integer getState() {
        return m_State;
    }
    public void setState(int nState) {
        this.m_State = nState;
    }
    
    public Integer getLevel() {
        return m_Level;
    }
    public void setLevel(int nLevel) {
        this.m_Level = nLevel;
    }
	
	public Integer getHit() {
        return m_Hit;
    }
    public void setHit(int nHit) {
        this.m_Hit = nHit;
    }

}
