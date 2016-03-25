<%@ Page Title="" Language="C#" MasterPageFile="~/MS_Main.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  <link href="../css/email/mailtip.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ctpHeadMenu" Runat="Server">
  <section>
      <div class="large-12 columns">  
                <h1>สินเชื่อรถยนต์</h1>
                <hr>
                <p>มีรถก็ไม่ขาดเงิน รถช่วยได้กสิกร</p>
                <a href="#product" class="btn btn-primary btn-xl page-scroll">เช็ควงเงินกู้และโอกาสอนุมัติ</a>
           </div>  
    </section> 
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ctpMain" Runat="Server">

    <section  id="product"> 

        <div class="container">  
              <div class="col-md-12">

                        <div class="form-area formAr"> 
                             
                              <h2 class="section-heading hMenu" style="text-align:center;">
                                ใน 30 วินาที มาดูกันว่าธนาคารไหนให้วงเงินสูงสุด ดอกเบี้ยต่ำสุด <br />
                                    กรอกข้อมูล รู้วงเงินกู้! ค่างวด! โอกาสอนุมัติ! ทันที
                                    </h2>
                                <hr class="primary">


                                <br style="clear:both">  
    				                        <div class="form-group">
                                                    <select id="ddlYearCar"  name="ddlYearCar"  class="form-control" >
                                                        <option value="0">--เลือกรถ--</option> 
                                                    </select>   
					                        </div>
					                        <div class="form-group">
                                                    <select id="ddlBandCar"   name="ddlBandCar"   class="form-control" >
                                                        <option value="0">--เลือกยี่ห้อรถ--</option> 
                                                    </select>  
					                        </div>
					                        <div class="form-group">
                                                    <select id="ddlModelcar"   name="ddlModelcar"   class="form-control" >
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

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ctpScript" Runat="Server"> 
  <script src="//www.silkspan.com/silkspan_service/js/TrusteeCar/min/ssapi.min.js?v=2" type="text/javascript"></script> 

   <script src="../js/cHelper.js" type="text/javascript"></script>
    <script src="../js/email/jquery.mailtip.min.js" type="text/javascript"></script>
   <script src="../js/carloan/carloan.js" type="text/javascript"></script>

</asp:Content>

