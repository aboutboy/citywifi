<%@ page contentType="text/html; charset=UTF-8" import="anni.domain.JuHeCheWei,java.util.List,java.util.Iterator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">

<html>  
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />  
	<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />  
	<style type="text/css">  
		body, html,#l-map {width: 100%;height: 100%;overflow: hidden;hidden;margin:0;}  
	</style>  
	<script type="text/javascript" src="http://api.map.baidu.com/api?type=quick&ak=1UHcohK7qzLGrexF3elKk61p&v=1.0"></script>  
	<title>在线地图</title>  
	
	<script type="text/javascript">
		function onBridgeReady(){
			WeixinJSBridge.call('hideOptionMenu');
		}

		if (typeof WeixinJSBridge == "undefined"){
    		if( document.addEventListener ){
				document.addEventListener('WeixinJSBridgeReady', onBridgeReady, false);
			}else if (document.attachEvent){
				document.attachEvent('WeixinJSBridgeReady', onBridgeReady); 
				document.attachEvent('onWeixinJSBridgeReady', onBridgeReady);
			}
		}else{
    		onBridgeReady();
		}
	</script>
</head>  
<body>  
<div id="l-map"></div>  
</body>
</html>
<script type="text/javascript">  
var map = new BMap.Map("l-map");

//创建所在点标示
function addLocation(latitude, longitude, proportion) {
	//创建坐标
	var point = new BMap.Point(longitude, latitude);

	//创建图标
	var myIcon = new BMap.Icon("http://api.map.baidu.com/mapCard/img/location.gif",   
	new BMap.Size(14, 23), {
		// 指定定位位置
		// 当标注显示在地图上时，其所指向的地理位置距离图标左上      
		// 角各偏移7像素和25像素。您可以看到在本例中该位置即是     
		// 图标中央下端的尖角位置。      
		anchor: new BMap.Size(7, 25),        
	});

	// 创建标注
	var marker = new BMap.Marker(point, {icon: myIcon});
	
	// 将标注添加到地图中
	map.addOverlay(marker);
	
	// 初始化地图，设置中心点坐标和地图级别
	map.centerAndZoom(point, proportion);
	
	var zoomControl=new BMap.ZoomControl();  
	map.addControl(zoomControl);//添加缩放控件  
	var scaleControl=new BMap.ScaleControl();  
	map.addControl(scaleControl);//添加比例尺控件  
}

//创建VIP商家位置
function addCheWei(latitude, longitude, scontent)
{
	//创建坐标
	var point = new BMap.Point(longitude, latitude);
	
	var content = '<p style="font-size: 15px;margin:0px;">' + scontent + '</p>';
	
	// 创建标注
	var marker = new BMap.Marker(point);
	marker.addEventListener("click", function(){    
		var opts = {
 			width : 170,     	// 信息窗口宽度
 			height: 90,     	// 信息窗口高度
		};
		
		// 创建信息窗口对象
		var infoWindow = new BMap.InfoWindow(content, opts);
		
		// 打开信息窗口
		map.openInfoWindow(infoWindow, point);
	});
	
	// 将标注添加到地图中
	map.addOverlay(marker);
}

addLocation(<%=session.getAttribute("GPSLatitude")%>, <%=session.getAttribute("GPSLongitude")%>, 17);
</script>

<%out.println("<script language='javascript'> ");%>
<%
	List<JuHeCheWei> tListJuHeCheWei=(List<JuHeCheWei>)request.getAttribute("ListJuHeCheWei");
	Iterator<JuHeCheWei> JuHeCheWeiIter=tListJuHeCheWei.iterator();
	while(JuHeCheWeiIter.hasNext()) {
		JuHeCheWei tJuHeCheWei = (JuHeCheWei)JuHeCheWeiIter.next();
		out.println("addCheWei(" + tJuHeCheWei.getGPSLatitude() + ", " + tJuHeCheWei.getGPSLongitude()
		+ ", \"" + tJuHeCheWei.getOut() + "\""
		+ ");");
	}
 %>
<%out.println("</script> ");%>