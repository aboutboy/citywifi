
package anni.dao;

import anni.utils.DbUtils;

import java.util.ArrayList;
import java.util.List;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import anni.domain.LoginLog;

public class LoginLogDao {
	
	public List<LoginLog> getSpreadLog(int nPlaceID, int nSpaceType, String sClientMac, int nMaxSpreadNum, int nViewCount) throws Exception {
        Connection conn = null;
        PreparedStatement state = null;
        ResultSet rs = null;

        List<LoginLog> list = new ArrayList<LoginLog>();
        try {
            conn = DbUtils.getConn();
            //ASC表示升序排序，DESC表示降序排序
            //state = conn.prepareStatement("select * from loginlog where user_mac=? and datediff(now(), last_spread_time)>0 and spread_count<? and  order by last_spread_time desc limit 0,?;");
            state = conn.prepareStatement("select * from loginlog join vipplace on loginlog.place_id=vipplace.place_id and loginlog.user_mac=? and vipplace.place_type!=? and loginlog.place_id!=? order by login_time desc limit 0,?;");

            state.setString(1, sClientMac);
            state.setInt(2, nSpaceType);
            state.setInt(3, nPlaceID);
            state.setInt(4, nViewCount);
            rs = state.executeQuery();

            while (rs.next()) {
            	LoginLog loginlog = new LoginLog();
            	loginlog.setLoginID(rs.getInt("loginlog_id"));
            	loginlog.setUserMac(rs.getString("user_mac"));
            	loginlog.setPlaceID(rs.getInt("place_id"));
            	loginlog.setLoginTime(rs.getString("login_time"));
            	loginlog.setSpreadCount(rs.getInt("spread_count"));
            	loginlog.setLastSpreadTime(rs.getString("last_spread_time"));
            	loginlog.setAuthServerAddr(rs.getString("auth_server_addr"));
            	loginlog.setAuthServerRemotePort(rs.getInt("auth_server_remote_port"));
            	loginlog.setUserIP(rs.getString("user_ip"));

                list.add(loginlog);
            }
        } finally {
            DbUtils.close(rs, state, conn);
        }
        return list;
    }

    /**
     * 向数据库插入一条数据.
     *
     * @param thread 主题信息
     */
    public void add(LoginLog loginlog) throws Exception  {
        Connection conn = null;
        PreparedStatement state = null;

        try {
            conn = DbUtils.getConn();
            int nStartNum=1;
            state = conn.prepareStatement("INSERT INTO loginlog VALUES(NULL,?,?,?,?,?,?,?,?);");
            
            state.setString(nStartNum++, loginlog.getUserMac());
            state.setInt(nStartNum++, loginlog.getPlaceID());
            state.setString(nStartNum++, loginlog.getLoginTime());
            state.setInt(nStartNum++, loginlog.getSpreadCount());
            state.setString(nStartNum++, loginlog.getLastSpreadTime());
            state.setString(nStartNum++, loginlog.getAuthServerAddr());
            state.setInt(nStartNum++, loginlog.getAuthServerRemotePort());
            state.setString(nStartNum++, loginlog.getUserIP());

            state.executeUpdate();
        } finally {
            DbUtils.close(null, state, conn);
        }
    }
    
    /**
     * 向数据库更新一条数据.
     *
     * @param thread 主题信息
     */
    public void update(LoginLog loginlog) throws Exception  {
        Connection conn = null;
        PreparedStatement state = null;

        try {
            conn = DbUtils.getConn();
            int nStartNum=1;
            state = conn.prepareStatement("update loginlog set user_mac=?,place_id=?,login_time=?,spread_count=?,last_spread_time=?,auth_server_addr=?,auth_server_remote_port=?,user_ip=? where loginlog_id=?;");
            
            state.setString(nStartNum++, loginlog.getUserMac());
            state.setInt(nStartNum++, loginlog.getPlaceID());
            state.setString(nStartNum++, loginlog.getLoginTime());
            state.setInt(nStartNum++, loginlog.getSpreadCount());
            state.setString(nStartNum++, loginlog.getLastSpreadTime());
            state.setString(nStartNum++, loginlog.getAuthServerAddr());
            state.setInt(nStartNum++, loginlog.getAuthServerRemotePort());
            state.setString(nStartNum++, loginlog.getUserIP());
            
            state.setInt(nStartNum++, loginlog.getLoginID());

            state.executeUpdate();
        } finally {
            DbUtils.close(null, state, conn);
        }
    }
}
