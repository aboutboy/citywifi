<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">

<html>
	<head>
		<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>186生活网</title>
		<style type="text/css">
			html{height:100%}
			body{height:100%;margin:0px;padding:0px}
			#container{height:100%}
		</style>
		<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=1UHcohK7qzLGrexF3elKk61p"></script>
</head>
<body>
	<div id="container"></div>

<script type="text/javascript">

// 百度地图API功能
var map = new BMap.Map("container");     				// 创建地图实例
var point = new BMap.Point(118.8718567,31.9490547);  		// 创建点坐标
map.centerAndZoom(point, 16);                 			// 初始化地图，设置中心点坐标和地图级别
map.enableScrollWheelZoom();
map.addControl(new BMap.NavigationControl());  			//添加默认缩放平移控件

var myIcon = new BMap.Icon("http://api.map.baidu.com/mapCard/img/location.gif",   
      new BMap.Size(14, 23), {
       // 指定定位位置。     
       // 当标注显示在地图上时，其所指向的地理位置距离图标左上      
       // 角各偏移7像素和25像素。您可以看到在本例中该位置即是     
       // 图标中央下端的尖角位置。      
       anchor: new BMap.Size(7, 25),        
      });
      
var marker1 = new BMap.Marker(point, {icon: myIcon});        	// 创建标注

var customLayer;
function addCustomLayer(keyword) {
    if (customLayer) {
        map.removeTileLayer(customLayer);
    }
    customLayer=new BMap.CustomLayer({
        geotableId: 69817,
        q: '', //检索关键字
        tags: '', //空格分隔的多字符串
        filter: '' //过滤条件,参考http://developer.baidu.com/map/lbs-geosearch.htm#.search.nearby
    });
    
    map.addOverlay(marker1);                     	// 将当前位置添加到地图中
    map.addTileLayer(customLayer);
    customLayer.addEventListener('hotspotclick',callback);
}
addCustomLayer();

function callback(e)//单击热点图层
{
        var customPoi = e.customPoi;//poi的默认字段
        var contentPoi=e.content;//poi的自定义字段
        var content = '<p style="width:280px;margin:0;line-height:20px;">地址: ' + customPoi.address + '<br/>内容: '+contentPoi.spread_content+'</p>';
        var point = new BMap.Point(customPoi.point.lng, customPoi.point.lat);
        
        var opts = {
 		width : 150,     			// 信息窗口宽度
 		height: 50,     			// 信息窗口高度
 		title : customPoi.title, 	// 信息窗口标题
 		enableSendToPhone: false, 	//是否显示发送到手机按钮
 		enableAutoPan : true		//自动平移
	}    
	var infoWindow = new BMap.InfoWindow(content, opts);  	// 创建信息窗口对象    
	map.openInfoWindow(infoWindow, point);      			// 打开信息窗口
}

document.getElementById("open").onclick = function(){
	addCustomLayer();
};

document.getElementById("close").onclick = function(){
	if (customLayer) {
        map.removeTileLayer(customLayer);
    }
};

</script>
</body>
</html>