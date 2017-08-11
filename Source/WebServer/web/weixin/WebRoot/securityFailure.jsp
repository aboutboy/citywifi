<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
    <head>
        <%@ include file="include/meta.jsp"%>
    </head>
    <body>
        <h3>禁止访问,您没有权限!</h3>
        <a href="${pageContext.request.contextPath}/user/register.jsp">立即注册</a> |
        <a href="${pageContext.request.contextPath}/user/login.jsp">立即登录</a>
    </body>
</html>