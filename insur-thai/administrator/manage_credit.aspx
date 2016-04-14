<%@ Page Title="" Language="C#" MasterPageFile="~/administrator/Master_Admin.master" AutoEventWireup="true" CodeFile="manage_credit.aspx.cs" Inherits="administrator_Default" %>

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
           <select class="form-control" id="ddlCreditType">
                    <option value="1">เครดิต</option>
                    <option value="2">บัตรกดเงินสด</option>
                    <option value="3">สินเชื่อ</option>
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
           url อ้างอิงที่มา
        </td>
        <td> 
            <textarea id="taRefertb" cols="50" rows="2"></textarea>
        </td>
        
        <td>
            
           ค่าทำเนียม
        </td>
         <td>
        <input id="tbFee" class="form-control" type="text" />
        </td>
    </tr> 


    <tr>
        <td>
          status
        </td>
        <td> 
            <select id="ddlStatus" class="form-control">
                        <option value="Y">active</option>
                         <option value="N">none active</option>
                    </select>
        </td>
        
        <td>
            
        </td>
         <td>
        
        </td>
    </tr> 


     <tr>
        <td>
          logo ใหญ่
        </td>
        <td> 
            <input id="tbBigLogo" class="form-control" type="text" />
        </td>
        
        <td> 
           logo เล็ก
        </td>
         <td>
           <input id="tbSmallLogo" class="form-control" type="text" />
        </td>
    </tr> 

         <tr>
            <td colspan="4">
                <input id="Button2" style="margin-top: 2px;" class="btn btn-link" value="[view path]" onclick="javascript: fncUpload();"
                     type="button" />

                 <div style="display: none;">
                    <textarea cols="100" id="editor1" name="editor1" rows="10">&lt;p&gt;This is some &lt;strong&gt;sample text&lt;/strong&gt;. You are using &lt;a href="http://ckeditor.com/"&gt;CKEditor&lt;/a&gt;.&lt;/p&gt;</textarea>
                </div>
                <div id="eMessage">
                </div>
            </td>
             </tr>

    <tr>
        <td colspan="4">
<input id="Button1" type="button" value="button" />
            <table style="width: 100%;">
                <tr>
                    
                    <td>no.</td>
                    <td>filepath</td>
                    <td>filename</td>
                    <td>fileDescript</td>
                    <td>manage</td>
                </tr> 
                <tr id="trBodypath">

                </tr>
            </table>

        </td>
    </tr>
     <tr>
        <td>
          link อ้างอิง 1
        </td> 
         <td  colspan="3">
           <input id="Text2" class="form-control" type="text" />
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
    <script src="../js/jquery/jquery.1.11.0.min.js" type="text/javascript"></script>
    <script src="../js/textEditor/ckeditor/ckeditor.js" type="text/javascript"></script>
    <script src="../js/textEditor/ckfinder/ckfinder.js" type="text/javascript"></script> 
    <script src="../js/cHelper.js"></script> 
    <script src="../js/administrator/manage_credit.js"></script>
</asp:Content>

