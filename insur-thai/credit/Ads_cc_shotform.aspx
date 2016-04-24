<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Ads_cc_shotform.aspx.cs" Inherits="credit_Ads_cc_shotform" %>

<%@ Register src="form/wuc_creditForm_plugin.ascx" tagname="wuc_creditForm_plugin" tagprefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <!-- Bootstrap Core CSS -->
    <link rel="stylesheet" href="<%= this.ResolveClientUrl("~/css/bootstrap.min.css") %>" type="text/css">  
   <%-- <link rel="stylesheet" href="<%= this.ResolveClientUrl("~/font-awesome/css/font-awesome.min.css") %>" type="text/css">  
    <!-- Plugin CSS -->
    <link rel="stylesheet" href="<%= this.ResolveClientUrl("~/css/animate.min.css") %>" type="text/css"> 
    <!-- Custom CSS -->--%>
   <link rel="stylesheet" href="<%= this.ResolveClientUrl("~/css/main.css") %>" type="text/css"> 

  <link rel="stylesheet" href="<%= this.ResolveClientUrl("~/css/Pvalid.css") %>" type="text/css"> 

    <link rel="stylesheet" href="<%= this.ResolveClientUrl("~/css/email/mailtip.css") %>" type="text/css"> 
  
    
        <link rel="stylesheet" href="<%= this.ResolveClientUrl("~/css/datetime/date.css") %>" type="text/css">  


</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <uc1:wuc_creditForm_plugin ID="wuc_creditForm_plugin1" runat="server" />
    
    </div>
    </form> 

     <script src="<%= this.ResolveClientUrl("~/js/jquery/jquery.1.11.0.min.js") %>" type="text/javascript"></script>    
    <script src="<%= this.ResolveClientUrl("~/js/cHelper.js") %>"></script>  

    <script src="<%= this.ResolveClientUrl("~/js/PValid.js") %>"></script>  
     <script src="<%= this.ResolveClientUrl("~/js/email/jquery.mailtip.min.js") %>"></script>  
    
     

    <script src="<%= this.ResolveClientUrl("~/js/datetime/bootstrap-datepicker.js") %>"></script>  
     <script src="<%= this.ResolveClientUrl("~/js/datetime/bootstrap-datepicker.js") %>"></script> 
     <script src="<%= this.ResolveClientUrl("~/js/credit/shot_formPq.js") %>"></script> 
      

    <script> 
        $(window).load(function () {
            $("[type='email']").mailtip();
        });
    </script>

 </body>
</html>
