<%@ Page Language="C#" AutoEventWireup="true" CodeFile="test_obj.aspx.cs" Inherits="test_test_obj" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <div class="progresss-container" id="divProgress" style="display:;">
        <img src="http://www.silkspan.com/images_new/loading/loading.gif" width="30px"height="30px">
        <span>Loading</span>
    </div> 
    <style>
        body {
          background-color:rgba(109,109,109,0.5);
        } 
        .progresss-container {
            background-color: #444;
            border-radius: 5px;
            position: fixed;
            top: 40%;
            left: 50%;
            margin-left: -25px;
            text-align: center;
            padding: 10px;
            z-index: 9999;
        }
        .progresss-container > span {
            display: block;
            color: #fff;
            padding-top: 5px;
        }
    </style> 
    </div>
    </form>
</body>
</html>
