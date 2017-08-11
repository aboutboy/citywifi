<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">

<html>
<head>
	<%@ include file="/user/include/meta.jsp"%>
	
	<script type="text/javascript">
		function AddFavorite() {
   			try {
        		window.external.addFavorite("http://m.live186.com", "186生活网");
    		} catch (e) {
        		try {
            		window.sidebar.addPanel("http://m.live186.com", "186生活网");
        		} catch (e) {
            		alert("加入收藏失败，您可以尝试手工添加！");
            		return;
        		}
    		}
    		alert("已将首页添加进您的收藏夹！");
		}
    </script>
</head>
<body>

<div data-role="page" id="pageone" data-theme="c">
	<div data-role="header">
	<c:if test="${urlservlet!=null}">
		<a href="${urlservlet}?method=login" data-role="button" data-icon="check">我要上网</a>
	</c:if>
		<h1>${mTitle}</h1>
		<a href="javascript:AddFavorite();returnfalse;" data-role="button" data-icon="star" class="ui-btn-right" data-rel="dialog" >我要收藏</a>
	</div>
 	
 	<div data-role="navbar">

 	</div>
 
	<div data-role="content" data-theme="a">
		<ul data-role="listview">
		<c:if test="${pagenum==1}">
    		<c:forEach var="item" items="${tLoginVIPPlaceList}">
       			<li>
					<a href="tel:${item.placePhone}" data-rel="dialog" data-transition="slide">
        				<h2><span style="color:red">${item.spreadContent}</span></h2>
        				<p>
        					<span>${item.placeName}</span>
        				</p>
        				<p>地址: ${item.placeAddr}</p>
        				<span class="ui-li-count">电话预约</span>
        				</a>
        				
        				<c:choose>
							<c:when test="${item.redirectURI==\"#\"}">
								<a href="javascript:alert('我们正在整理该商家的详细资料！') ">商家信息</a>
							</c:when>
						
							<c:otherwise>
								<a href="${item.redirectURI}">商家信息</a>
							</c:otherwise>
						</c:choose>

      			</li>
    		</c:forEach>
    	</c:if>
    		<c:forEach var="item" items="${tOtherVIPPlaceList}">
       			<li>
					<a href="tel:${item.placePhone}" data-rel="dialog" data-transition="slide">
        				<h2><span style="color:red">${item.spreadContent}</span></h2>
        				<p>
        					<span>${item.placeName}</span>
        				</p>
        				<p>地址: ${item.placeAddr}</p>
        				<span class="ui-li-count">电话预约</span>
        				</a>
        				
        				<c:choose>
							<c:when test="${item.redirectURI==\"#\"}">
								<a href="javascript:alert('我们正在整理该商家的详细资料！') ">商家信息</a>
							</c:when>
						
							<c:otherwise>
								<a href="${item.redirectURI}">商家信息</a>
							</c:otherwise>
						</c:choose>
						
      			</li>
    		</c:forEach>
		</ul>
  </div>
    
  

  <div data-role="footer">
    <div data-role="navbar">
		<ul>
			<li><a href="${urlservlet}?pagenum=1" data-icon="home">首页</a></li>
			<c:choose>
			<c:when test="${pagenum>1}">
				<li><a href="${urlservlet}?pagenum=${pagenum-1}" data-icon="arrow-l">上一页</a></li>
			</c:when>
						
			<c:otherwise>
				<li><a href="javascript:alert('已经是第一页！') " data-icon="delete">上一页</a></li>
			</c:otherwise>
		</c:choose>
		
		<c:choose>
			<c:when test="${bsurplus>0}">
				<li><a href="${urlservlet}?pagenum=${pagenum+1}" data-icon="arrow-r">下一页</a></li>
			</c:when>
						
			<c:otherwise>
				<li><a href="javascript:alert('已经是最后一页！')" data-icon="delete">下一页</a></li>
			</c:otherwise>
		</c:choose>
        	<li><a href="tel:13072560581" data-icon="info">我要广告</a></li>
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
