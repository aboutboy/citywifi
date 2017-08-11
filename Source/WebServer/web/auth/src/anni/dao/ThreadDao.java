
package anni.dao;

import anni.domain.Thread;
import anni.utils.DbUtils;
import java.util.ArrayList;
import java.util.List;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class ThreadDao {

    /**
     * 获得所有主题信息
     *
     * @return thread列表
     */
    public List<Thread> getAll() throws Exception {
        Connection conn = null;
        Statement state = null;
        ResultSet rs = null;

        List<Thread> list = new ArrayList<Thread>();
        try {
            conn = DbUtils.getConn();
            state = conn.createStatement();
            rs = state.executeQuery("select * from loginlog");

            while (rs.next()) {
                Thread thread = new Thread();
                thread.setLoginReason(rs.getString("login_reason"));
                thread.setLoginTime(rs.getString("login_time"));
                thread.setUserName(rs.getString("username"));
                thread.setLoginMac(rs.getString("login_mac"));

                list.add(thread);
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
    public void save(Thread thread) throws Exception  {
        Connection conn = null;
        PreparedStatement state = null;

        try {
            conn = DbUtils.getConn();
            state = conn.prepareStatement("INSERT INTO loginlog VALUES(NULL,?,?,?,?,?);");
            state.setInt(1, thread.getUserId());
            state.setString(2, thread.getUserName());
            state.setString(3, thread.getLoginMac());
            state.setString(4, thread.getLoginTime());
            state.setString(5, thread.getLoginReason());

            state.executeUpdate();
        } finally {
            DbUtils.close(null, state, conn);
        }
    }

    // ==
    public int getCount() throws Exception {
        Connection conn = null;
        Statement state = null;
        int count = 0;

        try {
            conn = DbUtils.getConn();
            state = conn.createStatement();

            ResultSet rs = state.executeQuery("select count(*) from thread");
            if (rs.next()) {
                count = rs.getInt(1);
            }
        } finally {
            DbUtils.close(null, state, conn);
        }
        return count;
    }
}
