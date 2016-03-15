<%@ Page Title="" Language="C#" MasterPageFile="~/administrator/Master_Admin.master" AutoEventWireup="true" CodeFile="manageCredit.aspx.cs" Inherits="administrator_Default" %>

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
           ธนาคาร
        </td>
        <td>
            <select class="form-control" id="ddl_bank">
               <option value="kasikorn">kasikorn</option>
            </select>
        </td>
        
        <td>
            ชื่อบัตร
        </td>
         <td>
            <input id="tbCard" class="form-control" type="text" /> 
        </td>
    </tr>  

     <tr>
        <td>
          ประเภทบัตร
        </td>
        <td>
            <select class="form-control" id="Select1">
               <option value="kasikorn">kasikorn</option>
            </select>
        </td>
        
        <td>
              
        </td>
         <td>
             
        </td>
    </tr> 


    <tr>
        <td>
           วงเงินสูงสุด
        </td>
        <td>
            <input id="tbAmount" class="form-control" type="text" /> 
        </td>
        
        <td>
            อัตราดอกเบี้ย
        </td>
         <td>
            <input id="tbSalary" class="form-control" type="text" /> 
        </td>
    </tr> 



    <tr>
        <td>
           จุดเด่นของ ผลิตภัณฑ์
        </td>
        <td> 
            <textarea id="taProduct" cols="50" rows="2"></textarea>
        </td>
        
        <td>
           โปรโมชั่น
        </td>
         <td>
           <textarea id="taPromotion" cols="50" rows="2"></textarea>
        </td>
    </tr> 


    <tr>
        <td>
           เงือนไข
        </td>
        <td> 
            <textarea id="taCondition" cols="50" rows="2"></textarea>
        </td>
        
        <td>
           
        </td>
         <td>
       
        </td>
    </tr> 



    <tr>
        <td>
           upload logo
        </td>
        <td> 
             logo..
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

