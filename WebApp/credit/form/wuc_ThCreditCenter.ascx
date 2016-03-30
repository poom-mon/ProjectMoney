<%@ Control Language="C#" AutoEventWireup="true" CodeFile="wuc_ThCreditCenter.ascx.cs" Inherits="credit_form_wuc_ThCreditCenter" %>



<section id="product" style="padding-top: 10px;"> 
             <div class="container" style="padding-left:0px;padding-right:0px;"> 
              <div class="col-md-12">
                        <div class="form-area formAr"> 
                              <h2 style="text-align:center;"> สมัครบัตรเครดิต </h2>
                                 

                                      <div class="row form-group">
                                            <div class="col-xs-12 col-sm-4 clearfix"> 
                                               <select name="IyearC" id="ddlYearCar" class="form-control">
                                                     <option value="0">คำนำหน้า</option> 
                                                      <option value="นาย">นาย</option> 
                                                      <option value="นางสาว">นางสาว</option> 
                                                      <option value="นาง">นาง</option> 
                                                </select> 
                                            </div>
                                             <div class="col-xs-12 col-sm-8 clearfix">
                                                    <input id="tbName" placeholder="ชื่อ-นามสกุล"  class="form-control"  type="text" />
                                             </div>
                                        </div>


                                        <div class="form-group">  
                                              <textarea id="taAddress"  class="form-control" placeholder="ที่อยู่บ้าน/ที่พัก"  rows="2" cols="20"></textarea>
                                        </div>
                                        <div class="form-group">  
                                              <textarea id="taWork"  class="form-control" placeholder="ที่อยู่ที่ทำงาน"  rows="2" cols="20"></textarea>
					                    </div>

                                        <div class="form-group"> 
                                               <input id="tbAge" placeholder="อายุ"  class="form-control"  type="text" />
					                    </div>

                                          <div class="row form-group">
                                          <div class="col-xs-12 col-sm-2 clearfix"> 
                                          <label for="name">เพศ</label>
                                          </div>
                                            <div class="col-xs-12 col-sm-10 clearfix">  
                                                   <input type="radio" name="rd_sex"  value="1" > ชาย &nbsp;
                                                   <input type="radio" name="rd_sex"  value="2"  > หญิง
                                            </div> 
                                        </div>

                                         
                                          <div class="row form-group">
                                                <div class="col-xs-12 col-sm-2 clearfix"> 
                                                     อายุงาน
                                                </div>
                                                <div class="col-xs-12 col-sm-5 clearfix"> 
                                                    <input id="tbAgeWork" placeholder="ปี"  class="form-control"  type="text" />  
                                                </div>
                                                <div class="col-xs-12 col-sm-5 clearfix">
                                                    <input id="tbAgeWorkMonth" placeholder="เดือน"  class="form-control"  type="text" />  
                                                </div>
                                        </div> 

                                        <div class="form-group">  
                                                <select name="ddlWorkProvince" id="Select1" class="form-control">
                                                    <option value="0">จังหวัดที่ทำงาน</option> 
                                                    <option value="กรุงเทพ">กรุงเทพ</option>  
                                            </select>  
					                    </div>
                                               
                                        <div class="form-group">
                                               <input id="tbMobile" name="alertmobile" maxlength="10" onkeypress=" return num_key(event);" class="form-control inline-sm" type="text" placeholder="โทรศัพท์ 08XXXXXXXX">
                                         </div>

					                    <div class="form-group">
 					                        <input id="tbTelHome" onkeypress=" return num_key(event);" maxlength="9" class="form-control input-icon tel" type="tel" placeholder="กรอกเบอร์โทรศัพท์บ้าน 02xxxxxxx"> 
                                        </div>   

                                            <div class="form-group">
 					                        <input id="tbTelWork" onkeypress=" return num_key(event);" maxlength="9" class="form-control input-icon tel" type="tel" placeholder="กรอกเบอร์โทรศัพที่ทำงาน 02xxxxxxx"> 
                                        </div>   
                                         
                                         <div class="form-group">
						                     <input type="text" class="form-control" id="Text1" name="email" placeholder="email" required>
					                       </div> 


                                            <div class="form-group">
                                                <input type="checkbox" name="confirm_1" id="confirm_1" value="yes" class="required" > ท่านรับเงินเดือนผ่านบัญชีธนาคาร <font color="red">*ไม่ได้รับเป็นเงินสด*</font> มี Slip เงินเดือน , มีใบรับรองเงินเดือน
                                            </div>
                                              <div class="form-group">
                                                <input type="checkbox" name="confirm_2" id="confirm_2" value="yes" class="required" > ท่านมีฐานเงินเดือนประจำ ไม่ต่ำกว่า 15,000 บาท ต่อเดือน<br>
                                              </div>
                                              <div class="form-group">
                                                 <input type="checkbox" name="confirm_3" id="confirm_3" value="yes" class="required"  > สำหรับพนักงานเงินเดือน ท่านต้องทำงานประจำเกิน 6 เดือนขึ้นไป / สำหรับเจ้าของธุรกิจต้องทำธุรกิจเกิน 1 ปีขึ้นไป<br>
                                              </div>
                                              <div class="form-group">
                                                <input type="checkbox" name="confirm_4" id="confirm_4" value="yes" class="required"> ท่านไม่ใช่ลูกจ้างชั่วคราว มีเบอร์ออฟฟิศที่บริษัท ถ้าเป็นเจ้าของกิจการต้องมีเอกสารการจดทะเบียน<br>
                                              </div>                                                                               
                                              <div class="form-group">                                                             
                                                <input type="checkbox" name="confirm_5" id="confirm_5" value="yes" class="required"> ท่านไม่ได้ทำงานในอาชีพเหล่านี้ อาชีพที่ธนาคารไม่รับพิจารณา : แม่บ้าน แมสเซนเจอร์ พนักงานขับรถ รปภ. ทหาร ตำรวจ ข้าราชการการเมือง กำนัน ผู้ใหญ่บ้าน อบจ อบต และ งดรับพิจารณา พนักงานที่ทำงานอยู่ใน 3 จังหวัด ชายแดนภาคใต้<br>
                                              </div>                                                                               
                                              <div class="form-group">                                                             
                                                <input type="checkbox" name="confirm_6" id="confirm_6" value="yes" class="required"> ท่านไม่เคยติดประวัติชำระเงินล่าช้า เครดิตบูโร กับทางธนาคารหรือสถาบันการเงินใดๆ  หรือ เคลียร์ประวัติไปแล้วเกิน 1 ปีขึ้นไป<br>
                                              </div>                                                                               
                                              <div class="form-group">                                                             
                                                <input type="checkbox" name="confirm_7" id="confirm_7" value="yes" class="required"> ท่านสามารถให้เจ้าหน้าที่ธนาคารติดต่อ ในเวลาทำงานได้  วันจันทร์ - วันศุกร์ 9:00 - 18:00 น.<br>
                                              </div>  
            
                                        <div class="form-group" style="text-align:center;"> 
                                                <input id="btnUpdate" type="button" class="btn btn-primary btncompare" value="สมัครบัตรเครดิต"> 
                                        </div>
                                         
                            </div>
                        </div> 
        </div>
        </section>
