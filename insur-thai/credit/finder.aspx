<%@ Page Title="" Language="C#" MasterPageFile="~/MS_Main.master" AutoEventWireup="true" CodeFile="finder.aspx.cs" Inherits="Default2" %>

<%@ Register src="~/credit/form/wuc_creditForm.ascx" tagname="wuc_creditForm" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server"> 
          
    <link href="../css/tab.css" rel="stylesheet" type="text/css" />
    <style type="text/css"> 
         .headcol 
          {
            position:absolute;   
            background-color : #337AB7;  
            color:White;
            font-weight:bolder;
         
            height: 60px  !important;
            width : 90px !important; 
            font-size:12px; 
            padding:0 ;
         }
       .tdcol
       {
              height: 60px;
       }  
        .blankCol
        {
            width:90px !important;
            padding-left:80px !important;
         }
       .content > p {
            color: black;
        }
    
    </style>
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


    <section id="product" style="padding-top: 10px;">
        <div class="container" style="padding-left: 0px; padding-right: 0px;">
            <div class="col-md-12">
                <div class="form-area formAr">
                    <div class="row form-group">
                        <div class="col-xs-12 col-sm-12 clearfix">
                            <h3>Smart Advisor : แนะนำบัตรเครดิตที่เหมาะกับคุณ</h3>
                              <%--<ul class="list-unstyled list-inline">
                                <li><i class="fa fa-calendar-o"></i>8/28/2013</li>
                                <li><i class="fa fa-star"></i>33 views </li>
                            </ul>--%> 
                        </div>
                    </div> 
                    <div class="row form-group">
                        <div class="col-xs-12 col-sm-4 clearfix">
                            <select name="ddlTitleName" id="ddlTitleName" class="form-control">
                                <option value="">คำนำหน้า</option>
                                <option value="นาย">นาย</option>
                                <option value="นางสาว">นางสาว</option>
                                <option value="นาง">นาง</option>
                            </select>
                            <div class="_alert-meg">คำนำหน้า </div>
                        </div>
                        <div class="col-xs-12 col-sm-8 clearfix">
                            <input id="tbName" placeholder="ชื่อ-นามสกุล" class="form-control" type="text" />
                            <div class="_alert-meg">ชื่อ-นามสกุล</div>
                        </div>
                    </div>

                    <div class="form-group">
                        <input id="tbBirthdate" placeholder="วันเกิด" class="form-control" type="text" />
                        <div class="_alert-meg">วันเกิด</div>
                    </div>

                    <div class="row form-group">
                        <div class="col-xs-12 col-sm-2 clearfix">
                            <label for="name">เพศ</label>
                        </div>
                        <div class="col-xs-12 col-sm-10 clearfix">
                            <input type="radio" name="rd_sex" value="1">
                            ชาย &nbsp;
                            <input type="radio" name="rd_sex" value="2">
                            หญิง
                              <div class="_alert-meg">เพศ</div>
                        </div>
                    </div>

                    <div class="form-group">
                        <textarea id="taAddress" name="taAddress" class="form-control" placeholder="ที่อยู่บ้าน/ที่พัก" rows="2" cols="20"></textarea>
                        <div class="_alert-meg">ที่อยู่บ้าน/ที่พัก</div>
                    </div>

                    <div class="form-group">
                        <input id="tbMobile" name="tbMobile" maxlength="10" onkeypress=" return num_key(event);" class="form-control inline-sm" type="text" placeholder="โทรศัพท์ 08XXXXXXXX">
                        <div class="_alert-meg">เบอร์โทรศัพท์</div>
                    </div>

                    <div class="form-group">
                        <input id="tbTelHome" onkeypress=" return num_key(event);" maxlength="9" class="form-control input-icon tel" type="tel" placeholder="กรอกเบอร์โทรศัพท์บ้าน 02xxxxxxx">
                        <div class="_alert-meg">เบอร์บ้าน</div>
                    </div>

                    <div class="form-group">
                        <input type="email" class="form-control" id="tbEmail" name="email" placeholder="email" required>
                        <div class="_alert-meg">อีเมลล์</div>
                    </div>

                    <br />

                    <div class="form-group">
                        <i class="fa fa-home"></i>
                        <label>ข้อมูลที่ทำงาน</label>
                        <%--<input id="tbJobs" placeholder="อาชีพ" class="form-control" type="text" />--%>

                        <select name="ddlJobs" id="ddlJobs" class="form-control">
                            <option value="">-------อาชีพ-------</option>
                            <option value="พนักงานบริษัท">พนักงานบริษัท</option>
                            <option value="ข้าราชการ">ข้าราชการ</option>
                            <option value="รัฐวิสาหกิจ">รัฐวิสาหกิจ</option>
                            <option value="ประกอบธุรกิจส่วนตัว">ประกอบธุรกิจส่วนตัว</option>
                        </select>

                        <div class="_alert-meg">อาชีพ</div>
                    </div>

                    <div class="form-group">
                        <select name="ddlWorkProvince" id="ddlWorkProvince" class="form-control">
                            <option value="">-------จังหวัดที่ทำงาน-------</option>
                            <option value="กระบี่">กระบี่</option>
                            <option value="กาญจนบุรี">กาญจนบุรี</option>
                            <option value="กาฬสินธุ์">กาฬสินธุ์ </option>
                            <option value="กำแพงเพชร">กำแพงเพชร</option>
                            <option value="ขอนแก่น">ขอนแก่น</option>
                            <option value="จันทบุรี">จันทบุรี</option>
                            <option value="ฉะเชิงเทรา">ฉะเชิงเทรา</option>
                            <option value="ชลบุรี">ชลบุรี</option>
                            <option value="ชัยนาท">ชัยนาท</option>
                            <option value="ชัยภูมิ">ชัยภูมิ</option>
                            <option value="ชุมพร">ชุมพร</option>
                            <option value="เชียงราย">เชียงราย</option>
                            <option value="เชียงใหม่">เชียงใหม่ </option>
                            <option value="ตรัง">ตรัง</option>
                            <option value="ตราด">ตราด</option>
                            <option value="ตาก">ตาก</option>
                            <option value="นครนายก">นครนายก</option>
                            <option value="นครปฐม">นครปฐม</option>
                            <option value="นครพนม">นครพนม</option>
                            <option value="นครราชสีมา">นครราชสีมา</option>
                            <option value="นครศรีธรรมราช">นครศรีธรรมราช</option>
                            <option value="นครสวรรค์">นครสวรรค์</option>
                            <option value="นราธิวาส">นราธิวาส</option>
                            <option value="น่าน">น่าน</option>
                            <option value="บึงกาฬ">บึงกาฬ</option>
                            <option value="บุรีรัมย์">บุรีรัมย์</option>
                            <option value="ประจวบคีรีขันธ์">ประจวบคีรีขันธ์</option>
                            <option value="ปราจีนบุรี">ปราจีนบุรี</option>
                            <option value="ปัตตานี">ปัตตานี</option>
                            <option value="พระนครศรีอยุธยา">พระนครศรีอยุธยา</option>
                            <option value="พะเยา">พะเยา</option>
                            <option value="พังงา">พังงา</option>
                            <option value="พัทลุง">พัทลุง</option>
                            <option value="พิจิตร">พิจิตร</option>
                            <option value="พิษณุโลก">พิษณุโลก</option>
                            <option value="เพชรบุรี">เพชรบุรี</option>
                            <option value="เพชรบูรณ์">เพชรบูรณ์</option>
                            <option value="แพร่">แพร่</option>
                            <option value="ภูเก็ต">ภูเก็ต</option>
                            <option value="มหาสารคาม">มหาสารคาม</option>
                            <option value="มุกดาหาร">มุกดาหาร</option>
                            <option value="แม่ฮ่องสอน">แม่ฮ่องสอน</option>
                            <option value="ยโสธร">ยโสธร</option>
                            <option value="ยะลา">ยะลา</option>
                            <option value="ร้อยเอ็ด">ร้อยเอ็ด</option>
                            <option value="ระนอง">ระนอง</option>
                            <option value="ระยอง">ระยอง</option>
                            <option value="ราชบุรี">ราชบุรี</option>
                            <option value="ลพบุรี">ลพบุรี</option>
                            <option value="ลำปาง">ลำปาง</option>
                            <option value="ลำพูน">ลำพูน</option>
                            <option value="เลย">เลย </option>
                            <option value="ศรีสะเกษ">ศรีสะเกษ</option>
                            <option value="สกลนคร">สกลนคร</option>
                            <option value="สงขลา">สงขลา</option>
                            <option value="สตูล">สตูล</option>
                            <option value="สมุทรสงคราม">สมุทรสงคราม</option>
                            <option value="สมุทรสาคร">สมุทรสาคร</option>
                            <option value="สระแก้ว">สระแก้ว</option>
                            <option value="สระบุรี">สระบุรี</option>
                            <option value="สิงห์บุรี">สิงห์บุรี</option>
                            <option value="สุโขทัย">สุโขทัย</option>
                            <option value="สุพรรณบุรี">สุพรรณบุรี</option>
                            <option value="สุราษฎร์ธานี">สุราษฎร์ธานี</option>
                            <option value="สุรินทร์">สุรินทร์</option>
                            <option value="หนองคาย">หนองคาย</option>
                            <option value="หนองบัวลำภู">หนองบัวลำภู</option>
                            <option value="อ่างทอง">อ่างทอง</option>
                            <option value="อำนาจเจริญ">อำนาจเจริญ</option>
                            <option value="อุดรธานี">อุดรธานี</option>
                            <option value="อุตรดิตถ์">อุตรดิตถ์</option>
                            <option value="อุทัยธานี">อุทัยธานี</option>
                            <option value="อุบลราชธานี">อุบลราชธานี</option>
                        </select>

                        <div class="_alert-meg">จังหวัดที่ทำงาน</div>
                    </div>

                    <div class="row form-group">
                        <div class="col-xs-12 col-sm-12 clearfix">
                            <input id="tbSalary" maxlength="8" onkeypress=" return num_key(event);" placeholder="ฐานเงินเดือน" class="form-control" type="text" />
                            <div class="_alert-meg">ฐานเงินเดือน</div>
                        </div>
                    </div>

                    <div class="form-group">
                        <select name="ddlPaymentSaraly" id="ddlPaymentSaraly" class="form-control">
                            <option value="">-------วิธีรับรายได้-------</option>
                            <option value=" โอนเข้าบัญชี">โอนเข้าบัญชี</option>
                            <option value=" รับเป็นเงินสด/เช็ค">รับเป็นเงินสด/เช็ค</option>
                            <option value="อื่นๆ">อื่นๆ</option>
                        </select>
                        <div class="_alert-meg">วิธีรับรายได้</div>
                    </div>

                    <div class="row form-group">
                        <div class="col-xs-12 col-sm-2 clearfix" id="lbAge">
                            อายุงาน
                        </div>
                        <div class="col-xs-12 col-sm-5 clearfix">
                            <%--<input id="tbAgeWork" placeholder="ปี" class="form-control" type="text" />--%>

                            <select name="ddlAgeWork" id="ddlAgeWork" class="form-control">
                                <option value="0">-------ปีที่ทำงาน-------</option>
                                <%for (int i = 0; i <= 35; i++)
                                  { %>
                                <option value="<%= (i==0? "1000" : i.ToString()) %>"><%= (i==0? "ทำงานยังไม่ถึงปี" : i.ToString()+" ปี") %></option>
                                <%} %>
                            </select>

                            <div class="_alert-meg">อายุงาน</div>
                        </div>
                        <div class="col-xs-12 col-sm-5 clearfix">
                            <%--<input id="tbAgeWorkMonth" placeholder="เดือน" class="form-control" type="text" />--%>
                            <select name="ddlAgeWorkMonth" id="ddlAgeWorkMonth" class="form-control">
                                <option value="0">-------เดือนที่ทำงาน-------</option>
                                <%for (int i = 1; i <= 11; i++)
                                  { %>
                                <option value="<%= i %>"><%=i %> เดือน</option>
                                <%} %>
                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <textarea id="taWork" class="form-control" placeholder="ที่อยู่ที่ทำงาน" rows="2" cols="20"></textarea>
                        <div class="_alert-meg">ที่อยู่ที่ทำงาน</div>
                    </div>
                    <div class="form-group">
                        <input id="tbTelWork" onkeypress=" return num_key(event);" maxlength="9" class="form-control input-icon tel" type="tel" placeholder="กรอกเบอร์โทรศัพที่ทำงาน 02xxxxxxx">
                        <div class="_alert-meg">เบอร์โทรที่ทำงาน</div>
                    </div> 
                    <div class="form-group">
                        <input type="checkbox" id="ckConfirm" checked>
                        ข้าพเจ้ายินยอมให้บริษัทใช้เลขหมายโทรศัพท์ ที่อยู่ และอีเมล์ ที่ให้ไว้ข้างต้นนี้ ในการแจ้งผล
            ของการสมัคร ข่าวสารอื่นๆ หรือการเสนอขายผลิตภัณฑ์ของบริษัทและคู่ค้า
                    </div>
                    <div class="form-group">
                        <input type="checkbox" id="chkBulo" checked>
                        ท่านไม่เคยติดประวัติชำระเงินล่าช้า เครดิตบูโร กับทางธนาคารหรือสถาบันการเงินใดๆ  หรือ เคลียร์ประวัติไปแล้วเกิน 1 ปีขึ้นไป<br>
                    </div> 

                    <div class="form-group" style="text-align: center;">
                        <input id="btnCal" type="button" class="btn btn-primary btncompare" value="ประเมินโอกาสอนุมัติ">
                    </div>

                        <br /> 

                    </div>
                </div>
            </div>
         

              <div class="container" id="dvContainerTb" style="display:none;">
                    <div class="btn-pref btn-group btn-group-justified btn-group-lg" role="group" aria-label="...">
                    <div class="btn-group" role="group">
                            <button type="button" id="stars" class="btn btn-primary btnCardType"  data-cardType="credit"  href="#tab1" data-toggle="tab">
                            <span class="glyphicon glyphicon-credit-card" aria-hidden="true"></span> 
                            <div>บัตรเครดิต</div> 
                            <%--  <div class="hidden-xs">บัตรเครดิต</div> --%>
                        </button>  
                    </div>
                    <div class="btn-group" role="group">
                        <button type="button" id="favorites" class="btn btn-default btnCardType"  data-cardType="cash"   href="#tab2" data-toggle="tab">
                            <span class="glyphicon glyphicon-credit-card" aria-hidden="true"></span>
                            <div>บัตรกดเงินสด</div>
                                <%--<span class="hidden-xs">บัตรกดเงินสด</span>--%>
                        </button>
                    </div>
                    <div class="btn-group" role="group">
                        <button type="button" id="following" class="btn btn-default btnCardType"  data-cardType="loan" href="#tab3" data-toggle="tab">
                            <span class="glyphicon glyphicon-credit-card" aria-hidden="true"></span>
                            <div>โอนหนี้</div>
                             <%-- <span class="hidden-xs">โอนหนี้</span> --%>
                        </button>
                    </div>
                </div> 
                    <div class="well" style="background-color:White;border:0px; padding-left: 0px;padding-right: 0px;">
                    <div class="tab-content">
                    <div class="tab-pane fade in active" id="tab1">  
                         <!---- credit -->
                           <div class="table-responsive">
							            <table   class="table table-striped table-condensed table-hover table-bordered" style="font-size:12px;">
								  
									        <tr>   
                                               <th class="headcol" class="colRegis"> รายละเอียด </th>	 
                                               <th class="blankCol"></th>	
										        <th>ธนาคาร</th>	
                                                <th>ชื่อบัตร</th>	 
                                                <th>วงเงินสูงสุด </th>	  
                                                <th>อัตราดอกเบี้ย </th>	  
										        <th>จุดเด่นของ ผลิตภัณฑ์</th>	
										        <th>โปรโมชั่น </th>	 
										        <th class="dvDetailTbPc">รายละเอียด </th>	
									        </tr>
                                            <tbody id="tbRowsCredit">
                                            <%for (int i = 0; i <= 5; i++)
                                              { %>
									        <tr>
                                                 <td   class="headcol"  align="left">
                                                   <i class="glyphicon glyphicon-edit"></i>  สมัคร  <br />
                                                   <i class="glyphicon glyphicon-new-window"></i>  รายละเอียด
                                                 </td>
                                              
                                              <td  class="blankCol"  style="width:90px;padding-left:80px;">  
                                              
                                              </td>
									            <td   align="left">  
                                                    <img src="http://www.silkspan.com//images_new/crd/logo/logo_cimb.gif"  />
                                                  
                                                </td>
                                                <td align="left">
                                                     kbank paywave   
                                                </td> 
                                                <td  align="left">15,000</td>
                                                <td  align="left">20%</td>
									            <td  align="left">
                                                - อัตราดอกเบี้ยสุดพิเศษ
                                                - วงเงินสูงสุด 1,500,000 บาท
                                                - ผ่อนได้นานสูงสุด 60 เดือน
                                                - ไม่ต้องมีหลักทรัพย์หรือ
                                                    บุคคลค้ำประกัน</td>
									            <td align="left">
                                                    - พิเศษ! รับดอกเบี้ยต่ำสุด
                                                    18% ต่อปีตลอดอายุสัญญา</td> 
									            <td class="dvDetailTbPc" align="left" style="width:100px;">    
                                                   <i class="glyphicon glyphicon-edit"></i>  สมัคร  <br />
                                                   <i class="glyphicon glyphicon-new-window"></i>  รายละเอียด 
                                                </td>  
									        </tr>  
                                            <%} %>
								        </tbody>
							        </table>
							 </div>  
                         <!-- end credit -->
                    </div> 
                        <div class="tab-pane fade in" id="tab2">
                            
                            <div class="table-responsive">
							            <table   class="table table-striped table-condensed table-hover table-bordered" style="font-size:12px;">
								  
									        <tr>   
                                               <th class="headcol" class="colRegis"> รายละเอียด </th>	 
                                               <th class="blankCol"></th>	
										        <th>ธนาคาร</th>	
                                                <th>ชื่อบัตร</th>	 
                                                <th>วงเงินสูงสุด </th>	  
                                                <th>อัตราดอกเบี้ย </th>	  
										        <th>จุดเด่นของ ผลิตภัณฑ์</th>	
										        <th>โปรโมชั่น </th>	 
										        <th class="dvDetailTbPc">รายละเอียด </th>	
									        </tr>
                                            <tbody id="tbRowscash"> 
								        </tbody>
							        </table>
							 </div> 

                        </div> 
                        <div class="tab-pane fade in" id="tab3">
                                   <div class="table-responsive">
							                    <table   class="table table-striped table-condensed table-hover table-bordered" style="font-size:12px;">
								  
									                <tr>   
                                                        <th class="headcol" class="colRegis"> รายละเอียด </th>	 
                                                        <th class="blankCol"></th>	
										                <th>ธนาคาร</th>	
                                                        <th>ชื่อบัตร</th>	 
                                                        <th>วงเงินสูงสุด </th>	  
                                                        <th>อัตราดอกเบี้ย </th>	  
										                <th>จุดเด่นของ ผลิตภัณฑ์</th>	
										                <th>โปรโมชั่น </th>	 
										                <th class="dvDetailTbPc">รายละเอียด </th>	
									                </tr>
                                                    <tbody id="tbRowsLoan"> 
								                </tbody>
							                </table>
							         </div> 
                        </div>

                    </div>
                </div>

        </div>

    </section>

</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ctpScript" Runat="Server">

    <link href="../css/datetime/date.css" rel="stylesheet" type="text/css" />
    <script src="../js/datetime/bootstrap-datepicker.js" type="text/javascript"></script>
    <script src="../js/credit/finder.js" type="text/javascript"></script>

    <script>
        $(".btn-pref .btn").click(function () {
            $(".btn-pref .btn").removeClass("btn-primary").addClass("btn-default");
            // $(".tab").addClass("active"); // instead of this do the below 
            $(this).removeClass("btn-default").addClass("btn-primary");
        });

   
        
 </script>

</asp:Content>


