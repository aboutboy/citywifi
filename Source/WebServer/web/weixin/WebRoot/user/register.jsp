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
	    } else if (document.f.password.value != document.f.confirmPassword.value) {
	        alert('两次输入的密码不同！');
	        document.f.confirmPassword.focus();
	        return false;
	    	}
	    return true;
		}
	</script>

	 <body>
        <h3 align="center">${mTitle}</h3>
          <fieldset>
            <legend>用户注册</legend>
            <form name="f" action="${pageContext.request.contextPath}/user.do?method=register" method="post" onsubmit="return beforeSubmit()">
                <div align="center">
                  <table>
                    <tbody>
                      <tr>
                        <td align="right">用户名：</td>
                        <td><input type="text" name="username" value="" /></td>
                        </tr>
                      
                      <tr>
                        <td align="right">密码：</td>
                        <td><input type="password" name="password" value="" /></td>
                        </tr>

					  <tr>
					  <td align="right">输入验证码：</td>
                		<td align="left" valign="middle"><input name="captcha" type="text" value="" size="4" maxlength="4" />
                		<img src="${ctx}/captcha.jpg" onclick="this.src='${pageContext.request.contextPath}/captcha.jpg?_sed=' + new Date().getTime();" title="点击变换图片" alt="点击变换图片" style="cursor:pointer;" />
                		</td>
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
        </fieldset>
        <p align="left">如果您已有账号，请点击: <a href="${pageContext.request.contextPath}/?method=login_web">返回登录</a></p>
    </body>
</html>