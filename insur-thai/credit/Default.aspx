<%@ Page Title="" Language="C#" MasterPageFile="~/MS_Main.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default2" %>

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
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ctpHeadMenu" Runat="Server">
  <section>
      <div class="large-12 columns">  
                <h1>บัตรกดเงินสด</h1>
                <hr>
                <p>เปรียบเทียบบัตรเครดิตที่เหมาะกับคุณ</p>
                <a href="#product" class="btn btn-default btn-xl page-scroll">ขอสินเชื่อ</a>
           </div>  
    </section> 
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ctpMain" Runat="Server"> 

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
    <script src="../js/cHelper.js" type="text/javascript"></script>
    <script src="../js/credit/search_loan.js" type="text/javascript"></script>
<script>
    $(".btn-pref .btn").click(function () {
        $(".btn-pref .btn").removeClass("btn-primary").addClass("btn-default");
        // $(".tab").addClass("active"); // instead of this do the below 
        $(this).removeClass("btn-default").addClass("btn-primary");
    });

   
        
 </script>
</asp:Content>


