<%@ Control Language="C#" AutoEventWireup="true" CodeFile="wuc_th_credit2.ascx.cs" Inherits="credit_form_wuc_ThCreditCenter" %>

<style>
    .content > p {
        color: black;
    }
</style>

<section id="product" style="padding-top: 10px;">
    <div class="container" style="padding-left: 0px; padding-right: 0px;background-color:#f5f5f5;padding:20px;">
        <div class="col-md-12">
            <div class="form-area formAr">
                <div class="row form-group"> 

                <h2 style="text-align: center;" class="fontcolor">สมัครบัตรเครดิต </h2>
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
                    <div class="col-xs-12 col-sm-8 clearfix  tbmin ">
                        <input id="tbName" placeholder="ชื่อ-นามสกุล" class="form-control" type="text" />
                        <div class="_alert-meg">ชื่อ-นามสกุล</div>
                    </div>
                </div> 
                <%--<div class="form-group">
                    <input id="tbBirthdate" placeholder="วันเกิด" class="form-control" type="text" />
                    <div class="_alert-meg">วันเกิด</div>
                </div>--%>

               <div class="row form-group">
                    <div class="col-xs-12 col-sm-3 clearfix" id="Div1">
                        <b>วันเกิด</b>
                    </div>
                    <div class="col-xs-12 col-sm-3 clearfix">
                        <select name="ddlDayBirth" id="ddlDayBirth" class="form-control">
                            <option value="0">-------วันเกิด-------</option>
                        </select>

                        <div class="_alert-meg">วันเกิด</div>
                    </div>

                    <div class="col-xs-12 col-sm-3 clearfix tbmin">
                        <select name="ddlMonthBirth" id="ddlMonthBirth" class="form-control">
                            <option value="0">-------เดือนเกิด-------</option>
                        </select>
                         <div class="_alert-meg">เดือนเกิด</div>
                    </div>

                   <div class="col-xs-12 col-sm-3 clearfix tbmin">
                        <select name="ddlYearBirth" id="ddlYearBirth" class="form-control">
                            <option value="0">-------ปีเกิด-------</option>
                        </select>
                       <div class="_alert-meg">ปีเกิด</div>
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
                    <input type="email" class="form-control" id="tbEmail" name="email" placeholder="email" required>
                    <div class="_alert-meg">อีเมลล์</div>
                </div>

                <br />

                <div class="form-group">
                    <i class="fa fa-home"></i>
                    <label>ข้อมูลที่ทำงาน</label> 
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

                

                <div class="row form-group">
                    <div class="col-xs-12 col-sm-2 clearfix" id="lbAge">
                        <b>อายุงาน</b>
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
                    <div class="col-xs-12 col-sm-5 clearfix tbmin">
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

                <br />
                 

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
                    <input id="btnUpdatePq" type="button" class="btn btn-primary btncompare" value="สมัครบัตรเครดิต">
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