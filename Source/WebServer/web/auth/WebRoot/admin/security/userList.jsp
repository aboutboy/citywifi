<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
    <head>
        <%@ include file="/include/meta.jsp"%>
    </head>
    
    <body>
	    您好：${user.userName} <a href="${pageContext.request.contextPath}/user.do?method=admin_logout">注销</a>
        <h3 align="left">用户列表</h3>
        <table border="0" width="100%" cellspacing="1" cellpadding="1" bgcolor="#CCCCCC">
            <thead>
                <tr>
                    <th>用户名</th>
                    <th>用户密码</th>
                    <th>用户等级</th>
                    <th>用户状态</th>
                    <th>注册时间</th>
                    <th>最近登录时间</th>
                    <th>登录次数</th>
                    <th>操作</th>
                </tr>
            </thead>
            <tbody>
<c:forEach var="item" items="${userlist}" varStatus="status">
  <c:set var="row" value="${status.index % 2 != 0 ? 'odd' : 'even'}"/>
                <tr class="${row}">
                    <td><div align="center">${item.userName}</div></td>
                    <td><div align="center">${item.password}</div></td>
                    
                    <td><div align="center">
                    	<c:if test="${item.level==0}">普通用户</c:if>
           				<c:if test="${item.level==1}">管理员</c:if >
           			</div></td>

           			<td><div align="center">
                    	<c:if test="${item.state==0}">正常</c:if>
           				<c:if test="${item.state==1}">待审核</c:if >
           			</div></td>

                    <td><div align="center">${item.regTime}</div></td>
                    <td><div align="center">${item.lastLogin}</div></td>
                    <td><div align="center">${item.hit} 次</div></td>
                    
                    <td><div align="center">
	                    <c:if test="${item.state==1||item.state==2}"><a href="${pageContext.request.contextPath}/admin.do?method=enable_user&userid=${item.userId}">启用</a></c:if>
	                    <c:if test="${item.state==0&&item.level==0}"><a href="${pageContext.request.contextPath}/admin.do?method=disable_user&userid=${item.userId}">禁用</a></c:if>

	                    <c:if test="${item.level==0}"><a href="${pageContext.request.contextPath}/admin.do?method=upgrade_user&userid=${item.userId}">升级</a></c:if>
	                    <c:if test="${item.level==1}"><a href="${pageContext.request.contextPath}/admin.do?method=demotion_user&userid=${item.userId}">降级</a></c:if>

	                    <c:if test="${item.level==0&&item.level==0}"><a href="${pageContext.request.contextPath}/admin.do?method=del_user&userid=${item.userId}">删除</a></c:if>
	                </div></td>
                </tr>
</c:forEach>
            </tbody>
        </table>
        <br />
        <!--%@ include file="/include/onlineUser.jsp"%-->
    </body>
</html>