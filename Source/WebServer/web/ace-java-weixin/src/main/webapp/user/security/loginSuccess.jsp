<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">

<html>
<head>
	<%@ include file="/user/include/meta.jsp"%>
</head>
<body>

<div data-role="page" id="pageone">
	<div data-role="header">
		<h1>${mTitle}</h1>
	</div>
 	
 	<div data-role="navbar">

 	</div>
 
	<div data-role="content">
		<c:choose>
			<c:when test="${sLevelRate==\"VIP\"}">
				<p>尊敬的VIP会员： 您已认证成功，享受不限带宽免费WiFi服务！</p>
			</c:when>

			<c:otherwise>
				<p>尊敬的用户： 您已认证成功，非VIP会员带宽限制为0.5M！</p>
				<p></p>
				<p>微信搜索关注公众服务号【186生活网】，即可成为VIP会员，享受国内不限带宽免费WiFi服务！</p>
				<p>点击：<a href="http://weixin.qq.com/r/73WYgGzEIzFcrSjj9yD9">打开微信</a></p>
			</c:otherwise>
		</c:choose>
  	</div>

  <div data-role="footer">
    <div data-role="navbar">
		<ul>
        	<li><a href="#" data-role="button" data-icon="back" data-rel="back">返回首页</a></li>
        	<li><a href="tel:13072560581" data-icon="info">联系我们</a></li>
      	</ul>
    </div>
  </div>
  
  <p align="center" style="font-size: 12px;margin:7px">南京宏信一网信息科技有限公司</p>
  <p align="center" style="font-size: 12px;margin:0px">苏ICP备14019686号</p>
</div>

</div>

<div data-role="page" id="searchpage">

  <div data-role="header">
    <h1>搜索商家</h1>
  </div>

  <div data-role="content">
    <p>功能开发中</p>
  </div>
  
  <div data-role="footer" class="ui-btn">
 	<p></p>
  </div>

</div>

</body>
</html>
