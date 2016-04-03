<%@ Page Title="" Language="C#" MasterPageFile="~/administrator/Master_Admin.master" AutoEventWireup="true" CodeFile="manageuser.aspx.cs" Inherits="administrator_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .tbLayout >tbody >tr > td,th
        {
          padding:5px;    
        }
    </style> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

 แก้ไข้อมูล


<table  class="tbLayout" style="width:90%"> 
    <tr>
        <td>
           ชื่อ
        </td>
        <td>
          <input id="tbName" class="form-control" type="text" /> 
        </td>
        
        <td>
            
        </td>
         <td>
           
        </td>
    </tr>  


     <tr>
        <td>
          สกุล
        </td>
        <td>
           <input id="tbLname" class="form-control" type="text" /> 
        </td>
        
        <td>
             
        </td>
         <td>
            
        </td>
    </tr>


     <tr>
        <td>
         username
        </td>
        <td>
              <input id="tbUsername" class="form-control" type="text" /> 
        </td>
        
        <td> 
        </td>
         <td>
               
        </td>
    </tr> 
     

     <tr>
        <td>
         pasword
        </td>
        <td>
              <input id="tbPassword" class="form-control" type="text" /> 
        </td>
        
        <td>
              
        </td>
         <td> 
        </td>
    </tr> 


    <tr>
        <td colspan="3">
            <input id="btnSave" type="button" class="btn btn-primary" value="บันทึกข้อมูล" />
            <input id="btnCancel" type="button"  class="btn btn-warning" value="ยกเลิก" />
        </td>  
    </tr> 

</table>



</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" Runat="Server">
</asp:Content>

