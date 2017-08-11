
package anni.api;

import java.io.IOException;
import java.util.List;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import anni.domain.*;
import anni.utils.*;
import anni.api.BaiduAPI;


public class JuHeAPI {
	
	UTools mUTools = new UTools();
	
	//百度AK
	private String mJuHeKey = "eb379682b1e77b16b156c7636bf11424";
	
	private BaiduAPI mBaiduAPI = new BaiduAPI();
    
 
    public String GetKey()
    		throws IOException {
    	
    	return mJuHeKey;
    }
    
    public String GetURL(String sURL)
    		throws IOException {
    	
    	return mUTools.GetFromURL(sURL + "&key=" + GetKey());
    }
    
    // 获取附近车位
    // Distance: 范围(m)(范围:(0, 2000]), 经纬度和范围同时使用生效
    // Total：需要的最大结果数
    public int GetCheWei(String GPSLongitude, String GPSLatitude, int Distance, int Total, List<JuHeCheWei> ListJuHeCheWei)
    		throws IOException {
    	
    	//单次查询API需要返回的数据量(范围:(0, 50], 默认值10)
    	int nMaxPageTotal = 50;
    	
    	//此次查询API的总数据量
    	int nAllTotal = 0;
    	
    	//单次查询results结果中的数据量
        int nPageTotal = 0;
    	
    	//每次查询API的开始下标(以0开始,范围:[0, 1000), 默认值0)
    	int nSkip = 0;
    	
    	//清空存储信息表
    	ListJuHeCheWei.clear();
    	
    	while(true) {

    		String GetJuHeCheWeiURL = "http://api2.juheapi.com/park/query?"
    			  	+ "dtype=json"
    				+ "&distance=" + Distance
        			+ "&limit=" + nMaxPageTotal
        			+ "&lon=" + GPSLongitude
        			+ "&lat=" + GPSLatitude
        			+ "&skip=" + nSkip;
	    	
    		String GetJuHeCheWeiResult = GetURL(GetJuHeCheWeiURL);
            //返回空内容，这属于API异常
            if(GetJuHeCheWeiResult.isEmpty()) {
          	  	return -1;
            }
	    	
	    	//以employee为例解析，map类似
	        JSONObject jb = JSONObject.fromObject(GetJuHeCheWeiResult);
	        
	        int ErrCode = jb.getInt("error_code");
	        if(ErrCode < 0) {
	        	return ErrCode;
	        }

	        //从结果中获取的总数据量
	        nAllTotal = jb.getInt("total");
	        if(nAllTotal == 0) {
	        	return 0;
	        }
	        
	        JSONArray ja;
	        
	        //提取results结果信息
	        if(jb.has("result")) {
	        	ja = jb.getJSONArray("result");
	        } else {
	        	return 0;
	        }
	        
	        //单次查询results结果中的数据量
	        nPageTotal = ja.size();
	        //如果results中没有数据
	        if(nPageTotal == 0) {
	        	return ListJuHeCheWei.size();
	        }
	        
	        //取出此次results结果中的每条信息
	        for(int i=0; i<nPageTotal; i++) {
	        	
	        	//如果已经收集了要求数量的信息,这直接返回
	        	if(ListJuHeCheWei.size() == Total) {
	        		return Total;
	        	}
	        	
	        	JuHeCheWei tJuHeCheWei = new JuHeCheWei();
	        	
	        	// 是否开放
	        	if(ja.getJSONObject(i).has("SFKF")) {
	        		
	        		tJuHeCheWei.setSFKF(ja.getJSONObject(i).getInt("SFKF"));
	        		//过滤掉内部停车场信息
	        		if(tJuHeCheWei.getSFKF() == 0) {
	        			continue;
	        		}
	        	} else {
	        		continue;
	        	}
	        	
	        	// 名称
	        	if(ja.getJSONObject(i).has("CCMC")) {
	        		tJuHeCheWei.setCCMC(ja.getJSONObject(i).getString("CCMC"));
	        		
	        		if(!tJuHeCheWei.getCCMC().isEmpty()) {
	        			tJuHeCheWei.addOut("名称：" + tJuHeCheWei.getCCMC());
	        		}
	        	} else {
	        		continue;
	        	}
	        	
	        	// 地址
	        	if(ja.getJSONObject(i).has("CCDZ")) {
	        		tJuHeCheWei.setCCDZ(ja.getJSONObject(i).getString("CCDZ"));
	        		
	        		if(!tJuHeCheWei.getCCDZ().isEmpty()) {
	        			tJuHeCheWei.addOut("<br/>地址：" + tJuHeCheWei.getCCDZ());
	        		}
	        	} else {
	        		continue;
	        	}
	        	
	        	// 总车位
	        	if(ja.getJSONObject(i).has("ZCW")) {
	        		tJuHeCheWei.setZCW(ja.getJSONObject(i).getInt("ZCW"));
	        		
	        		if(tJuHeCheWei.getZCW() > 0) {
	        			tJuHeCheWei.addOut("<br/>总车位：" + tJuHeCheWei.getZCW());
	        		}
	        	}
	        	
	        	// 空车位
	        	if(ja.getJSONObject(i).has("KCW")) {
	        		tJuHeCheWei.setKCW(ja.getJSONObject(i).getInt("KCW"));
	        		
	        		if(tJuHeCheWei.getKCW() > 0) {
	        			tJuHeCheWei.addOut("<br/>空车位：" + tJuHeCheWei.getKCW());
	        		}
	        	}

	        	// 停车场分类{ "占道停车场": "1", "路外露天停车场": "2", "非露天地上停车场": "3", "非露天地下停车场": "4",}
	        	if(ja.getJSONObject(i).has("CCFL")) {
	        		tJuHeCheWei.setCCFL(ja.getJSONObject(i).getInt("CCFL"));
	        		
	        		if(tJuHeCheWei.getCCFL() > 0) {
	        			
	        			tJuHeCheWei.addOut("<br/>停车场分类：");
	        			switch(tJuHeCheWei.getCCFL()) {
	        				case 1:
        						tJuHeCheWei.addOut("占道停车场");
        						
	        				case 2:
	        					tJuHeCheWei.addOut("路外露天停车场");
	        					
	        				case 3:
	        					tJuHeCheWei.addOut("非露天地上停车场");
	        					
	        				case 4:
	        					tJuHeCheWei.addOut("非露天地下停车场");
	        			}
	        		}
	        	}
	        	
	        	// 停车场类型{ "平面自走式": "1", "机械式": "2", "立体自动车库": "3",}
	        	if(ja.getJSONObject(i).has("CCLX")) {
	        		tJuHeCheWei.setCCLX(ja.getJSONObject(i).getInt("CCLX"));
	        		
	        		if(tJuHeCheWei.getCCLX() > 0) {
	        			
	        			tJuHeCheWei.addOut("<br/>停车场类型：");
	        			switch(tJuHeCheWei.getCCLX()) {
	        				case 1:
	        					tJuHeCheWei.addOut("平面自走式");
	        					
	        				case 2:
	        					tJuHeCheWei.addOut("机械式");
	        					
	        				case 3:
	        					tJuHeCheWei.addOut("立体自动车库");
	        			}
	        		}
	        	}
	        	
	        	// 营业开始时间
	        	if(ja.getJSONObject(i).has("YYKSSJ")) {
	        		tJuHeCheWei.setYYKSSJ(ja.getJSONObject(i).getString("YYKSSJ"));
	        		
	        		if(!tJuHeCheWei.getYYKSSJ().isEmpty()) {
	        			tJuHeCheWei.addOut("<br/>营业开始时间：" + tJuHeCheWei.getYYKSSJ());
	        		}
	        	}
	        	
	        	// 营业结束时间
	        	if(ja.getJSONObject(i).has("YYJSSJ")) {
	        		tJuHeCheWei.setYYJSSJ(ja.getJSONObject(i).getString("YYJSSJ"));
	        		
	        		if(!tJuHeCheWei.getYYJSSJ().isEmpty()) {
	        			tJuHeCheWei.addOut("<br/>营业结束时间：" + tJuHeCheWei.getYYJSSJ());
	        		}
	        	}
	        	
	        	// 白天停车价格
	        	if(ja.getJSONObject(i).has("BTTCJG")) {
	        		tJuHeCheWei.setBTTCJG(ja.getJSONObject(i).getString("BTTCJG"));
	        		
	        		if(!tJuHeCheWei.getBTTCJG().isEmpty()) {
	        			tJuHeCheWei.addOut("<br/>白天价格：" + tJuHeCheWei.getBTTCJG());
	        		}
	        	}
	        	
	        	// 晚上停车价格
	        	if(ja.getJSONObject(i).has("WSTCJG")) {
	        		tJuHeCheWei.setWSTCJG(ja.getJSONObject(i).getString("WSTCJG"));
	        		
	        		if(!tJuHeCheWei.getWSTCJG().isEmpty()) {
	        			tJuHeCheWei.addOut("<br/>夜间价格：" + tJuHeCheWei.getWSTCJG());
	        		}
	        	}
	        	
	        	// 计次收费-大型车[示例：10元/次、19：30-07：30(10元/次)]
	        	if(ja.getJSONObject(i).has("JCSFA")) {
	        		tJuHeCheWei.setJCSFA(ja.getJSONObject(i).getString("JCSFA"));
	        		
	        		if(!tJuHeCheWei.getJCSFA().isEmpty()) {
	        			tJuHeCheWei.addOut("<br/>计次收费-大型车：" + tJuHeCheWei.getJCSFA());
	        		}
	        	}
	        	
	        	// 计次收费-小型车[示例：10元/次、19：30-07：30(10元/次)]
	        	if(ja.getJSONObject(i).has("JCSFB")) {
	        		tJuHeCheWei.setJCSFB(ja.getJSONObject(i).getString("JCSFB"));
	        		
	        		if(!tJuHeCheWei.getJCSFB().isEmpty()) {
	        			tJuHeCheWei.addOut("<br/>计次收费-小型车：" + tJuHeCheWei.getJCSFB());
	        		}
	        	}
	        	
	        	// 停车场图片
	        	if(ja.getJSONObject(i).has("CCTP")) {
	        		tJuHeCheWei.setCCTP(ja.getJSONObject(i).getString("CCTP"));
	        		
	        		if(!tJuHeCheWei.getCCTP().isEmpty()) {
	        			tJuHeCheWei.addOut("<br/>停车场图片：" + tJuHeCheWei.getCCTP());
	        		}
	        	}
	        	
	        	// 停车场坐标
	        	if(ja.getJSONObject(i).has("LOC")) {
	        		
	        		JSONObject tJSONObject = ja.getJSONObject(i).getJSONObject("LOC");
	        		
	        		String sLatitude = tJSONObject.getString("lat");
	        		String sLongitude =  tJSONObject.getString("lon");
	        		
	        		BaiduGeocoding mBaiduGeocoding = mBaiduAPI.GetBaiduGPS(3, sLatitude, sLongitude);
	        		if(mBaiduGeocoding == null) {
	        			continue;
	        		}
	        		
	        		tJuHeCheWei.setGPSLatitude(mBaiduGeocoding.getGPSLatitude());
	        		tJuHeCheWei.setGPSLongitude(mBaiduGeocoding.getGPSLongitude());
	        	} else {
	        		continue;
	        	}
	        	
	        	ListJuHeCheWei.add(tJuHeCheWei);
	        }
	        
	        //计算下次查询API的开始下标
	        nSkip += nPageTotal;
	        
	        //如果下一次查询的开始下标，已经超出了总数据量，则直接返回已提取的数据量
	        if(nSkip > nAllTotal) {
	        	return ListJuHeCheWei.size();
	        }
	        
    	}
    }
    
}
