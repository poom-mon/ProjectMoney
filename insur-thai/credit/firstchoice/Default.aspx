<%@ Page Title="กรุงศรีเฟิร์สช้อยส์ | สมัครบัตร" Language="C#" MasterPageFile="~/Ms_Fistchoice.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default2" %>
   
 
<%@ Register src="../form/wuc_th_credit2.ascx" tagname="wuc_th_credit2" tagprefix="uc3" %>
  
  

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cptMain" Runat="Server">  
    <uc3:wuc_th_credit2 ID="wuc_th_credit21" runat="server" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cptFooter" Runat="Server">
      

    <script src="../../js/PValid.js"></script>
    <link href="../../css/datetime/date.css" rel="stylesheet" />
    <script src="../../js/datetime/bootstrap-datepicker.js" type="text/javascript"></script>
    <script src="../../js/credit/formpq_thcredit2.js"></script> 

</asp:Content>
 