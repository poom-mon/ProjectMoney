<%@ Page Language="C#" AutoEventWireup="true" CodeFile="serch_content.aspx.cs" Inherits="administrator_serch_content" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <br />
    <br /> 

    
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

    </div>
    <div>
     
        <div class="widget stacked widget-table action-table">
    				
				<div class="widget-header">
					<i class="icon-th-list"></i>
					<h3>Table</h3>
				</div> <!-- /widget-header -->
				
				<div class="widget-content"> 
				<table class="table table-striped table-bordered">
					<thead>
						<tr>
							<th>Engine</th>
							<th>Browser</th> 
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>Trident</td>
							<td>Internet Explorer 4.0</td> 
						</tr> 
						</tbody>
					</table>
					
				</div> <!-- /widget-content -->
			
			</div>  
        
    </div>
    <link href="../css/bootstrap/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="../css/table_model.css" rel="stylesheet" type="text/css" />
    </form>  

</body>
</html>
