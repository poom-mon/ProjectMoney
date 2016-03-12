<%@ Page Title="" Language="C#" MasterPageFile="~/MS_MAIN.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cpnHead" Runat="Server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpn_Content" Runat="Server">
   

	<section id="wrapper"> 
		<div class="row"> 
			<div class="col-sm-12">
				<section class="panel panel-default mail-container">
					<div class="panel-heading">
                        <strong>
                           <i class="glyphicon glyphicon-search" ></i> &nbsp;
                        ค้นหาสินเชือ
                        </strong>
                    </div>
					<div class="panel-body">   
                        <div class="mail-attachments"> 
                        <div class="row"> 
                            <div class="col-sm-12 col-md-6"> 
                                 <div class="form-group">
        	                        <label for="fun" class="col-sm-6 text-right">ประเภทสินเชื่อ</label>
    		                        <div class="col-sm-6" style="padding-right: 0px; padding-left: 0px;">
    			                        <div class="input-group">
    				                        <div id="radioBtn" class="btn-group">
    					                        <a class="btn btn-primary btn-sm active btnCardType"    data-cardType="credit" data-toggle="fun" data-title="Y">บัตรเครดิต</a>
                                                <a class="btn btn-primary btn-sm notActive btnCardType" data-cardType="loan" data-toggle="fun" data-title="X">บัตรกดเงินสด</a>
    					                        <a class="btn btn-primary btn-sm notActive btnCardType" data-cardType="cash" data-toggle="fun" data-title="N">โอนหนี้</a>
    				                        </div>
    				                        <input type="hidden" name="fun" id="fun">
    			                        </div>
    		                        </div>
    	                        </div> 
                             </div>
                             </div>
                          </div>   
						<div class="mail-attachments"> 
                            <div class="table-responsive">
							  <table   class="table table-striped table-condensed table-hover table-bordered" style="font-size:12px;">
								  
									<tr>   
										<th align="left">ธนาคาร</th>		
                                        <th align="left">ชื่อบัตร</th>	
                                        <th align="left">วงเงินสูงสุด </th>	  
                                        <th align="left">อัตราดอกเบี้ย </th>	  
										<th align="left">จุดเด่นของ ผลิตภัณฑ์</th>	
										<th align="left">โปรโมชั่น </th>	 
										<th align="left">สมัคร </th>	
									</tr>
                                    <tbody id="tbRows">
									<tr>
									   <td align="left">  
                                            <img src="http://www.silkspan.com//images_new/crd/logo/logo_cimb.gif"  />
                                       </td>
                                       <td align="left">kbank paywave</td>
                                       <td align="left">15,000</td>
                                       <td align="left">20%</td>
									   <td align="left">
                                        - อัตราดอกเบี้ยสุดพิเศษ
                                        - วงเงินสูงสุด 1,500,000 บาท
                                        - ผ่อนได้นานสูงสุด 60 เดือน
                                        - ไม่ต้องมีหลักทรัพย์หรือ
                                          บุคคลค้ำประกัน</td>
									   <td align="left">
                                           - พิเศษ! รับดอกเบี้ยต่ำสุด
                                            18% ต่อปีตลอดอายุสัญญา</td> 
									   <td align="left"> 

                                            <div class="btn btn-info btn-md _buttonRegist"> 
                                                 <i class="glyphicon glyphicon-edit"></i> 
                                                  สมัคร
                                           </div> 
                                       </td>
									</tr> 

								</tbody>
							</table>
							 </div>
						</div>   
					</div>
				</section>
			</div>
			
			 
			
		</div> 
	</section> 

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpnfoot" Runat="Server">
  <script src="../js/credit_loan/search_loan.js?ver=1/3/2559 9:48:16" type="text/javascript"></script>
</asp:Content>

