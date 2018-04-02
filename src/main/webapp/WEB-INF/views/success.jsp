<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2018/3/30
  Time: 11:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <title>Title</title>
    <script language="javascript">
        function checkUser(){
            var username=$("#username").val();
            alert(username);
            $.ajax({
                url:"register",
                type:"post",
                data:{"username":username},
                dataType:"json",
                success:function(data){
                    if (data!=null ) {
                        $("#userSpan").text("用户名已存在");
                        $("#username").val('');
                    }else if(data==null && username !=''){
                        $("#userSpan").text("用户名可用");
                    }
                }
            });

        }
    </script>
</head>
<body>
<center>
         <form action="" method="post">
             <table>
                 <caption>注册的页面</caption>
                 <tr>
                     <td>账号：</td>
                     <td>
                         <input type="text" name="username" id="username" onblur="checkUser()"/>
                         <span id="userSpan"></span>
                 </tr>
                 <tr>
                     <td>密码：</td>
                     <td><input type="password" name="password"/></td>
                 </tr>
                 <tr>
                     <td>姓名：</td>
                     <td><input type="text" name="username"/></td>
                 </tr>
                 <tr>
                     <td>性别：</td>
                     <td><input type="text" name="sex"/></td>
                 </tr>
                 <tr>
                     <td></td>
                     <td>
                         <input type="submit" value="注册">
                         <input type="reset" value="重置">
                     </td>
                 </tr>
             </table>
         </form>
     </center>
</body>
</html>
