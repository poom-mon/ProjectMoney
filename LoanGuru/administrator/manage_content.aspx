<%@ Page Language="C#" AutoEventWireup="true" CodeFile="manage_content.aspx.cs" Inherits="administrator_manage_content" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
       manage content
       
    <div class="container">
        <table style="width: 90%;">
        <tr>
            <td>
               ประเภท
            </td>
            <td>
                 <select  class="form-control" id="ddlCreditType">
                    <option value="">เครดิต</option>
                    <option value="">บัตรกดเงินสด</option>
                    <option value="">สินเชื่อ</option>
                 </select>
            </td>
            
            <td>
              ชื่อเครดิต
            </td>
             <td>
               <input id="tbCreditname"  class="form-control" type="text" />
            </td>
        </tr> 
         
        <tr>
            <td>
                
            </td>
            <td>
                
            </td>
            <td>
              
            </td>
             <td>
                <input id="btn_serch" type="button" value="ค้นหา" />
            </td>
        </tr>  
    </table>  
  
    <link href="../css/bootstrap/bootstrap.min.css" rel="stylesheet" type="text/css" />  

    </div>
    </form>

</body>
</html>
