<%@ Page Title="" Language="C#" MasterPageFile="~/MS_Main.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/tab.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ctpHeadMenu" Runat="Server">
 
   <section> 
          <div class="large-12 columns"> 
                 <div class="fadeOut owl-carousel"> 
                   <div class="item"> 
                       <h1>เราให้บริการมากว่า 40 ปี</h1>
                       <hr>
                       <p>เราให้บริการด้านสินเชื่อและบริการ</p>
                      <%-- <a href="#about" class="btn btn-primary btn-xl page-scroll">เกียวกับเรา</a>--%>
                        <a href="#about" class="btn btn-default btn-xl page-scroll">เกียวกับเรา</a>
                   
                   </div>
                   <div class="item"> 
                           <h1>คำนวณเบี้ยประกันรถยนต์</h1>
                           <hr>
                           <p>สินเชื่อประกันรถยนต์</p> 
                           <a href="carinsurance/Default.aspx?typedealer=<%=typedealer%>#product" class="btn btn-default btn-xl page-scroll">เทียบเบียประกัน</a>
                   </div>
                   <div class="item">
                          <h1>สินเชื่อรถยนต์</h1>
                           <hr>
                           <p>สินเชื่อรถยนต์</p>
                           <a href="carloan/Default.aspx?typedealer=<%=typedealer%>#product" class="btn btn-default btn-xl page-scroll">ขอสินเชื่อ</a>
                   </div>
                   <div class="item">
                           <h1>บัตรกดเงินสด</h1>
                           <hr>
                           <p>บัตรกดเงินสด</p>
                           <a href="credit/Default.aspx?typedealer=<%=typedealer%>#product" class="btn btn-default btn-xl page-scroll">ขอสินเชื่อ</a>
                   </div> 
                 </div>
             </div>
    </section> 

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ctpMain" Runat="Server"> 

    
  <%--  
    <section   id="product">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading">สินเชื่อบัตร</h2>
                    <hr class="primary">
                </div>
            </div>
        </div>
        <div class="container">
                    <div class="btn-pref btn-group btn-group-justified btn-group-lg" role="group" aria-label="...">
                    <div class="btn-group" role="group">
                            <button type="button" id="stars" class="btn btn-primary btnCardType"  data-cardType="credit"  href="#tab1" data-toggle="tab">
                            <span class="glyphicon glyphicon-credit-card" aria-hidden="true"></span> 
                            <div>บริการเปรียบเทียบเบี้ยประกันรถยนต์</div>  
                        </button>  
                    </div>
                    <div class="btn-group" role="group">
                        <button type="button" id="favorites" class="btn btn-default btnCardType"  data-cardType="cash"   href="#tab2" data-toggle="tab">
                            <span class="glyphicon glyphicon-credit-card" aria-hidden="true"></span>
                            <div>บริการเปรียบเทียบสินเชื่อรถยนต์</div> 
                        </button>
                    </div>
                    <div class="btn-group" role="group">
                        <button type="button" id="following" class="btn btn-default btnCardType"  data-cardType="loan" href="#tab3" data-toggle="tab">
                            <span class="glyphicon glyphicon-credit-card" aria-hidden="true"></span>
                            <div>บริการบัตรเครดิต</div> 
                        </button>
                    </div>
                </div> 
                    <div class="well" style="background-color:White;border:0px; padding-left: 0px;padding-right: 0px;">
                    <div class="tab-content">
                    <div class="tab-pane fade in active" id="tab1"> 

                        ประกันรถยนต์
                          
                    </div>

                        <div class="tab-pane fade in" id="tab2">
                            
                          สินเชื่อรถยนต์

                        </div>

                        <div class="tab-pane fade in" id="tab3">
                                บัตรเคดิต 
                        </div>

                    </div>
                </div>
        </div>
    </section> --%>

    
     <aside class="bg-dark" style="background-color:#F2F2F2;color:#004B93;font-size:18px;">
        <div class="container text-center"> 
             <div class="row">  
                    <div class="col-md-6">
                        <br />  
                        " ฉลาดช่วยคุณเปรียบเทียบ
                          <br /> ด้วยระบบประมวลผลอัจฉริยะ 
                           <br />  ที่สามารถคำนวณเปรียบเทียบเบี้ยประกันรถของคุณได้อย่างรวดเร็ว 
                             <br />และครอบคลุม ทำให้คุณสามารถตัดสินใจได้ง่ายขึ้น"
                        <br />
                        <br /> 
                        <a href="<%= this.ResolveClientUrl("~/carinsurance/Default.aspx?typedealer=#product") %>">>> คำนวนเบี้ยประกัน..</a>
                        </div>
                       <div class="col-md-6">
                           <img  class="img-responsive" alt="รูปเปรียบเทียบเบี้ยประกัน" src="img/subicon/smart-compare.png" />
                        </div>
                 </div>

            <%--</div>--%>
        </div>
    </aside> 

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

