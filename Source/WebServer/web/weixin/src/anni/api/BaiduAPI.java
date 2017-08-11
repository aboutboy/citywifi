
package anni.api;

import java.io.IOException;
import java.net.URLEncoder;
import java.util.List;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import anni.domain.BaiduGeocoding;
import anni.domain.BaiduTianQi;

import anni.utils.*;


public class BaiduAPI {
	
	UTools mUTools = new UTools();
	
	//百度AK
	private String mBaiduAK = "Yq9vtk7kF8sRmRDU9Gxk4MBN";
    
 
    public String GetAK()
    		throws IOException {
    	
    	return mBaiduAK;
    }
    
    public String GetURL(String sURL)
    		throws IOException {
    	
    	return mUTools.GetFromURL(sURL + "&ak=" + GetAK());
    }
    
    //将微信经纬度转换成百度经纬度
    public BaiduGeocoding GetBaiduGPS(int FromType, String GPSLatitude, String GPSLongitude)
    		throws IOException {
    	
    	String GetBaiduGPSURL = "http://api.map.baidu.com/geoconv/v1/?"
			  	+ "coords=" + GPSLongitude + "," + GPSLatitude
			  	+ "&from=" + FromType
			  	+ "&to=5";

        String GetBaiduGPSResult = GetURL(GetBaiduGPSURL);
        
        if(GetBaiduGPSResult.isEmpty()) {
      	  	return null;
        }
        
        //mUTools.DebugOut("sBaiduGPS="+GetBaiduGPSResult);
        
        BaiduGeocoding mBaiduGeocoding = new BaiduGeocoding();

        // 以employee为例解析，map类似
        JSONObject jb = JSONObject.fromObject(GetBaiduGPSResult);
        JSONArray ja = jb.getJSONArray("result");
        mBaiduGeocoding.setGPSLongitude(ja.getJSONObject(0).getString("x"));
        mBaiduGeocoding.setGPSLatitude(ja.getJSONObject(0).getString("y"));
        
        return mBaiduGeocoding;
    }
    
    //根据坐标获取地理位置信息
    public BaiduGeocoding GetBaiduGeocoding(String GPSLatitude, String GPSLongitude) 
    		throws IOException {
    	
    	String GetBaiduPositionURL = "http://api.map.baidu.com/geocoder/v2/?"
				  + "&location=" + GPSLatitude + "," + GPSLongitude
				  + "&output=json&pois=0";

        String GetBaiduPositionResult = GetURL(GetBaiduPositionURL);
        
        if(GetBaiduPositionResult.isEmpty()) {
        	return null;
        }
        
        //mUTools.DebugOut("sBaiduPosition: " + GetBaiduPositionResult);
        
        BaiduGeocoding mBaiduGeocoding = new BaiduGeocoding();
        
        //以employee为例解析，map类似
        JSONObject jb = JSONObject.fromObject(GetBaiduPositionResult);
        mBaiduGeocoding.setStatus(jb.getInt("status"));
        
        JSONObject jo_result = jb.getJSONObject("result");
        mBaiduGeocoding.setFormatted_Address(jo_result.getString("formatted_address"));
        mBaiduGeocoding.setCityCode(jo_result.getInt("cityCode"));
        
        JSONObject jo_result_addressComponent = jo_result.getJSONObject("addressComponent");
        mBaiduGeocoding.setCityName(jo_result_addressComponent.getString("city"));

		return mBaiduGeocoding;
    }
    
    //根据关键字查询市内场所
    public int GetBaiduPalce(String sPlaceName, int nCityCode, int nPageSize, List<BaiduGeocoding> tBaiduGeocodingList) 
    		throws IOException {
    	
    	//百度每次最多只返回20条信息
    	int nMaxPageSize=20;
    	int nPageNum=0, nTotal=0;
    	tBaiduGeocodingList.clear();
    	
    	while(true) {

	    	String GetBaiduPalceURL = "http://api.map.baidu.com/place/v2/search?"
	    			+ "&output=json&scope=1"
	    			+ "&query=" + URLEncoder.encode(sPlaceName, "UTF-8")
	    			+ "&region=" + nCityCode
	    			+ "&page_size=" + nMaxPageSize
	    			+ "&page_num=" + nPageNum;
	    	
	    	String GetBaiduPalceResult = GetURL(GetBaiduPalceURL);
	    	
	    	if(GetBaiduPalceResult.isEmpty()) {
	        	return -1;
	        }
	    	
	    	//以employee为例解析，map类似
	        JSONObject jb = JSONObject.fromObject(GetBaiduPalceResult);
	        //int status = jb.getInt("status");
	        int total = jb.getInt("total");
	        
	        JSONArray ja = jb.getJSONArray("results");
	        int tPageSize = ja.size();
	        
	        if(tPageSize == 0) {
	        	return (0 == nTotal) ? 0:nTotal;
	        }
	        nTotal = total;
	        
	        int nstart=-1;
	        
	        while(true) {
	        	
	        	if(tBaiduGeocodingList.size() == nPageSize) {
	        		return nTotal;
	        	}
	        	
	        	nstart++;
	        	
	        	//大多数情况下，当前页的总数据量等于nMaxPageSize，所以这个判断放在前面，可以提高效率
	        	if(nstart == nMaxPageSize) {
	        		break;
	        	}
	        	
	        	//如果已经到当前页的最后一条数据
	        	if((nstart == tPageSize)) {
	        		//如果当前页的总数据量已经不足nMaxPageSize，说明已经是最后一页了，没必要再查询下一页了
	        		if(tPageSize < nMaxPageSize) {
	        			return nTotal;
	        		} else{
	        			break;
	        		}
	        	}
	        	
	        	BaiduGeocoding tBaiduGeocoding = new BaiduGeocoding();
	        	
	        	if(ja.getJSONObject(nstart).has("name")) {
	        		tBaiduGeocoding.setPlaceName(ja.getJSONObject(nstart).getString("name"));
	        	}
	        	
	        	if(ja.getJSONObject(nstart).has("address")) {
	        		tBaiduGeocoding.setFormatted_Address(ja.getJSONObject(nstart).getString("address"));
	        	} else {
	        		continue;
	        	}
	        	
	        	if(ja.getJSONObject(nstart).has("telephone")) {
	        		tBaiduGeocoding.setTelephone(ja.getJSONObject(nstart).getString("telephone"));
	        	} else {
	        		continue;
	        	}
	        	
	        	/*if(ja.getJSONObject(nstart).getJSONObject("location").has("lat")) {
	        		tBaiduGeocoding.setGPSLatitude(ja.getJSONObject(nstart).getJSONObject("location").getString("lat"));
	        	}
	        	
	        	if(ja.getJSONObject(nstart).getJSONObject("location").has("lng")) {
	        		tBaiduGeocoding.setGPSLongitude(ja.getJSONObject(nstart).getJSONObject("location").getString("lng"));
	        	}*/
	        	
	        	tBaiduGeocodingList.add(tBaiduGeocoding);
	    	}
	        
	        nPageNum++;
	    }
    }
    
	//获取百度天气
	public BaiduTianQi GetBaiduTianQi(String sCityName)
			throws IOException {
		
		BaiduTianQi tBaiduTianQi = new BaiduTianQi();

		//百度天气预报
		String GetBaiduTianQiURL = "http://apistore.baidu.com/microservice/weather?cityname="
				+ URLEncoder.encode(sCityName, "UTF-8");
		
		String GetBaiduTianQiResult = GetURL(GetBaiduTianQiURL);
    	if(GetBaiduTianQiResult.isEmpty()) {
        	return null;
        }
    	
    	//百度空气污染指数
    	String GetBaiduKongQiURL = "http://apistore.baidu.com/microservice/aqi?city="
				+ URLEncoder.encode(sCityName, "UTF-8");
		
		String GetBaiduKongQiResult = GetURL(GetBaiduKongQiURL);
    	if(!GetBaiduKongQiResult.isEmpty()) {
    		JSONObject jb = JSONObject.fromObject(GetBaiduKongQiResult);
    		
    		if(jb.has("retData")) {
    			
    			String temp = jb.getString("retData");
    			
    			if("".equals(temp) || "{}".equals(temp) || "[]".equals(temp)) {
    				  
    			} else {
    				JSONObject jb_retData = jb.getJSONObject("retData");
    				tBaiduTianQi.setAqi(jb_retData.getInt("aqi"));
    				tBaiduTianQi.setLevel(jb_retData.getString("level"));
    				tBaiduTianQi.setCore(jb_retData.getString("core"));
    			}
    		}
        }

		
		//以employee为例解析，map类似
        JSONObject jb = JSONObject.fromObject(GetBaiduTianQiResult);
        
        tBaiduTianQi.setErrNum(jb.getInt("errNum"));
        tBaiduTianQi.setErrMsg(jb.getString("errMsg"));
        
        if(tBaiduTianQi.getErrNum() != 0) {
        	return null;
        }
        
        if(jb.has("retData")) {
        	
        	String temp = jb.getString("retData");
			
			if("".equals(temp) || "{}".equals(temp) || "[]".equals(temp)) {
				  
			} else {
				
	        	JSONObject jb_retData = jb.getJSONObject("retData");
	            tBaiduTianQi.setWeather(jb_retData.getString("weather"));
	            tBaiduTianQi.setLtmp(jb_retData.getInt("l_tmp"));
	            tBaiduTianQi.setHtmp(jb_retData.getInt("h_tmp"));
	            tBaiduTianQi.setAltitude(jb_retData.getInt("altitude"));
	            tBaiduTianQi.setWD(jb_retData.getString("WD"));
	            tBaiduTianQi.setWS(jb_retData.getString("WS"));
	            tBaiduTianQi.setPostCode(jb_retData.getString("postCode"));
	            tBaiduTianQi.setSunrise(jb_retData.getString("sunrise"));
	            tBaiduTianQi.setSunset(jb_retData.getString("sunset"));
			}
        }

		return tBaiduTianQi;
	}
}
