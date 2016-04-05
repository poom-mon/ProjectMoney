<%@ Page Title="" Language="C#" MasterPageFile="~/MS_Main.master" AutoEventWireup="true" CodeFile="thankyou.aspx.cs" Inherits="Default2" %>

<%@ Register src="../form/wuc_creditForm.ascx" tagname="wuc_ThCreditCenter" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">  
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ctpHeadMenu" Runat="Server">
    <form id="form1" runat="server">
  <section>
      <div class="large-12 columns">  
                <h1>ขอบคุณที่ใช้บริการค่ะ</h1>
               
                <hr>
                <p>เจ้าหน้าที่จะรีบติดต่อกลับ ภายในเวลาทำการ วันจันทร์ - วันศุกร์ 9:00 - 18:00 น.</p> 
           </div>  
    </section> 
    </form>
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="ctpMain" Runat="Server">    
      
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ctpScript" Runat="Server">
  
    <script>

        $("#about").css("display", "none");
        $("#dvMenu2").css("display", "none");
        
    </script>
</asp:Content>


