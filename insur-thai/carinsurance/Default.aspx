<%@ Page Title="" Language="C#" MasterPageFile="~/MS_Main.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../css/email/mailtip.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ctpHeadMenu" Runat="Server">
  <section>
      <div class="large-12 columns">  
                <h1>ประกันภัยรถยนต์</h1>
                <hr>
                <p>เปรียบเทียบเบี้ยประกันภัยรถยนต์</p>
                <a href="#product"   class="btn btn-primary btn-xl page-scroll ">เปรียบเทียบเบี้ยประกันภัยรถยนต์</a>
           </div>  
    </section> 
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ctpMain" Runat="Server">
<form name="aspnetForm">
        <section   id="product"> 
             <div class="container"> 
              <div class="col-md-12">
                        <div class="form-area formAr"> 
                              <h2 style="text-align:center;"> เปรียบเทียบเบี้ยประกัน </h2>

                                <br style="clear:both">  
    				                        <div class="form-group">
                                                    <select id="ddlYearCar" class="form-control" >
                                                        <option value="0">--เลือกรถ--</option> 
                                                    </select>   
					                        </div>
					                        <div class="form-group">
                                                    <select id="ddlBandCar" class="form-control" >
                                                        <option value="0">--เลือกยี่ห้อรถ--</option> 
                                                    </select>  
					                        </div>
					                        <div class="form-group">
                                                    <select id="ddlModelcar" class="form-control" >
                                                        <option value="0">--เลือกรุ่นรถ--</option> 
                                                    </select> 					            </div>
					                        <div class="form-group">
 					                           <input id="tbMobile" onkeypress=" return num_key(event);" maxlength="10" class="form-control input-icon tel" type="tel" placeholder="กรอกเบอร์โทรศัพท์">

                                            </div>   

                                            <div class="form-group">
						                     <input type="text" class="form-control" id="tbEmail" name="email" placeholder="email" required>
					                       </div> 

            
                                <div class="form-group" style="text-align:center;"> 
                                        <input id="btnCompare" type="button" class="btn btn-primary btncompare" value="คำนวณเบี้ยประกัน" /> 
                                </div>
                            </div>
                        </div> 
        </div>
        </section> 
         <div style="display:none;"> 
         	
   

   <!--- end hidden field --> 
           <input type="hidden" value="M201603251551378" name="code">
           <input type="hidden" value="" name="typedealer">
           <input type="hidden" value="" name="banner">
           <input type="hidden" value="" name="IcheckC">
           <input type="hidden" value="" name="D1date">
           <input type="hidden" value="" name="D1month">
           <input type="hidden" value="" name="D1year">
           <input type="hidden" value="" name="D2date">
           <input type="hidden" value="" name="D2month">
           <input type="hidden" value="" name="D2year">
           <input type="hidden" value="" name="sendCoupon">
           <input type="hidden" value="" name="startCode">
           <input type="hidden" value="Mobile.Ins_Responesive_page1V5" name="systemType">
           <input type="hidden" value=""  name="hdfAllQueryString">
           <input type="hidden" value="1" name="car_category">
           <input type="hidden" value=""  name="redplate">
           <input type="hidden" value="F" name="hdf_IPLB">
           <input type="hidden" value="อื่น ๆ" name="hdf_insur_before">
           <input type="hidden" value="1" name="hdf_insur_before_type">
           <input type="hidden" value="n" name="hdf_no_oldpolicy">
           <input type="hidden" value="0" name="hdf_IageH">
           <input type="hidden" value="BKK" name="hdf_rd_useProvince">
           <input type="hidden" value="กรุงเทพมหานคร" name="sl_useProvince_UPC">
           <input type="hidden" value="00"name="provinceKey">
           <input type="hidden" value="" name="D1dateT">
           <input type="hidden" value="" name="D1monthT">
           <input type="hidden" value="" name="D1yearT">
           <input type="hidden" value="" name="D2dateT">
           <input type="hidden" value="" name="D2monthT">
           <input type="hidden" value="" name="D2yearT">
           <input type="hidden" value="0" name="IbreakC">
           <input type="hidden" value="2016" name="IyearC">
           <input type="hidden" value="TOYOTA" name="InameC">
           <input type="hidden" value="HILUX REVO E MT 2.4 CC 2 DOORS" name="ICC">
           <%--<input type="hidden" value="Hilux Revo" name="Model">--%>
           <input type="hidden" value="FORM" name="section">
           <input type="hidden" value="formshort" name="formtype">
           <input type="hidden" value="" name="alertemail">
           <input type="hidden" value="0800000000" name="alertmobile">
         </div>
        
</form>

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ctpScript" Runat="Server"> 
    <script src="//www.silkspan.com/silkspan_service/js/TrusteeCar/min/ssapi.min.js?v=2" type="text/javascript"></script>  
    <script src="../js/cHelper.js" type="text/javascript"></script>
    <script src="../js/email/jquery.mailtip.min.js" type="text/javascript"></script>
    <script src="../js/carinsurance/defaultCarIns.js" type="text/javascript"></script>
</asp:Content>

