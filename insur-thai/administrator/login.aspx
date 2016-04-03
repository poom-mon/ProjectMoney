<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="administrator_login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title> 
    <link href="../css/bootstrap.min.css" rel="stylesheet" />
    <link href="../css/Admin/login.css" rel="stylesheet" />



</head>
<body>
    <form id="form1" runat="server">
    <div>  
            <div class="container">
                <div class="card card-container">
                     <img id="profile-img" class="profile-img-card" src="//ssl.gstatic.com/accounts/ui/avatar_2x.png" />
                    <p id="profile-name" class="profile-name-card"></p>
                    <form class="form-signin">
                        <span id="reauth-email" class="reauth-email"></span>
                        <input type="text" id="tbUsername" class="form-control" placeholder="Username" required autofocus>
                        <input type="password" id="tbPassword" class="form-control" placeholder="password" required> 
                   
                    <input id="btnLogin" type="button" class="btn btn-lg btn-success btn-block btn-signin" value="login" />
                     

                    </form><!-- /form --> 
                </div><!-- /card-container -->
            </div><!-- /container -->

    </div>
    </form> 

    <script src="../js/jquery/jquery.1.11.0.min.js"></script>
    <script src="../js/cHelper.js"></script> 

    <script>
        $(function () {
            $("#btnLogin").on("click", function () {
                var _userName = $("#tbUsername").val()
                var _pass = $("#tbPassword").val()
                var data = { username: _userName, password: _pass };
                var obj = callAjaxAsyFailObj(data, "login.aspx/checkLogin", function (o) {
                    if (o)
                        window.location.href = "main.aspx";
                    else
                        alert("user/password ไม่ถูกต้อง");
                })
            });
        }); 

    </script>
</body>
</html>
