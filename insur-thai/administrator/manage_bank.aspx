﻿<%@ Page Title="" Language="C#" MasterPageFile="~/administrator/Master_Admin.master" AutoEventWireup="true" CodeFile="manage_bank.aspx.cs" Inherits="administrator_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .tbLayout > tbody > tr > td, th {
            padding: 5px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    แก้ไข้อมูล

    <table class="tbLayout" style="width: 90%">
        <tr>
            <td>ธนาคาร
            </td>
            <td>
                <input id="tbBank" class="form-control" type="text" />
            </td>

            <td> 
            </td>
            <td>
                 
            </td>
        </tr>

        <tr>
            <td> status
            </td>
            <td> 
                    <select id="ddlStatus" class="form-control">
                        <option value="Y">active</option>
                         <option value="N">none active</option>
                    </select>
            </td>

            <td></td>
            <td></td>
        </tr>

        <tr>
            <td>โลโก้ธนาคาร
            </td>
            <td>
                 <input id="tbBankPath" class="form-control" type="text" />
            </td>

            <td></td>
            <td></td>
        </tr>
        <tr>
            <td>ImagePath
            </td>
            <td>
                 
                 <input id="Button2" style="margin-top: 2px;" class="btn btn-link" value="[view path]" onclick="javascript: fncUpload();"
                     type="button" />

            </td>

            <td></td>
            <td></td>
        </tr>

        
         

         <tr>
                <td colspan="3">
                    <input id="btnSave" type="button" class="btn btn-primary" value="บันทึกข้อมูล" />
                    <input id="btnCancel" type="button"  class="btn btn-warning" value="ยกเลิก" />
                </td>  
            </tr> 


 
         

    </table>

    <div style="display: none;">
        <textarea cols="100" id="editor1" name="editor1" rows="10">&lt;p&gt;This is some &lt;strong&gt;sample text&lt;/strong&gt;. You are using &lt;a href="http://ckeditor.com/"&gt;CKEditor&lt;/a&gt;.&lt;/p&gt;</textarea>
    </div>
    <div id="eMessage">
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="Server">

    <script src="../js/jquery/jquery.1.11.0.min.js" type="text/javascript"></script>
    <script src="../js/textEditor/ckeditor/ckeditor.js" type="text/javascript"></script>
    <script src="../js/textEditor/ckfinder/ckfinder.js" type="text/javascript"></script> 
    <script src="../js/cHelper.js"></script>
    <script src="../js/administrator/manage_bank.js"></script>

</asp:Content>