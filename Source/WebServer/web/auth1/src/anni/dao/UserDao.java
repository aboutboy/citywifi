
package anni.dao;

import anni.domain.User;
import anni.utils.DbUtils;
import java.util.ArrayList;
import java.util.List;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class UserDao {

    /**
     * 获得所有用户信息
     *
     * @return user列表
     */
    public List<User> getAll() throws Exception {
        Connection conn = null;
        Statement state = null;
        ResultSet rs = null;

        List<User> list = new ArrayList<User>();
        try {
            conn = DbUtils.getConn();
            state = conn.createStatement();
            rs = state.executeQuery("select * from user");

            while (rs.next()) {
                User user = new User();
                user.setUserId(rs.getInt("id"));
                user.setUserName(rs.getString("username"));
                user.setPassword(rs.getString("password"));
                user.setRegTime(rs.getString("reg_time"));
                user.setLastLogin(rs.getString("last_login"));
				user.setState(rs.getInt("state"));
				user.setLevel(rs.getInt("level"));
				user.setHit(rs.getInt("hit"));

                list.add(user);
            }
        } finally {
            DbUtils.close(rs, state, conn);
        }
        return list;
    }

    /**
     * 根据id获得对应的用户信息.
     *
     * @param id 主键
     * @return 用户信息
     */
    public User get(String sUserid) throws Exception  {
        Connection conn = null;
        PreparedStatement state = null;
        ResultSet rs = null;

        User user = null;
        try {
            conn = DbUtils.getConn();
            state = conn.prepareStatement("select * from user where id=?");
            state.setString(1, sUserid);
            rs = state.executeQuery();

            if (rs.next()) {
                user = new User();
                user.setUserId(rs.getInt("id"));
                user.setUserName(rs.getString("username"));
                user.setPassword(rs.getString("password"));
                user.setRegTime(rs.getString("reg_time"));
                user.setLastLogin(rs.getString("last_login"));
				user.setState(rs.getInt("state"));
				user.setLevel(rs.getInt("level"));
				user.setHit(rs.getInt("hit"));
            }
        } finally {
            DbUtils.close(rs, state, conn);
        }
        return user;
    }
	
	public User login(String username, String password) throws Exception {
        Connection conn = null;
        PreparedStatement state = null;
        ResultSet rs = null;

        User user = null;
        try {
            conn = DbUtils.getConn();
            state = conn.prepareStatement("select * from user where username=? and password=?");
            state.setString(1, username);
            state.setString(2, password);
            rs = state.executeQuery();

            if (rs.next()) {
                user = new User();
                user.setUserId(rs.getInt("id"));
                user.setUserName(rs.getString("username"));
                user.setPassword(rs.getString("password"));
                user.setRegTime(rs.getString("reg_time"));
                user.setLastLogin(rs.getString("last_login"));
				user.setState(rs.getInt("state"));
				user.setLevel(rs.getInt("level"));
				user.setHit(rs.getInt("hit"));
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
    public void save(User user) throws Exception  {
        Connection conn = null;
        PreparedStatement state = null;
        
        System.out.println("insert user");

        try {
            conn = DbUtils.getConn();
            state = conn.prepareStatement("INSERT INTO user VALUES(NULL,?,?,?,?,?,?,?,NULL);");
            state.setString(1, user.getUserName());
            state.setString(2, user.getPassword());
            state.setString(3, user.getRegTime());
            state.setString(4, user.getLastLogin());
			state.setInt(5, user.getState());
			state.setInt(6, user.getLevel());
			state.setInt(7, user.getHit());

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
            state = conn.prepareStatement("update user set password=?,reg_time=?,last_login=?,state=?,level=?,hit=? where id=?");
            state.setString(1, user.getPassword());
            state.setString(2, user.getRegTime());
            state.setString(3, user.getLastLogin());
			state.setInt(4, user.getState());
			state.setInt(5, user.getLevel());
			state.setInt(6, user.getHit());
			state.setInt(7, user.getUserId());

            state.executeUpdate();
        } finally {
            DbUtils.close(null, state, conn);
        }
    }

    /**
     * 根据id删除一条用户信息.
     *
     * @param id 主键
     */
    public void remove(String sUserid) throws Exception {
        Connection conn = null;
        PreparedStatement state = null;

        try {
            conn = DbUtils.getConn();
            state = conn.prepareStatement("delete from user where id=?");
            state.setString(1, sUserid);

            state.executeUpdate();
        } finally {
            DbUtils.close(null, state, conn);
        }
    }

    // ==
    public boolean checkExists(String sUserid) throws Exception {
        Connection conn = null;
        PreparedStatement state = null;
        ResultSet rs = null;

        boolean userExists = false;
        try {
            conn = DbUtils.getConn();
            state = conn.prepareStatement("select username from user where id=?");
            state.setString(1, sUserid);
            rs = state.executeQuery();

            if (rs.next()) {
                userExists = true;
            }
        } finally {
            DbUtils.close(rs, state, conn);
        }
        return userExists;
    }
}
