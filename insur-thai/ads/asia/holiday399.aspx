<%@ Page Title="" Language="C#" MasterPageFile="~/MS_Main.master" AutoEventWireup="true" CodeFile="holiday399.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ctpHeadMenu" Runat="Server">

        
    <section>
      <div class="large-12 columns">
                <h1 style="font-size: 58px;">ประกันรถ30วัน เพียง 399 บาท</h1>  
                <hr>
                <p>คุ้มครอง 1 แสนบาท สบายใจเที่ยววันหยุดหายห่วง</p> 
                <a href="<%=finalUrl %>" class="btn btn-default btn-xl page-scroll">สมัครประกัน</a>
           </div>
    </section>
     

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ctpMain" Runat="Server">
 

<section id="product" style="padding-bottom: 0px;">
    <div class="container" style="padding-left: 0px; padding-right: 0px;">
        <div class="col-md-12"> 
                <%--<div class="row form-group"> 
                    <div class="col-xs-12 col-sm-12 clearfix"> 
                        <img id="imgImageLogo" data-src="holder.js/1089x220" class="img-responsive" alt="banner" src="http://www.silkspan.com/v2/images/insurance/holiday/banner-acc.jpg"
                            data-holder-rendered="true" style="width: 1089px; height: 320px;"> 
                    </div>  
                </div>--%>
                 
                <div class="col-xs-12 col-sm-12 clearfix"> 
                    <%--<img id="img1" data-src="holder.js/1089x220" class="img-responsive" alt="banner" src="http://www.silkspan.com/v2/images/insurance/holiday/banner-acc.jpg"
                        data-holder-rendered="true" 
                        style="width: 100%;height: 420px;margin-top: 95px;"
                        > --%> 
                    <div class="banner-wrap" style="background-color: White;text-align:center;">
                        <a class="sm-scroll" href="#quote-ins-plus">
                            <img src="http://www.silkspan.com/v2/images/insurance/holiday/banner-acc.jpg"  border="0"></a>
                    </div> 
                </div> 

                <div class="row form-group">
                    <div class="col-xs-12 col-sm-12 clearfix">
                        <div class="table-responsive"> 
                                <table class="table table-striped table-condensed table-hover" style="font-size: 12px;">
                                    <tbody>
                               
                                         <tr>
                                            <td class="tdBorder" colspan="2">
                                            <div class="col-xs-12 col-sm-8 clearfix">
                                                    <h4>ความคุ้มครอง รถเก๋ง+รถกระบะ</h4>
                                                </div>
                                                <div class="col-xs-12 col-sm-4 clearfix">
                                                    <img style="width: 92px;" src="http://www.silkspan.com/v2/images/perfect-holiday/asia-logo.png">
                                                </div> 
                                            </td> 
                                        </tr>

                                        <tr>
                                            <td colspan="2" class="tdBorder">
                                                <span>ประกันรถ 3+ (3 พลัส) คุ้มครองรถชน โดยต้องมีคู่กรณีเป็นยานพาหนะทางบก จึงสามารถเคลมได้</span>
                                                  <br />ให้ความคุ้มครองซ่อมทั้งรถคู่กรณีและรถเรา ในการนำรถเราเข้าซ่อม โดยมีเงื่อนไข
                                                  <br><b>(1)</b> ต้องเป็นกรณีรถชนรถเท่านั้น ถอยชนเสา โดนหินกระจกแตก <i>เคลมไม่ได้</i>
                                                  <br /><b>(2)</b> ต้องมีคู่กรณี ถ้าชนแล้วหนี หรือไม่ทราบคู่กรณี <i>เคลมไม่ได้</i>
                                            </td>
                                        </tr>
                                        <tr>
                                              <td class="tdBorder" colspan="2">
                                                 <h4>ความคุ้มครอง รถที่เอาประกัน (รถเรา) </h4>
                                              </td> 
                                        </tr>

                                        <tr>
                                            <td class="tdBorder"> รถยนต์เสียหาย</td>
                                            <td >100,000.-/ครั้ง </td>
                                        </tr>
                                        <tr>
                                            <td class="tdBorder">รถยนต์สูญหาย / ไฟไหม้  </td>
                                            <td >ไม่คุ้มครอง</td>
                                        </tr>

                                        <tr>
                                            <td colspan="2">
                                                <h4> ความคุ้มครอง ผู้ขับขี่และผู้โดยสาร (คนในรถ)</h4> 
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="tdBorder"> 
                                                ผู้ขับขี่เสียชีวิต 
                                            </td>
                                            <td >100,000.-/คน</td>
                                        </tr>
                                        <tr>
                                            <td class="tdBorder"> 
                                                ผู้โดยสารเสียชีวิตไม่เกิน 3 คน 
                                            </td>
                                            <td>100,000.-/คน</td>
                                        </tr>

                                         <tr>
                                            <td class="tdBorder"> 
                                                ค่ารักษาพยาบาลไม่เกิน 4 คน 
                                            </td>
                                            <td>100,000.-/คน</td>
                                        </tr>


                                        <tr>
                                            <td class="tdBorder"> 
                                                ประกันตัวผู้ขับขี่  
                                            </td>
                                            <td>300,000.-/ครั้ง</td>
                                        </tr>

                                        <tr>
                                            <td  colspan="2"> 
                                                   <h4> ความคุ้มครอง บุคคลภายนอกรถ (รถคู่กรณี) </h4>
                                                </td>
                                            </tr> 
                                        <tr>
                                            <td class="tdBorder"> 
                                                ทรัพย์สิน 
                                            </td>
                                            <td>1,000,000.-/ครั้ง</td>
                                        </tr>

                                        
                                        <tr>
                                            <td class="tdBorder"> 
                                                 (บาดเจ็บ+เสียชีวิต) 
                                            </td>
                                            <td>10,000,000.-/ครั้ง</td>
                                        </tr>
                                        <tr>
                                            <td colspan="2" style="text-align:center;padding:10px;">
                                                <a href="<%=finalUrl %>" class="btn btn-primary btn-xl page-scroll">สมัครประกัน</a>
                                            </td>
                                        </tr>
                                         
                                    </tbody>
                                </table>

                     </div>
                    </div>

                 </div> 
         </div>
</div>
</section>


    <section style="padding-top: 0px;background-color:#F2F2F2;">
		<div class="container">
			<div class="wrap-big">
				<h2 class="blue text-center clearfix"><span class="red">รับความคุ้มครองทันที แค่ 3 ขั้นตอน</span> </h2>

                <div class="row">

                <div class="col-lg-4 col-md-6 text-center">
                    <div class="service-box">
                            <i class="fa fa-4x fa-list-alt wow bounceIn text-primary" style="visibility: visible; animation-name: bounceIn;"></i>
                            <h3>1. กรอกข้อมูล</h3>
                    </div>
                </div>

                     <div class="col-lg-4 col-md-6 text-center">
                    <div class="service-box">
                            <i class="fa fa-4x fa-credit-card wow bounceIn text-primary" style="visibility: visible; animation-name: bounceIn;"></i>
                            <h3>2. ชำระเงิน</h3>
                    </div>
                </div>

                     <div class="col-lg-4 col-md-6 text-center">
                    <div class="service-box">
                            <i class="fa fa-4x fa-mobile wow bounceIn text-primary" style="visibility: visible; animation-name: bounceIn;"></i>
                            <h3>3. รับ SMS คุ้มครองทันที</h3>
                    </div>
                </div>
               </div>
			</div>
		</div>
	</section>

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ctpScript" Runat="Server">

    
</asp:Content>

