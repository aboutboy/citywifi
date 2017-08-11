
package anni.dao;

import anni.utils.DbUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import anni.domain.GPSLog;

public class GPSLogDao {

    public GPSLog getLastLog(int User_ID) throws Exception  {
        Connection conn = null;
        PreparedStatement state = null;
        ResultSet rs = null;

        GPSLog gpslog = null;
        try {
            conn = DbUtils.getConn();
            state = conn.prepareStatement("select * from gpslog where user_id=? order by gps_update_time desc limit 0,1;");
            state.setInt(1, User_ID);
            rs = state.executeQuery();

            if (rs.next()) {
            	gpslog = new GPSLog();
            	gpslog.setUserID(rs.getInt("user_id"));
            	gpslog.setGPSUpdateTime(rs.getString("gps_update_time"));
            	gpslog.setGPSLatitude(rs.getString("gps_latitude"));
            	gpslog.setGPSLongitude(rs.getString("gps_longitude"));
                gpslog.setGPSPrecision(rs.getString("gps_precision"));
            }
        } finally {
            DbUtils.close(rs, state, conn);
        }
        return gpslog;
    }

    /**
     * 向数据库插入一条数据.
     *
     * @param user 用户信息
     */
    public void add(GPSLog gpslog) throws Exception  {
        Connection conn = null;
        PreparedStatement state = null;

        try {
            conn = DbUtils.getConn();
            int nStartNum=1;
            state = conn.prepareStatement("INSERT INTO gpslog VALUES(?,?,?,?,?);");
            
            state.setInt(nStartNum++, gpslog.getUserID());
            state.setString(nStartNum++, gpslog.getGPSUpdateTime());
            state.setString(nStartNum++, gpslog.getGPSLatitude());
            state.setString(nStartNum++, gpslog.getGPSLongitude());
			state.setString(nStartNum++, gpslog.getGPSPrecision());

            state.executeUpdate();
        } finally {
            DbUtils.close(null, state, conn);
        }
    }
}
