
package anni.dao;

import anni.utils.DbUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import anni.domain.User;

public class UserDao {

    public User get(String key, String str) throws Exception  {
        Connection conn = null;
        PreparedStatement state = null;
        ResultSet rs = null;

        User user = null;
        try {
            conn = DbUtils.getConn();
            String QueryString = "select * from user where " + key + "=?;";
            state = conn.prepareStatement(QueryString);
            state.setString(1, str);
            rs = state.executeQuery();

            if (rs.next()) {
                user = new User();
                user.setUserID(rs.getInt("user_id"));
                user.setOpenID(rs.getString("open_id"));
                user.setUserName(rs.getString("user_name"));
                user.setAge(rs.getInt("user_age"));
                user.setSexType(rs.getInt("sex_type"));
                user.setCityCode(rs.getInt("city_code"));
				user.setPassWord(rs.getString("wifi_passwd"));
				user.setPassWordTime(rs.getInt("wifi_passwd_time"));
				user.setMyJifen(rs.getInt("my_jifen"));
				user.setFollowType(rs.getInt("follow_type"));
				user.setFollowTime(rs.getString("follow_time"));
				user.setFindWiFiDistance(rs.getInt("find_wifi_distance"));
				user.setUserMac(rs.getString("user_mac"));
				user.setUserUpdateTIme(rs.getString("user_update_time"));
				user.setVisitNum(rs.getInt("visit_num"));
				user.setFollowPlaceID(rs.getInt("follow_place_id"));
            }
        } finally {
            DbUtils.close(rs, state, conn);
        }
        return user;
    }

    /**
     * 向数据库插入一条数据.
     *
     * @param user 用户信息
     */
    public void add(User user) throws Exception  {
        Connection conn = null;
        PreparedStatement state = null;
        
        System.out.println("insert user");

        try {
            conn = DbUtils.getConn();
            int nStartNum=1;
            state = conn.prepareStatement("INSERT INTO user VALUES(NULL,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);");
            
            state.setString(nStartNum++, user.getOpenID());
            state.setString(nStartNum++, user.getUserName());
            state.setInt(nStartNum++, user.getAge());
            state.setInt(nStartNum++, user.getSexType());
			state.setInt(nStartNum++, user.getCityCode());
			state.setString(nStartNum++, user.getPassWord());
			state.setInt(nStartNum++, user.getPassWordTime());
			state.setInt(nStartNum++, user.getMyJifen());
			state.setInt(nStartNum++, user.getFollowType());
			state.setString(nStartNum++, user.getFollowTime());
			state.setInt(nStartNum++, user.getFindWiFiDistance());
			state.setString(nStartNum++, user.getUserMac());
			state.setString(nStartNum++, user.getUserUpdateTIme());
			state.setInt(nStartNum++, user.getVisitNum());
			state.setInt(nStartNum++, user.getFollowPlaceID());

            state.executeUpdate();
        } finally {
            DbUtils.close(null, state, conn);
        }
    }

    /**
     * 更新数据库中的一条用户信息.
     *
     * @param user 用户信息
     */
    public void update(User user) throws Exception  {
        Connection conn = null;
        PreparedStatement state = null;
        
        System.out.println("update user");

        try {
            conn = DbUtils.getConn();
            int nStartNum=1;
            state = conn.prepareStatement("update user set user_name=?,user_age=?,sex_type=?,city_code=?,wifi_passwd=?,wifi_passwd_time=?,my_jifen=?,follow_type=?,follow_time=?,find_wifi_distance=?,user_mac=?,user_update_time=?,visit_num=?,follow_place_id=? where user_id=?;");
            
            state.setString(nStartNum++, user.getUserName());
            state.setInt(nStartNum++, user.getAge());
            state.setInt(nStartNum++, user.getSexType());
			state.setInt(nStartNum++, user.getCityCode());
			state.setString(nStartNum++, user.getPassWord());
			state.setInt(nStartNum++, user.getPassWordTime());
			state.setInt(nStartNum++, user.getMyJifen());
			state.setInt(nStartNum++, user.getFollowType());
			state.setString(nStartNum++, user.getFollowTime());
			state.setInt(nStartNum++, user.getFindWiFiDistance());
			state.setString(nStartNum++, user.getUserMac());
			state.setString(nStartNum++, user.getUserUpdateTIme());
			state.setInt(nStartNum++, user.getVisitNum());
			state.setInt(nStartNum++, user.getFollowPlaceID());
			
			state.setInt(nStartNum++, user.getUserID());

            state.executeUpdate();
        } finally {
            DbUtils.close(null, state, conn);
        }
    }
}
