<%@ Page Title="" Language="C#" MasterPageFile="~/MS_Main.master" AutoEventWireup="true" CodeFile="Detail.aspx.cs" Inherits="Default2" %>

<%@ Register src="../form/wuc_ThCreditCenter.ascx" tagname="wuc_ThCreditCenter" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">  
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ctpHeadMenu" Runat="Server">
    <form id="form1" runat="server">
      <section>
          <div class="large-12 columns">  
                    <h1 id="lbCardName">บัตรกดเงินสดกสิกร</h1>
               
                    <hr>
                    <p id="lbPromotion">สมัครวันนี้ รับเลย ร่ม ฟรี วอเชอ แลอื่นๆ อีกมากมาย</p>
                    <a href="#product" class="btn btn-primary btn-xl page-scroll">กรอกแบบฟอร์มสมัคร</a>
               </div>  
        </section> 
    </form>
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="ctpMain" Runat="Server">    
     <uc1:wuc_ThCreditCenter ID="wuc_ThCreditCenter1" runat="server" />   
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ctpScript" Runat="Server">

    <link href="../../css/datetime/date.css" rel="stylesheet" type="text/css" />
    <script src="../../js/datetime/bootstrap-datepicker.js" type="text/javascript"></script>
    <script src="../../js/credit/formPq.js"></script> 
</asp:Content>


