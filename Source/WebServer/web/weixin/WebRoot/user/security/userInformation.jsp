<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">

<html>
    <head>
		<%@ include file="include/meta.jsp"%>
    </head>
	
    <body>
        <h3 align="center">${mTitle}</h3>
          <fieldset>
            <legend>用户信息</legend>
                <div align="center">
                  <table>
                    <tbody>
                      <tr>
                        <td align="right">用户名：</td>
                        <td>${user.userName}</td>
                        </tr>

                       <tr>
                        <td align="right">用户等级：</td>
                        <td>
	                        <c:if test="${user.level==0}">普通用户</c:if>
           					<c:if test="${user.level==1}">管理员</c:if >
           				</td>
                       </tr>

                        <tr>
                        <td align="right">用户状态：</td>
                       <td>
                       		<c:if test="${user.state==0}">正常</c:if>
           					<c:if test="${user.state==1}">待审核</c:if >
           				</td>
                      </tr>
                      
                      <tr>
                        <td align="right"></td>
                      </tr>
                      
                      <tr>
                          <td align="right">注册时间：</td>
                          <td>${user.regTime}</td>
                      </tr>
                      
                      <tr>
                        <td align="right">最近登录时间：</td>
                        <td>${user.lastLogin}</td>
                      </tr>

                      <tr>
                        <td align="right">登录次数：</td>
                        <td>${user.hit} 次</td>
                      </tr>
                        
                      </tbody>
                    </table>
                </div>
                <p align="center"><font size="3" color="red">您已通过审核，可以正常上网了！</font></p>
        </fieldset>
        <p align="left">如果您需要退出,请点击: <a href="${pageContext.request.contextPath}/user.do?method=logout">注销</a></p>
    </body>
</html>