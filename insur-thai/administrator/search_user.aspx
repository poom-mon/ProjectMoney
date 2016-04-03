<%@ Page Title="" Language="C#" MasterPageFile="~/administrator/Master_Admin.master" AutoEventWireup="true" CodeFile="search_user.aspx.cs" Inherits="administrator_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style>
    .tbLayout >tbody >tr > td,th
    {
      padding:5px;    
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

ค้นหาข้อมูล
<br /> 
    
    <div class="container">
        <table  class="tbLayout" style="width: 90%;margin:10px;">
        <tr>
            <td>
               ชื่อ
            </td>
            <td>
                 <input id="tbname"  class="form-control" type="text" />
            </td>
            
            <td>
              สกุล
            </td>
             <td>
               <input id="tblname"  class="form-control" type="text" />
            </td>
        </tr>  
        <tr> 
            <td colspan="4"  > 
                 <input id="btn_serch" type="button" class="btn btn-default" value="ค้นหา" /> 
                 <input id="btnAdd" type="button"   class="btn btn-default" value="เพิ่มข้อมูล" />
             </td>
        </tr> 


    </table>

    </div> 
    <div>   
     
        <div class="widget stacked widget-table action-table" style="margin:10px;">   
				<div class="widget-content"> 
				<table class="table table-striped table-bordered">
					<thead>
						<tr>
							<th>ชื่อ</th>
							<th>สกุล</th>  
                            <th>จัดการ</th>  
						</tr>
					</thead>
					<tbody>
                     <% for (int i = 0; i < 20; i++)
                        { %>
						<tr>
							<td>1</td>
							<td>1</td> 
                            <td> 
                                <a type="button" class="btn btn-link">แก้ไข</a>
                                <a type="button" class="btn btn-link">ลบ</a>
                            </td> 
						</tr> 
                        <%} %>

						</tbody>
					</table>
					
				</div>  
			
		 </div>   
    </div>
     
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="footer" Runat="Server"> 

    <script>

        $("#btn_serch").on("click", function () {
            console.log("search");
        });
        $("#btnAdd").on("click", function () {
            console.log("create");
            window.location.href = "manageuser.aspx";
        }); 
    
    </script> 
</asp:Content>


