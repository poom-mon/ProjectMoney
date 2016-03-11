<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="administrator_login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/bootstrap/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="../css/Admin/login.css" rel="stylesheet" type="text/css" />

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
                        <button class="btn btn-lg btn-success btn-block btn-signin" type="submit">Login</button>
                    </form><!-- /form --> 
                </div><!-- /card-container -->
            </div><!-- /container -->

    </div>
    </form>

    <script src="../js/bootstrap/bootstrap.min.js" type="text/javascript"></script>
    <script>
        function fncChkLog() {
            callAjaxAsyFailData()
            var url= "login.aspx/checkLog
            callAjaxAsyFailData({username : "1234"  ,password:"123333"}, url, 
                function(){
            
                }
            )

        }
    </script>
</body>
</html>
