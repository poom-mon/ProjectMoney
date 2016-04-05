<%@ Control Language="C#" AutoEventWireup="true" CodeFile="wuc_creditForm.ascx.cs" Inherits="credit_form_wuc_ThCreditCenter" %>

<style>
    .content > p {
        color: black;
    }
</style>

<section id="product" style="padding-top: 10px;">
    <div class="container" style="padding-left: 0px; padding-right: 0px;">
        <div class="col-md-12">
            <div class="form-area formAr">
                <div class="row form-group">
                    <div class="col-xs-12 col-sm-12 clearfix">
                        <%-- <h3>บัตรกดเงินสดกสิกร</h3>
                        <ul class="list-unstyled list-inline">
                            <li><i class="fa fa-calendar-o"></i>8/28/2013</li>
                            <li><i class="fa fa-star"></i>33 views </li>
                        </ul>--%>

                        <img id="imgImageLogo" data-src="holder.js/1089x220" class="img-responsive" alt="banner" src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9InllcyI/PjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB3aWR0aD0iMTQwIiBoZWlnaHQ9IjE0MCIgdmlld0JveD0iMCAwIDE0MCAxNDAiIHByZXNlcnZlQXNwZWN0UmF0aW89Im5vbmUiPjwhLS0KU291cmNlIFVSTDogaG9sZGVyLmpzLzE0MHgxNDAKQ3JlYXRlZCB3aXRoIEhvbGRlci5qcyAyLjYuMC4KTGVhcm4gbW9yZSBhdCBodHRwOi8vaG9sZGVyanMuY29tCihjKSAyMDEyLTIwMTUgSXZhbiBNYWxvcGluc2t5IC0gaHR0cDovL2ltc2t5LmNvCi0tPjxkZWZzPjxzdHlsZSB0eXBlPSJ0ZXh0L2NzcyI+PCFbQ0RBVEFbI2hvbGRlcl8xNTMzMDRlMjg2YiB0ZXh0IHsgZmlsbDojQUFBQUFBO2ZvbnQtd2VpZ2h0OmJvbGQ7Zm9udC1mYW1pbHk6QXJpYWwsIEhlbHZldGljYSwgT3BlbiBTYW5zLCBzYW5zLXNlcmlmLCBtb25vc3BhY2U7Zm9udC1zaXplOjEwcHQgfSBdXT48L3N0eWxlPjwvZGVmcz48ZyBpZD0iaG9sZGVyXzE1MzMwNGUyODZiIj48cmVjdCB3aWR0aD0iMTQwIiBoZWlnaHQ9IjE0MCIgZmlsbD0iI0VFRUVFRSIvPjxnPjx0ZXh0IHg9IjQ1IiB5PSI3NC44Ij4xNDB4MTQwPC90ZXh0PjwvZz48L2c+PC9zdmc+"
                            data-holder-rendered="true" style="width: 1089px; height: 220px;">

                        <div class="mail-attachments" style="padding: 10px;">
                            <ul class="list-unstyled list-inline" id="ulPathFile">
                                <li><i class="fa fa-paperclip"></i></li>
                                <li><a href="javascrip:void(0);" data-link="http://www.pplusteam.com/UpImages/TBANK/2016/2016-03/tbank_pro_201603_2.jpg" id="lnkBankInfo">เอกสารธนาคาร</a> </li>
                            </ul>
                        </div>
                    </div>
                </div>

                <h2 style="text-align: center;">สมัครบัตรเครดิต </h2>
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

                <%--<div class="form-group">
                    <input type="checkbox" name="confirm_1" id="confirm_1" value="yes">
                    ท่านรับเงินเดือนผ่านบัญชีธนาคาร <font color="red">*ไม่ได้รับเป็นเงินสด*</font>มี Slip เงินเดือน , มีใบรับรองเงินเดือน
                </div>
                <div class="form-group">
                    <input type="checkbox" name="confirm_2" id="confirm_2" value="yes" class="required">
                    ท่านมีฐานเงินเดือนประจำ ไม่ต่ำกว่า 15,000 บาท ต่อเดือน<br>
                </div>
                <div class="form-group">
                    <input type="checkbox" name="confirm_3" id="confirm_3" value="yes" class="required">
                    สำหรับพนักงานเงินเดือน ท่านต้องทำงานประจำเกิน 6 เดือนขึ้นไป / สำหรับเจ้าของธุรกิจต้องทำธุรกิจเกิน 1 ปีขึ้นไป<br>
                </div>
                <div class="form-group">
                    <input type="checkbox" name="confirm_4" id="confirm_4" value="yes" class="required">
                    ท่านไม่ใช่ลูกจ้างชั่วคราว มีเบอร์ออฟฟิศที่บริษัท ถ้าเป็นเจ้าของกิจการต้องมีเอกสารการจดทะเบียน<br>
                </div>
                <div class="form-group">
                    <input type="checkbox" name="confirm_5" id="confirm_5" value="yes" class="required">
                    ท่านไม่ได้ทำงานในอาชีพเหล่านี้ อาชีพที่ธนาคารไม่รับพิจารณา : แม่บ้าน แมสเซนเจอร์ พนักงานขับรถ รปภ. ทหาร ตำรวจ ข้าราชการการเมือง กำนัน ผู้ใหญ่บ้าน อบจ อบต และ งดรับพิจารณา พนักงานที่ทำงานอยู่ใน 3 จังหวัด ชายแดนภาคใต้<br>
                </div>--%>

                <div class="form-group">
                    <input type="checkbox" id="ckConfirm" checked>
                    ข้าพเจ้ายินยอมให้บริษัทใช้เลขหมายโทรศัพท์ ที่อยู่ และอีเมล์ ที่ให้ไว้ข้างต้นนี้ ในการแจ้งผล
        ของการสมัคร ข่าวสารอื่นๆ หรือการเสนอขายผลิตภัณฑ์ของบริษัทและคู่ค้า
                </div>
                <div class="form-group">
                    <input type="checkbox" id="chkBulo" checked>
                    ท่านไม่เคยติดประวัติชำระเงินล่าช้า เครดิตบูโร กับทางธนาคารหรือสถาบันการเงินใดๆ  หรือ เคลียร์ประวัติไปแล้วเกิน 1 ปีขึ้นไป<br>
                </div>
                <%--<div class="form-group">
                    <input type="checkbox" name="confirm_7" id="confirm_7" value="yes" class="required">
                    ท่านสามารถให้เจ้าหน้าที่ธนาคารติดต่อ ในเวลาทำงานได้  วันจันทร์ - วันศุกร์ 9:00 - 18:00 น.<br>
                </div>--%>

                <div class="form-group" style="text-align: center;">
                    <input id="btnUpdatePq" type="button" class="btn btn-primary btncompare" value="สมัครบัตรเครดิต">
                </div>

                <br />
                <br />

                <div class="form-group">

                    <div class="table-responsive">
                        <table class="table table-striped table-condensed table-hover table-bordered" style="font-size: 12px;">
                            <tbody>
                                <%-- <tr>
                                    <td class="tdBorder">จุดเด่นและโปรโมชั่นของสินเชื่อ</td>
                                    <td id="tdPromo">สมัครบัตรสินเชื่อบุคคลเอ็กซ์ตร้าแคช ExtraCash วันนี้</td>
                                </tr>--%>
                                <tr>
                                    <td class="tdBorder">วงเงินอนุมัติสูงสุด</td>
                                    <td id="tdAmount">5 เท่าของรายได้ประจำ </td>
                                </tr>
                                <tr>
                                    <td class="tdBorder">ดอกเบี้ย</td>
                                    <td id="tdInterest">20% </td>
                                </tr>

                                <tr>
                                    <td class="tdBorder">ค่าธรรมเนียมจัดการเงินกู้</td>
                                    <td td="tdFee">ฟรี!</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <label>จุดเด่นและโปรโมชั่นของสินเชื่อ</label>
                    <div class="content" id="tdPromo">
                    </div>
                    <%--<div class="content">
                        <p>เงื่อนไข</p>
                        <p>ผู้สมัครสมัครสินเชื่อเงินสดกรุงศรีเฟิร์สช้อยส์ ณ วันสมัคร ตั้งแต่วันที่ วันที่ 11 มี.ค. – 30 มิ.ย. 58</p>
                        <p>1.	อัตราดอกเบี้ยปกติแบบลดต้นลดดอกต่อปี</p>
                        <p>2.	สมาชิกใหม่ที่สมัครสามารถรู้ผลอนุมัติภายใน 30 นาที เมื่อสมัครที่ศูนย์บริการกรุงศรีเฟิร์สช้อยส์ ทั่วประเทศและเอกสารที่ใช้ในการสมัครจะต้องมีความครบถ้วนและสมบูรณ์</p>
                        <p>3.	สมาชิกใหม่ที่จะได้รับโอนเงินภายในวันเดียวกันเฉพาะการโอนเงินเข้าบัญชีธนาคารกรุงเทพ, ธนาคารกรุงศรีอยุธยา, ธนาคารกรุงไทย, ธนาคารไทยพาณิชย์, ธนาคารกสิกรไทยและจะต้องทราบผลการอนุมัติก่อน 13.00 น. (กรณีที่ทราบผลการอนุมัติหลัง 13.00 น. จะได้รับเงินในวันทำการถัดไป)</p>
                        <p>4.	เฉพาะจำนวนเงินที่สมาชิกใหม่เบิกถอนเงินสดภายใน 90 วันนับจากวันที่ได้รับอนุมัติสินเชื่อ สำหรับการเบิกถอนเงินสดครั้งถัดไป บริษัทฯ จะเรียกเก็บในอัตราดอกเบี้ยปกติแบบลดต้นลดดอกต่อปี</p>
                    </div>--%>

                    <br />
                    <div class="content">
                        <label>เอกสารที่ใช้ประกอบการสมัคร</label>
                        <p>กรณีบุคคลธรรมดา</p>
                        <p>• สำเนาบัตรประชาชน/สำเนาบัตรประจำตัวข้าราชการหรือ รัฐวิสาหกิจ/ใบอนุญาตทำงาน   (สำหรับชาวต่างชาติ) </p>
                        <p>• สำเนาทะเบียนบ้าน (กรณีแนบบัตรข้าราชการ หรือ รัฐวิสาหกิจ)</p>
                        <p>• หนังสือรับรองเงินเดือน/สลิปเงินเดือน เดือนล่าสุด</p>
                        <p>(กรณีข้าราชการใช้หนังสือรับรองเงินเดือนตัวจริง ไม่ต้องแนบสำเนาบัญชีย้อนหลัง 3 เดือน)</p>
                        <p>• สำเนาบัญชีธนาคารย้อนหลัง 3 เดือนล่าสุด (สำหรับบัญชีที่มีเงินเดือนเข้า) </p>

                        <p>ประกอบธุรกิจส่วนตัวหรือเจ้าของกิจการ (ดำเนินกิจการไม่ต่ำกว่า 1 ปี) </p>
                        <p>• สำเนาบัตรประจำตัวประชาชน             </p>
                        <p>• สำเนาทะเบียนบ้าน</p>
                        <p>• สำเนาใบจดทะเบียนบริษัทพร้อมทั้งหน้าวัตถุประสงค์ครบทุกหน้า ล่าสุดไม่เกิน 6 เดือน</p>
                        <p>• หนังสือแสดงรายรับผู้ถือหุ้น ล่าสุดไม่เกิน 6 เดือน</p>
                        <p>• สำเนาใบจดทะเบียนการค้า/ใบอนุญาตให้ประกอบธุรกิจที่ออกโดยทางราชการ(กรณีไม่ใช่บริษัทจำกัด) </p>
                        <p>• สำเนาบัญชีธนาคารย้อนหลัง 6 เดือนล่าสุด  </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Modal -->
<div class="modal fade" id="modalShowImg" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" style="width: 95%;" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">Modal title</h4>
            </div>
            <div class="modal-body" id="modalBody" style="height: 500px">
                <iframe id="ifrImagePromo" src="http://www.pplusteam.com/UpImages/TBANK/2016/2016-03/tbank_pro_201603_2.jpg" style="border: 0; width: 100%; height: 100%"></iframe>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">คลิกปิด</button>
            </div>
        </div>
    </div>
</div>