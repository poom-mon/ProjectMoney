<%@ Page Title="" Language="C#" MasterPageFile="~/MS_Main.master" AutoEventWireup="true" CodeFile="Detail.aspx.cs" Inherits="Default2" %>

<%@ Register src="../form/wuc_ThCreditCenter.ascx" tagname="wuc_ThCreditCenter" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">  
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ctpHeadMenu" Runat="Server">
    <form id="form1" runat="server">
  <section>
      <div class="large-12 columns">  
                <h1>บัตรกดเงินสดกสิกร</h1>
               
                <hr>
                <p>สมัครวันนี้ รับเลย ร่ม ฟรี วอเชอ แลอื่นๆ อีกมากมาย</p>
                <a href="#product" class="btn btn-primary btn-xl page-scroll">กรอกแบบฟอร์มสมัคร</a>
           </div>  
    </section> 
    </form>
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="ctpMain" Runat="Server">    
     <uc1:wuc_ThCreditCenter ID="wuc_ThCreditCenter1" runat="server" />   
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ctpScript" Runat="Server">
  
     <script>
        function isElementInViewport() {
            var scrollTop = $(window).scrollTop();
            var viewportHeight = $(window).height();
            $('#pt').each(function () {
                var top = $(this).offset().top;
                console.log(top);
                console.log(scrollTop + viewportHeight);
                if (scrollTop + viewportHeight >= top) {
                    $('.submit-btn').addClass('non-snap');
                    console.log(true);
                } else {
                    $('.submit-btn').removeClass('non-snap');
                    console.log(false);
                }
            });
        }
        $(window).scroll(isElementInViewport);


        $("#lnkBankInfo").on("click", function () { 
            $("#ifrImagePromo").prop("src", $(this).data("link"));
            $("#modalShowImg").modal("show");
        });
 </script>
</asp:Content>


