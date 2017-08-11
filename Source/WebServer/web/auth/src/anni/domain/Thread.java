
package anni.domain;

public class Thread {
	private Integer m_LogId = 0;
	private Integer m_UserId = 0;
	private String m_UserName;
    private String m_LoginMac;
    private String m_LoginTime;
    private String m_LoginReason;


    public Integer getLogId() {
        return m_LogId;
    }
    
    public Integer getUserId() {
        return m_UserId;
    }
    public void setUserId(Integer nId) {
        this.m_UserId = nId;
    }
    
    public String getUserName() {
        return m_UserName;
    }
    public void setUserName(String username) {
        this.m_UserName = username;
    }
    
    public String getLoginMac() {
        return m_LoginMac;
    }
    public void setLoginMac(String LoginMac) {
        this.m_LoginMac = LoginMac;
    }
    
    public String getLoginTime() {
        return m_LoginTime;
    }
    public void setLoginTime(String loginTime) {
        this.m_LoginTime = loginTime;
    }
    
    public String getLoginReason() {
        return m_LoginReason;
    }
    public void setLoginReason(String content) {
        this.m_LoginReason = content;
    }
}
