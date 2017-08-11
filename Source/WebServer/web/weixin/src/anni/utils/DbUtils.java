
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
            //ACE免费数据库
        	String DBUser = "live186";
			String DBPasswd = "51fengyunxiongba";
			String DBName = "r9ocv0u541nvix70";
        	String DBAddr = "rds8spfwbt7qtz4yxf4wk.mysql.rds.aliyuncs.com";
        	String DBPort = "3306";

			/*
			//本地数据库
        	String DBUser = "root";
            String DBPasswd = "51fengyunxiongba";
            String DBName = "live186";
        	String DBAddr = "localhost";
        	String DBPort = "3306";
            */

            //数据库完整链接地址
            String connUrl = "jdbc:mysql://" + DBAddr + ":" + DBPort + "/" + DBName + "?user="
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
