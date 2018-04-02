<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2018/3/29
  Time: 20:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<script type="text/javascript" src="WEB-INF/js/jquery-3.2.1.js"></script>
<script type="text/javascript">
    $("#username").blur(function() {
        $(".namehide").hide();
        var data = {
            username : $("#username").val()
        }
        $.ajax({
            type : "POST",
            data : data,
            url : "registerUser",
            dataType :"json",
            success : function(msg) {
                $(".namehide").show();
                if (msg.readState=="success") {
                    $(".namehide").html("用户名可以使用")
                }
                if(msg.readState == "error"){
                    $(".namehide").html("用户已被注册，请重新输入")
                }
            },
            error: function (){
                alert("emmmm")
            }
        });
    })
</script>
<body>
<center>
    <form action="index" method="post">
        <table border="1" bordercolor="red" cellspacing="0" bgcolor="yellow">
            <h1><b>管理员登陆</b></h1>
            <hr/>
            <tr>
                <td>账号:</td>
                <td><input type="text" name="username" id="username"/><font class="namehide" color="red">${error}</font></td>
            </tr>

            <br>
            <tr>
                <td>密码:</td>
                <td><input type="text" name="password" /></td>
            </tr>
            <tr>
                <td colspan="2" align="center"><input type="submit" value="提交"/></td>
            </tr>
        </table>
    </form>
</center>
</body>
</html>
