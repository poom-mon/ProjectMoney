<%@ Page Title="" Language="C#" MasterPageFile="~/MS_Main.master" AutoEventWireup="true" CodeFile="Detail_bk.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server"> 
    <style type="text/css"> 
          <style>
        

    #owl-demo .item{
    margin: 3px;
    }
    #owl-demo .item img{
    display: block;
    width: 100%;
    height: auto;
    } 

    .snap-bottom {
  position: fixed;
  left: 0;
  bottom: 0;
  width: 100%;
  padding: 10px 0;
  z-index: 999;
  background-color: #fff;
  box-shadow: 0 0 15px rgba(0, 0, 0, 0.5);
}
.snap-bottom.non-snap {
  padding: 0;
  position: static;
  box-shadow: none;
  margin-top: 15px;
}  
.form-container .dp-table-cell {
  padding-right: 5px;
}
.form-container .dp-table-cell + .dp-table-cell {
  padding-right: 0;
  padding-left: 5px;
}
.form-container .form-control {
  font-family: "arial", tahoma;
  line-height: 1.3em;
  font-size: 14px;
  line-height: 32px;
}
.form-container label {
  font-weight: 100;
}
@media (min-width: 1200px) {
  .form-container .form-group {
    margin-top: 25px;
  }
  .form-container .form-control {
    height: 40px;
    line-height: 1em;
    font-weight: 100;
    padding-top: 3px;
  }
}
  .panel-default
  {
    padding:0px;
   }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ctpHeadMenu" Runat="Server">
  <section>
      <div class="large-12 columns">  
                <h1>บัตรกดเงินสด</h1>
                <hr>
                <p>เปรียบเทียบบัตรเครดิตที่เหมาะกับคุณ</p>
                <a href="#product" class="btn btn-primary btn-xl page-scroll">ขอสินเชื่อ</a>
           </div>  
    </section> 
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="ctpMain" Runat="Server">  
		<div class="row"> 
        <div class="col-sm-1"> </div>  
			<div class="col-sm-10" >
				<%--<section class="panel panel-default mail-container" >
					<div class="panel-heading">
                        <strong>
                            <span class="fa fa-th"></span>
                                บัตรกดเงินสดกสิกร
                        </strong>
                    </div>--%>
					<div class="panel-body">
						<div class="mail-header row">
							<div class="col-md-12">
								<h3>บัตรกดเงินสดกสิกร</h3>
							</div>
							<%--<div class="col-md-4">
								<div class="pull-right">
									<a href="#/mail/compose" class="btn btn-sm btn-default">Menu <i class="fa fa-th"></i></a>
								</div>
							</div>--%>
						</div>
						<div class="mail-info">
							<div class="row">
								<div class="col-md-8">
									<ul class="list-unstyled list-inline">
										<li><i class="fa fa-calendar-o"></i> 8/28/2013</li> 
										<li><i class="fa fa-star"></i> 33 views </li>
									</ul>
								</div>
							</div>
						</div>
						
                        <div>
                            <img data-src="holder.js/1089x220" class="img-responsive"  alt="banner" src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9InllcyI/PjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB3aWR0aD0iMTQwIiBoZWlnaHQ9IjE0MCIgdmlld0JveD0iMCAwIDE0MCAxNDAiIHByZXNlcnZlQXNwZWN0UmF0aW89Im5vbmUiPjwhLS0KU291cmNlIFVSTDogaG9sZGVyLmpzLzE0MHgxNDAKQ3JlYXRlZCB3aXRoIEhvbGRlci5qcyAyLjYuMC4KTGVhcm4gbW9yZSBhdCBodHRwOi8vaG9sZGVyanMuY29tCihjKSAyMDEyLTIwMTUgSXZhbiBNYWxvcGluc2t5IC0gaHR0cDovL2ltc2t5LmNvCi0tPjxkZWZzPjxzdHlsZSB0eXBlPSJ0ZXh0L2NzcyI+PCFbQ0RBVEFbI2hvbGRlcl8xNTMzMDRlMjg2YiB0ZXh0IHsgZmlsbDojQUFBQUFBO2ZvbnQtd2VpZ2h0OmJvbGQ7Zm9udC1mYW1pbHk6QXJpYWwsIEhlbHZldGljYSwgT3BlbiBTYW5zLCBzYW5zLXNlcmlmLCBtb25vc3BhY2U7Zm9udC1zaXplOjEwcHQgfSBdXT48L3N0eWxlPjwvZGVmcz48ZyBpZD0iaG9sZGVyXzE1MzMwNGUyODZiIj48cmVjdCB3aWR0aD0iMTQwIiBoZWlnaHQ9IjE0MCIgZmlsbD0iI0VFRUVFRSIvPjxnPjx0ZXh0IHg9IjQ1IiB5PSI3NC44Ij4xNDB4MTQwPC90ZXh0PjwvZz48L2c+PC9zdmc+" 
                                data-holder-rendered="true" style="width: 1089px; height: 220px;">
                       </div>
                       <br />
						
						<div class="mail-attachments">
							<ul class="list-unstyled list-inline">
								<li><i class="fa fa-paperclip"></i></li>
								<li>เอกสารธนาคาร</li>
							</ul>

						


                   <!-- Plans --> 
            <div class="container">
                <div class="row"> 
                       <div class="table-responsive">
							    <table class="table table-striped table-condensed table-hover table-bordered" style="font-size:12px;"> 
                                    <tbody>
                                        <tr>
                                            <td  class="tdBorder">จุดเด่นและโปรโมชั่นของสินเชื่อ</td>
                                            <td>สมัครบัตรสินเชื่อบุคคลเอ็กซ์ตร้าแคช ExtraCash วันนี้</td>
                                        </tr>  
                                        <tr>
                                            <td class="tdBorder">วงเงินอนุมัติสูงสุด</td>
                                            <td>5 เท่าของรายได้ประจำ </td>
                                        </tr>
                                        <tr>
                                            <td class="tdBorder">ดอกเบี้ย</td>
                                            <td>20% </td>
                                        </tr> 
                                               
                                        <tr>
                                            <td class="tdBorder">ค่าธรรมเนียมจัดการเงินกู้</td>
                                            <td>ฟรี!</td>
                                        </tr> 

                                               
   
                                    </tbody>
						    </table>
				      </div> 

                      <div  class="content"> 
							    <p>เงื่อนไข</p>  
                                <p>ผู้สมัครสมัครสินเชื่อเงินสดกรุงศรีเฟิร์สช้อยส์ ณ วันสมัคร ตั้งแต่วันที่ วันที่ 11 มี.ค. – 30 มิ.ย. 58</p> 
                                <p>1.	อัตราดอกเบี้ยปกติแบบลดต้นลดดอกต่อปี</p> 
                                <p>2.	สมาชิกใหม่ที่สมัครสามารถรู้ผลอนุมัติภายใน 30 นาที เมื่อสมัครที่ศูนย์บริการกรุงศรีเฟิร์สช้อยส์ ทั่วประเทศและเอกสารที่ใช้ในการสมัครจะต้องมีความครบถ้วนและสมบูรณ์</p> 
                                <p>3.	สมาชิกใหม่ที่จะได้รับโอนเงินภายในวันเดียวกันเฉพาะการโอนเงินเข้าบัญชีธนาคารกรุงเทพ, ธนาคารกรุงศรีอยุธยา, ธนาคารกรุงไทย, ธนาคารไทยพาณิชย์, ธนาคารกสิกรไทยและจะต้องทราบผลการอนุมัติก่อน 13.00 น. (กรณีที่ทราบผลการอนุมัติหลัง 13.00 น. จะได้รับเงินในวันทำการถัดไป)</p> 
                                <p>4.	เฉพาะจำนวนเงินที่สมาชิกใหม่เบิกถอนเงินสดภายใน 90 วันนับจากวันที่ได้รับอนุมัติสินเชื่อ สำหรับการเบิกถอนเงินสดครั้งถัดไป บริษัทฯ จะเรียกเก็บในอัตราดอกเบี้ยปกติแบบลดต้นลดดอกต่อปี</p> 
						   
                        </div> 

                  </div>
              </div> 





                        


					</div>
				<%--</section>--%>
                 
                   
              <%--  <div class="col-sm-12">  
                    <div id="pt"></div> 
	                    <div class="form-group btnsubmit submit-btn snap-bottom" style="display:">
		                    <div class="container">
			                    <a class="button-ui button-green" id='btnSubmit'>เลือกแผนนี้</a>
			                    <p class="freeText">สมัครวันนี้ <span class="red">ฟรี e-Voucher</span> ส่วนลดที่พักและสปา</p>
		                    </div>
	                    </div>
                 </div> --%>
          
               

       <%--         
             <section class="panel panel-default mail-container">
					<div class="panel-heading">
                        <strong>
                            <span class="fa fa-th"></span>
                                ลิงค์ที่เกี่ยวข้อง
                        </strong>
                    </div>
					<div class="panel-body">
                          <div class="col-sm-12"> 
                              <div id="voucher-carousel"> 
                                   	        <div id="vc_carousel" class="owl-carousel">
		                                        <div class="item"><img src="http://placehold.it/160x100" class="img-responsive img-radio">1</div>
		                                        <div class="item"><img src="http://placehold.it/160x100" class="img-responsive img-radio">2</div>
		                                        <div class="item"><img src="http://placehold.it/160x100" class="img-responsive img-radio">3</div>
		                                        <div class="item"><img src="http://placehold.it/160x100" class="img-responsive img-radio">4</div>
		                                        <div class="item"><img src="http://placehold.it/160x100" class="img-responsive img-radio">5</div>
		                                        <div class="item"><img src="http://placehold.it/160x100" class="img-responsive img-radio">6</div>
		                                        <div class="item"><img src="http://placehold.it/160x100" class="img-responsive img-radio">7</div>
		                                        <div class="item"><img src="http://placehold.it/160x100" class="img-responsive img-radio">8</div>
		                                        <div class="item"><img src="http://placehold.it/160x100" class="img-responsive img-radio">9</div>
		                                        <div class="item"><img src="http://placehold.it/160x100" class="img-responsive img-radio">10</div>
	                                        </div>

	                            </div>
                        </div> 
                    </div>
                  </section> --%>
			</div> 
			<div class="col-sm-1"> </div> 
		</div>
        </div> 
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ctpScript" Runat="Server">
    <script src="../js/cHelper.js" type="text/javascript"></script>
     
    <link href="../css/owl/1owl.carousel.css" rel="stylesheet" type="text/css" />
    <script src="../js/credit/search_loan.js" type="text/javascript"></script>


     
    <script src="../js/owl/owl.carousel.new.min.js" type="text/javascript"></script>
    <script>
        $('#vc_carousel').owlCarousel({
            autoPlay: 3000,
            loop: true,
            margin: 18,
            nav: false,
            margin: 0,
            autoWidth: true
        });

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
 </script>
</asp:Content>


