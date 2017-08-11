<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<fieldset>
  <legend>在线用户</legend>
  <div>
    <c:forEach var="item" items="${onlineUserList}">
    &nbsp;${item}
    </c:forEach>
  </div>
</fieldset>
