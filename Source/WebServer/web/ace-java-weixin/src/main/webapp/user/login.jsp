<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">

<html>
    <head>
		<%@ include file="include/meta.jsp"%>
    </head>
	
	<script type="text/javascript">
		function beforeSubmit() {
			if (document.f.username.value == '') {
				alert('请填写用户名！');
					document.f.username.focus();
					return false;
				} else if (document.f.password.value == '') {
					alert('请填写密码！');
					document.f.password.focus();
					return false;
				}else if (document.f.login_reason.value == '') {
					alert('请认真填写上网理由!');
					document.f.login_reason.focus();
					return false;
				}
				return true;
		}
	</script>
	
    <body>
        <h3 align="center">${mTitle}</h3>
          <fieldset>
            <legend>注册用户登录</legend>
            <form name="f" action="${pageContext.request.contextPath}/user.do?method=login" method="post" onsubmit="return beforeSubmit()">
                <div align="center">
                  <table>
                    <tbody>
                      <tr>
                        <td align="right">用户名：</td>
                        <td><input type="text" name="username" value="" style="width: 160px; "/></td>
                        </tr>
                      
                      <tr>
                        <td align="right">密码：</td>
                        <td><input type="password" name="password" value="" style="width: 160px; "/></td>
                        </tr>
                      
                      <tr>
                        <td align="right">上网理由：</td>
                        <td><input type="text" name="login_reason" value="" style="height: 70px; width: 160px"/></td>
                        </tr>

                      <tr>
                        <td align="right">Auth_Server_IP：</td>
                        <td>${auth_server_ip}</td>
                        </tr>

                      <tr>
                        <td align="right">Auth_Client_IP：</td>
                        <td>${auth_client_ip}</td>
                        </tr>
                        
                      <tr>
                        <td align="right">Remote_IP：</td>
                        <td>${remote_port}</td>
                        </tr>
                      
                      <tr>
                        <td align="center" colspan="2">
                          <input type="submit" value="提交" />
                          <input type="reset" value="重置" />
                          </td>
                        </tr>
                      </tbody>
                    </table>
                  
                </div>
            </form>
            
            <p align="center">${error}</p>
            <p align="center"><font size="3" color="red">注意事项: 上网理由会提交领导,请认真填写!</font></p>
        </fieldset>
        <p align="left">如果您还没有注册,请点击: <a href="${pageContext.request.contextPath}/user/register.jsp">注册</a></p>
        <p align="left">您也可以向管理员索要临时密码，请点击: <a href="${pageContext.request.contextPath}/user/passlogin.jsp">临时密码登陆</a></p>
    </body>
</html>