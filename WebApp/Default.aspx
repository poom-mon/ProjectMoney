<%@ Page Title="" Language="C#" MasterPageFile="~/MS_Main.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ctpHeadMenu" Runat="Server">
  <section> 
          <div class="large-12 columns">
                 <div class="fadeOut owl-carousel">
                   <div class="item">
                       <h1>เราให้บริการมากว่า 40 ปี</h1>
                       <hr>
                       <p>เราให้บริการด้านสินเชื่อและบริการ</p>
                       <a href="#about" class="btn btn-primary btn-xl page-scroll">เกียวกับเรา</a>
                   </div>
                   <div class="item">
                           <h1>คำนวณเบี้ยประกันรถยนต์</h1>
                           <hr>
                           <p>สินเชื่อประกันรถยนต์</p> 
                           <a href="carinsurance/Default.aspx?typedealer=<%=typedealer%>#product" class="btn btn-primary btn-xl page-scroll">เทียบเบียประกัน</a>
                   </div>
                   <div class="item">
                          <h1>สินเชื่อรถยนต์</h1>
                           <hr>
                           <p>สินเชื่อรถยนต์</p>
                           <a href="carloan/Default.aspx?typedealer=<%=typedealer%>#product" class="btn btn-primary btn-xl page-scroll">ขอสินเชื่อ</a>
                   </div>
                   <div class="item">
                           <h1>บัตรกดเงินสด</h1>
                           <hr>
                           <p>บัตรกดเงินสด</p>
                           <a href="credit/Default.aspx?typedealer=<%=typedealer%>#product" class="btn btn-primary btn-xl page-scroll">ขอสินเชื่อ</a>
                   </div> 
                 </div>
             </div>
    </section>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ctpMain" Runat="Server">

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ctpScript" Runat="Server">
<link href="css/owl/owl.carousel.css" rel="stylesheet" type="text/css" />
    <script src="js/carousel/owl.carousel.min.js" type="text/javascript"></script> 

     <script>

         $('.owl-carousel').owlCarousel({
             items: 1,
             loop: true,
             margin: 10,
             autoplay: true,
             autoplayTimeout: 2000,
             autoplayHoverPause: true 
         }); 

     </script>
</asp:Content>

