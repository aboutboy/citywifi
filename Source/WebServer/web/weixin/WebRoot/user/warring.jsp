<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">

<html>
<head>
	<%@ include file="/user/include/meta.jsp"%>
	
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

<div data-role="page">
  <div data-role="header">
    <h1>${mHeader}</h1>
  </div>

  <div data-role="content">
    <p>${mContent}</p>
  </div>

  <div data-role="footer">
    <div data-role="navbar">
		<ul>
        	<li><a href="tel:13072560581" data-icon="info">联系我们</a></li>
      	</ul>
    </div>
  </div>
  
  <p align="center" style="font-size: 12px;margin:7px">南京宏信一网信息科技有限公司</p>
  <p align="center" style="font-size: 12px;margin:0px">苏ICP备14019686号</p>
</div>

</div>

</body>
</html>
