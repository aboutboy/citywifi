
package anni.utils;

import java.sql.*;

public class DbUtils {
    static {
        try {
        	//加载数据库驱动
			try {
				Class.forName("com.mysql.jdbc.Driver").newInstance();
			} catch (InstantiationException e) {
				// TODO 自动生成的 catch 块
				e.printStackTrace();
			} catch (IllegalAccessException e) {
				// TODO 自动生成的 catch 块
				e.printStackTrace();
			}
        } catch (ClassNotFoundException ex) {
            System.err.println(ex);
        }
    }

    public static Connection getConn() {
        try {
        	String DBUser = "root"; //mysql用户名
            String DBPasswd = "fenghuoprotocol110"; //mysql密码
            String DBName = "1912pub"; //数据库名

            //数据库完整链接地址
            String connUrl = "jdbc:mysql://192.168.1.2/" + DBName + "?user="
                    + DBUser + "&password=" + DBPasswd;
            
            return DriverManager.getConnection(connUrl);
        } catch (SQLException ex) {
            System.err.println(ex);
            return null;
        }
    }

    public static void close(ResultSet rs, Statement state, Connection conn) {
        if (rs != null) {
            try {
                rs.close();
            } catch(SQLException ex) {
                System.err.println(ex);
            }
        }
        if (state != null) {
            try {
                state.close();
            } catch(SQLException ex) {
                System.err.println(ex);
            }
        }
        if (conn != null) {
            try {
                conn.close();
            } catch(SQLException ex) {
                System.err.println(ex);
            }
        }
    }
}
