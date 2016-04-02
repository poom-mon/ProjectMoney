<%@ Page Title="" Language="C#" MasterPageFile="~/MS_Main.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../css/email/mailtip.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ctpHeadMenu" runat="Server">
    <section>
      <div class="large-12 columns">
                <h1>สินเชื่อรถยนต์</h1>  
                <hr>
                <p>ใน 30 วินาที มาดูกันว่าธนาคารไหนให้วงเงินสูงสุด ดอกเบี้ยต่ำสุด</p> 
                <a href="#product" class="btn btn-default btn-xl page-scroll">เช็ควงเงินกู้และโอกาสอนุมัติ</a>
           </div>
    </section>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ctpMain" runat="Server">

    <section id="product" style="padding-bottom: 0px;">
        <div class="container">
              <div class="col-md-12">

                        <div class="form-area formAr">

                              <h2 class="section-heading hMenu" style="text-align:center;">
                                กรอกข้อมูล รู้วงเงินกู้! ค่างวด! โอกาสอนุมัติ! ทันที
                                    </h2>

                                <hr class="primary">

                                <br style="clear:both">
    				                        <div class="form-group">
                                                    <select id="ddlYearCar"  name="ddlYearCar"  class="form-control">
                                                        <option value="0">--เลือกรถ--</option>
                                                    </select>
					                        </div>
					                        <div class="form-group">
                                                    <select id="ddlBandCar"   name="ddlBandCar"   class="form-control">
                                                        <option value="0">--เลือกยี่ห้อรถ--</option>
                                                    </select>
					                        </div>
					                        <div class="form-group">
                                                    <select id="ddlModelcar"   name="ddlModelcar"   class="form-control">
                                                        <option value="0">--เลือกรุ่นรถ--</option>
                                                    </select>
                                           </div>

                                           <div class="form-group">
      	                                           <label>
                                                   <input type="checkbox"  id="ckbFirstBox"  name="ckbFirstBox" class="checkbox" style="WIDTH: 25PX; HEIGHT: 20PX;display:inline;" />
                                                       <span > เป็นรถโครงการรถคันแรก </span>
                                                    </label>
                                           </div>

					                        <div class="form-group">
                                                 <input id="tbMobile" onkeypress=" return num_key(event);" maxlength="10" class="form-control input-icon tel" type="tel" placeholder="กรอกเบอร์โทรศัพท์">
					                        </div>

                                             <div class="form-group">
						                        <input type="text" class="form-control" id="tbEmail" name="email" placeholder="email" required>
					                        </div>

                                <div class="form-group" style="text-align:center;">
                                   <%-- <button type="button" id="submit" name="submit" class="btn btn-primary pull-right btncompare">คำนวณเบี้ยประกัน</button>--%>
                                        <input id="btnCarLoan" type="button" class="btn btn-primary btncompare" value="คำนวณเบี้ยประกัน" />
                                </div>
                        </div>
                    </div>
        </div>
       </section>

    <section style="padding-top: 0px;background-color:#F2F2F2;">
		<div class="container">
			<div class="wrap-big">
				<h2 class="blue text-center clearfix"><span class="red">3 ขั้นตอนง่ายๆ</span> ในการขอสินเชื่อ</h2>

                <div class="row">

                <div class="col-lg-4 col-md-6 text-center">
                    <div class="service-box">
                            <i class="fa fa-4x fa-list-alt wow bounceIn text-primary" style="visibility: visible; animation-name: bounceIn;"></i>
                            <h3>1. กรอกรุ่นรถ</h3>
                    </div>
                </div>

                     <div class="col-lg-4 col-md-6 text-center">
                    <div class="service-box">
                            <i class="fa fa-4x fa-money wow bounceIn text-primary" style="visibility: visible; animation-name: bounceIn;"></i>
                            <h3>2. เลือกค่างวด+วงเงิน</h3>
                    </div>
                </div>

                     <div class="col-lg-4 col-md-6 text-center">
                    <div class="service-box">
                            <i class="fa fa-4x fa-file-text-o wow bounceIn text-primary" style="visibility: visible; animation-name: bounceIn;"></i>
                            <h3>3. สมัคร</h3>
                    </div>
                </div>
               </div>
			</div>
		</div>
	</section>

    <aside style=" font-size: 18px;">
        <div class="container text-center">
             <div class="row">
                    <div class="col-md-6">
                        <br />

                           " รถติดไฟแนนซ์ก็กู้ได้
                           <br /> กรณีรถติดไฟแนนซ์ และมีโอกาสขอสินเชื่อในวงเงินที่มากกว่า หนี้เดิมสามารถยื่นใบสมัครสินเชื่อไว้ก่อนได้ เมื่อธนาคารอนุมัติเงินกู้แล้วลูกค้าค่อยนำเงินไปปิดภาระหนี้เดิมแล้วรับเงินก้อนใหม่
                           
                           <br /> โดยที่ลูกค้าจะมีเงินก้อนเหลือเก็บ หลังจากหักลบภาระหนี้เดิม สำหรับนำไปใช้ลงทุนทำอย่างอื่นต่อไป
                          "
                        </div>
                       <div class="col-md-6">
                           <img  class="img-responsive" alt="รูปเปรียบเทียบเบี้ยประกัน" src="../img/subicon/car-finance.png" />
                        </div>
                 </div>
        </div>
    </aside>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ctpScript" runat="Server">
    <script src="//www.silkspan.com/silkspan_service/js/TrusteeCar/min/ssapi.min.js?v=2" type="text/javascript"></script>

    <script src="../js/cHelper.js" type="text/javascript"></script>
    <script src="../js/email/jquery.mailtip.min.js" type="text/javascript"></script>
    <script src="../js/carloan/carloan.js" type="text/javascript"></script>
</asp:Content>