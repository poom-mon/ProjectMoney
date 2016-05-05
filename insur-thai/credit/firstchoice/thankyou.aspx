<%@ Page Title="" Language="C#" MasterPageFile="~/Ms_Fistchoice.master" AutoEventWireup="true" CodeFile="thankyou.aspx.cs" Inherits="Default2" %>
  
 
<%@ Register src="../form/wuc_creditForm.ascx" tagname="wuc_creditForm" tagprefix="uc1" %>
<%@ Register src="../form/wuc_th_credit.ascx" tagname="wuc_th_credit" tagprefix="uc2" %>
  
 
<%@ Register src="../form/wuc_th_credit2.ascx" tagname="wuc_th_credit2" tagprefix="uc3" %>
  
 
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cptMain" Runat="Server">  
   
    <section>
      <div class="large-12 columns">  
                <h1>ขอบคุณที่ใช้บริการค่ะ</h1>
               
                <hr>
                <p>เจ้าหน้าที่จะรีบติดต่อกลับ ภายในเวลาทำการ วันจันทร์ - วันศุกร์ 9:00 - 18:00 น.</p> 
           </div>  
    </section> 

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cptFooter" Runat="Server">
      

    <script src="../../js/PValid.js"></script>
    <link href="../../css/datetime/date.css" rel="stylesheet" />
    <script src="../../js/datetime/bootstrap-datepicker.js" type="text/javascript"></script>
    <script src="../../js/credit/formpq_thcredit2.js"></script> 

    <script>

        $(".ZoneRegOnline,.iregis").css("display", "none");
    </script>
</asp:Content>
 