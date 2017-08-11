
package anni.dao;

import anni.utils.DbUtils;

import java.util.ArrayList;
import java.util.List;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import anni.domain.OtherPlace;

public class OtherPlaceDao {
	
	//查找所有热点
    public List<OtherPlace> AllWiFi() throws Exception {
        Connection conn = null;
        Statement state = null;
        ResultSet rs = null;

        List<OtherPlace> list = new ArrayList<OtherPlace>();
        try {
            conn = DbUtils.getConn();
            state = conn.createStatement();
            rs = state.executeQuery("select * from otherplace");

            while (rs.next()) {
            	OtherPlace vipplace = new OtherPlace();
            	vipplace.setPlaceID(rs.getInt("place_id"));
            	vipplace.setPlaceName(rs.getString("place_name"));
            	vipplace.setPlaceAddr(rs.getString("place_addr"));
            	vipplace.setPlacePhone(rs.getString("place_phone"));
            	vipplace.setCityCode(rs.getInt("city_code"));
            	vipplace.setSpreadID(rs.getInt("spread_id"));
            	vipplace.setSpreadCount(rs.getInt("spread_count"));
            	vipplace.setWifiRate(rs.getInt("wifi_rate"));
            	vipplace.setGPSLatitude(rs.getString("gps_latitude"));
            	vipplace.setGPSLongitude(rs.getString("gps_longitude"));
            	vipplace.setGPSPrecision(rs.getString("gps_precision"));
            	vipplace.setWiFiPassword(rs.getString("wifi_password"));
            	vipplace.setPlaceUpdateTime(rs.getString("place_update_time"));
            	vipplace.setPlaceType(rs.getInt("place_type"));

                list.add(vipplace);
            }
        } finally {
            DbUtils.close(rs, state, conn);
        }
        return list;
    }

	//搜索GPS位置直径半径范围
    public List<OtherPlace> FindWiFi(String gps_longitude, String gps_latitude, int distance, int viewCount) throws Exception {
        Connection conn = null;
        PreparedStatement state = null;
        ResultSet rs = null;

        List<OtherPlace> list = new ArrayList<OtherPlace>();
        try {
            conn = DbUtils.getConn();
            state = conn.prepareStatement("select * from otherplace where getDistance(gps_longitude, gps_latitude, ?, ?) < ? order by spread_id desc limit 0,?;");
            state.setString(1, gps_longitude);
            state.setString(2, gps_latitude);
            state.setInt(3, distance);
            state.setInt(4, viewCount);
            rs = state.executeQuery();

            while (rs.next()) {
            	OtherPlace vipplace = new OtherPlace();
            	vipplace.setPlaceID(rs.getInt("place_id"));
            	vipplace.setPlaceName(rs.getString("place_name"));
            	vipplace.setPlaceAddr(rs.getString("place_addr"));
            	vipplace.setPlacePhone(rs.getString("place_phone"));
            	vipplace.setCityCode(rs.getInt("city_code"));
            	vipplace.setSpreadID(rs.getInt("spread_id"));
            	vipplace.setSpreadCount(rs.getInt("spread_count"));
            	vipplace.setWifiRate(rs.getInt("wifi_rate"));
            	vipplace.setGPSLatitude(rs.getString("gps_latitude"));
            	vipplace.setGPSLongitude(rs.getString("gps_longitude"));
            	vipplace.setGPSPrecision(rs.getString("gps_precision"));
            	vipplace.setWiFiPassword(rs.getString("wifi_password"));
            	vipplace.setPlaceUpdateTime(rs.getString("place_update_time"));
            	vipplace.setPlaceType(rs.getInt("place_type"));

                list.add(vipplace);
            }
        } finally {
            DbUtils.close(rs, state, conn);
        }
        return list;
    }
    
    //查找符合指定key值的数据
    public OtherPlace FindWiFi(String key, String str) throws Exception {
        Connection conn = null;
        PreparedStatement state = null;
        ResultSet rs = null;

        OtherPlace vipplace = null;
        try {
            conn = DbUtils.getConn();
            state = conn.prepareStatement("select * from otherplace where " + key + "=?;");
            state.setString(1, str);
            rs = state.executeQuery();

            while (rs.next()) {
            	vipplace = new OtherPlace();
            	vipplace.setPlaceID(rs.getInt("place_id"));
            	vipplace.setPlaceName(rs.getString("place_name"));
            	vipplace.setPlaceAddr(rs.getString("place_addr"));
            	vipplace.setPlacePhone(rs.getString("place_phone"));
            	vipplace.setCityCode(rs.getInt("city_code"));
            	vipplace.setSpreadID(rs.getInt("spread_id"));
            	vipplace.setSpreadCount(rs.getInt("spread_count"));
            	vipplace.setWifiRate(rs.getInt("wifi_rate"));
            	vipplace.setGPSLatitude(rs.getString("gps_latitude"));
            	vipplace.setGPSLongitude(rs.getString("gps_longitude"));
            	vipplace.setGPSPrecision(rs.getString("gps_precision"));
            	vipplace.setWiFiPassword(rs.getString("wifi_password"));
            	vipplace.setPlaceUpdateTime(rs.getString("place_update_time"));
            	vipplace.setPlaceType(rs.getInt("place_type"));
            }
        } finally {
            DbUtils.close(rs, state, conn);
        }
        return vipplace;
    }
    
    
    public void update(OtherPlace tPlace) throws Exception  {
        Connection conn = null;
        PreparedStatement state = null;
        
        System.out.println("update Place");

        try {
            conn = DbUtils.getConn();
            int nStartNum=1;
            state = conn.prepareStatement("update otherplace set place_name=?,place_addr=?,place_phone=?,city_code=?,spread_id=?,spread_count=?,wifi_rate=?,gps_latitude=?,gps_longitude=?,gps_precision=?,wifi_password=?,place_update_time=?,place_type=? where place_id=?;");

			state.setString(nStartNum++, tPlace.getPlaceName());
			state.setString(nStartNum++, tPlace.getPlaceAddr());
			state.setString(nStartNum++, tPlace.getPlacePhone());
			state.setInt(nStartNum++, tPlace.getCityCode());
			state.setInt(nStartNum++, tPlace.getSpreadID());
			state.setInt(nStartNum++, tPlace.getSpreadCount());
			state.setInt(nStartNum++, tPlace.getWifiRate());
			state.setString(nStartNum++, tPlace.getGPSLatitude());
			state.setString(nStartNum++, tPlace.getGPSLongitude());
			state.setString(nStartNum++, tPlace.getGPSPrecision());
			state.setString(nStartNum++, tPlace.getWiFiPassword());
			state.setString(nStartNum++, tPlace.getPlaceUpdateTime());
			state.setInt(nStartNum++, tPlace.getPlaceType());
        	
        	state.setInt(nStartNum++, tPlace.getPlaceID());

            state.executeUpdate();
        } finally {
            DbUtils.close(null, state, conn);
        }
    }
    

    //搜索GPS位置直径半径范围商家数量
    public int getCount(String gps_longitude, String gps_latitude, int distance) throws Exception {
        Connection conn = null;
        PreparedStatement state = null;
        ResultSet rs = null;
        int count = 0;

        try {
            conn = DbUtils.getConn();
            state = conn.prepareStatement("select count(*) from otherplace where getDistance(gps_longitude, gps_latitude, ?, ?) < ?;");
            state.setString(1, gps_longitude);
            state.setString(2, gps_latitude);
            state.setInt(3, distance);
            rs = state.executeQuery();

            while (rs.next()) {
            	count = rs.getInt(1);
            }
        } finally {
            DbUtils.close(rs, state, conn);
        }
        return count;
    }
    
    
    // ==
    public int getCount() throws Exception {
        Connection conn = null;
        Statement state = null;
        int count = 0;

        try {
            conn = DbUtils.getConn();
            state = conn.createStatement();

            ResultSet rs = state.executeQuery("select count(*) from otherplace");
            if (rs.next()) {
                count = rs.getInt(1);
            }
        } finally {
            DbUtils.close(null, state, conn);
        }
        return count;
    }
}
