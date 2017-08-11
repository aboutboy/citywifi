<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">

<html>
    <head>
		<%@ include file="/include/meta.jsp"%>
    </head>
	
	<script type="text/javascript">
		function beforeSubmit() {
			if(document.f.password.value == '') {
				alert('请填写电子券密码！');
				document.f.password.focus();
				return false;
			}
			return true;
		}
	</script>
	
    <body>
        <h3 align="center">${mTitle}</h3>
          <fieldset>
            <legend>临时密码登录</legend>
            <form name="f" action="${pageContext.request.contextPath}/user.do?method=passlogin" method="post" onsubmit="return beforeSubmit()">
                <div align="center">
                  <table>
                    <tbody>
                      
                      <tr>
                        <td align="right">临时密码：</td>
                        <td><input type="password" name="password" value="" style="width: 160px; "/></td>
                        </tr>

                      <!-- <tr>
                        <td align="right">Router IP：</td>
                        <td>${RouterIP}</td>
                        </tr> -->

                      <!-- <tr>
                        <td align="right">MAC：</td>
                        <td>${LoginMac}</td>
                        </tr> -->
                      
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