<%@ Page Title="" Language="C#" MasterPageFile="~/administrator/Master_Admin.master" AutoEventWireup="true" CodeFile="search_credit.aspx.cs" Inherits="administrator_Default" %>

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
               ประเภท
            </td>
            <td>
                 <select  class="form-control" id="ddlCreditType">
                    <option value="1">เครดิต</option>
                    <option value="2">บัตรกดเงินสด</option>
                    <option value="3">สินเชื่อ</option>
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
                            <th>ลำดับที่</th>
							<th>ชื่อบัตรเครดิต</th>
							<th>ธนาคาร</th> 
                            <th>จัดการ</th> 
						</tr>
					</thead>
					   <tbody id="tbSearchCredit">
                       
						</tbody>
					</table>
					
				</div>  
			
		 </div>   
    </div>
      
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="footer" Runat="Server"> 
    <script src="../js/administrator/search_credit.js"></script>
    
</asp:Content>


