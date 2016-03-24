<%@ Page Title="" Language="C#" MasterPageFile="~/MS_Main.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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
						                    <input type="text" class="form-control" id="tbMobile" name="mobile" placeholder="เบอร์โทร์" required>
					                    </div> 
            
                            <div class="form-group" style="text-align:center;">
                               <%-- <button type="button" id="submit" name="submit" class="btn btn-primary pull-right btncompare">คำนวณเบี้ยประกัน</button>--%>
                                 <button type="button" id="submit" name="submit" class="btn btn-primary btncompare">คำนวณเบี้ยประกัน</button> 
                            </div>
                        </div>
                    </div> 
        </div>
    </section>

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ctpScript" Runat="Server"> 
</asp:Content>

