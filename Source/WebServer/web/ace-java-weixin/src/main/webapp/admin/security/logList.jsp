<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
    <head>
        <%@ include file="include/meta.jsp"%>
    </head>
    
    <body>
	    您好：${user.userName} <a href="${ctx}/user.do?method=admin_logout">注销</a>
        <h3 align="left">用户列表</h3>
        <table border="0" width="100%" cellspacing="1" cellpadding="1" bgcolor="#CCCCCC">
            <thead>
                <tr>
                    <th>用户名</th>
                    <th>登录时间</th>
                    <th>登陆MAC</th>
                    <th>登陆理由</th>
                </tr>
            </thead>
            <tbody>
<c:forEach var="item" items="${loglist}" varStatus="status">
  <c:set var="row" value="${status.index % 2 != 0 ? 'odd' : 'even'}"/>
                <tr class="${row}">
                    <td><div align="center">${item.userName}</div></td>
                	<td><div align="center">${item.loginTime}</div></td>
                	<td><div align="center">${item.loginMac}</div></td>
                	<td><div align="center">${item.loginReason}</div></td>
                </tr>
</c:forEach>
            </tbody>
        </table>
        <br />
        <!--%@ include file="/include/onlineUser.jsp"%-->
    </body>
</html>