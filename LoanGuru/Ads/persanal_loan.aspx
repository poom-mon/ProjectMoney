<%@ Page Language="C#" AutoEventWireup="true" CodeFile="persanal_loan.aspx.cs" Inherits="test_testPcredit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <style>
 
/* Table Base */

table {
  font-family: arial;
  max-width: 100%;
  background-color: transparent;
  border-collapse: collapse;
  border-spacing: 0;
}

.table { 
  width: 100%;
  margin-bottom: 20px;  
}
table, th, td {
   border: 1px solid black;
}

.table th
{ 
  font-weight: bolder;
  font-size: 12px;
  padding: 8px 15px;
  line-height: 20px;
  text-align: center;
  vertical-align: middle;
  border-top: 1px solid #dddddd;  
}

.table td {
  font-weight: normal;
  font-size: 12px;
  padding: 8px 15px;
  line-height: 20px;
  text-align: left;
  vertical-align: middle;
  border-top: 1px solid #dddddd;
}
.table thead th {
  background: #003366;
  vertical-align: bottom;
  color:White;
}   
.table tbody > tr:nth-child(odd) > td,
.table tbody > tr:nth-child(odd) > th {
  background-color: #fafafa;
}    
.table .t-small {
  width: 5%;
}
.table .t-medium {
  width: 15%;
}
.table .t-status {
  font-weight: bold;
}
.table .t-active {
  color: #46a546;
}
.table .t-inactive {
  color: #e00300;
}
.table .t-draft {
  color: #f89406;
}
.table .t-scheduled {
  color: #049cdb;
}

/* Small Sizes */
@media (max-width: 480px) { 
  .table-action thead {
    display: none;
  }
  .table-action tr {
    border-bottom: 1px solid #dddddd;
  }
  .table-action td {
    border: 0;
  }
  .table-action td:not(:first-child) {
    display: block;
  }
} 
.button {
	display: inline-block;
	text-decoration: none;
	color: #fff;
	font-weight: bold;
	background-color: #538fbe;
	padding: 20px 70px;
	font-size: 13px;
	border: 1px solid #2d6898;
	
    padding-top: 9px;
    padding-bottom: 11px;
    padding-left: 42px;
    padding-right: 47px;


}
.headerMenu
{
    font-weight:bolder;    
}
</style>  

<div class="headerMenu">
  สินเชื่อส่วนบุคคล
</div>
<!-- TABLE -->
<table class="table table-action"> 
  <thead>
    <tr>  
        <th>ธนาคาร/สถาบันการเงิน</th>
        <th style="width: 10%;">บัตรเครดิต</th>
        <th style="width: 10%;">เงินเดือนขั้นต่ำ</th>
        <th>จุดเด่นของ ผลิตภัณฑ์</th>
        <th>โปรโมชั่น</th> 
        <th>สมัคร</th> 
    </tr>
  </thead>
  
  <tbody>
    <tr> 
        <td><img src="http://www.silkspan.com/images_new/crd/logo/logo_firstchoice.gif" /></td>
        <td>
            สินเชื่อ KrungsriFirstchoice 
            (Balance Transfer)
         </td>
        <td>รายได้ขั้นต่ำ 15,000</td>
        <td>
        - ผ่อนสบายนานสูงสุด 60 เดือน 
        <br />- อัตราดอกเบี้ยแบบลดต้นลดดอก 
        <br />- วงเงินอนุมัติสูงสุดถึง 500,000 บาท
        <br />- สะดวก ง่าย รวดเร็วด้วยบริการ
          ชำระหนี้ให้เสร็จใน 1 วัน
        <br />- ฟรี! ค่าธรรมเนียมการโอนหนี้
        </td>
        <td>
        สมัครบริการโอนคงค้างสินเชื่อวันนี้
       <br /> - ดอกเบี้ยตำสุด 16.99%
       <br /> - ยอดโอนหนี้ต้องมากกว่า 
          30,000 บาทเท่านั้น *
         </td> 
        <td> 
            <a class="button" href="http://www.silkspan.com/banner/log_cbanner_counter.asp?typedealer=thinsur&fname=http://www.silkspan.com/silkspan_ssl/pl/detail_pl_krungsrifirstchoice_refin.asp">สมัคร </a>
        </td>
    </tr>
     
 <%--<tr> 
        <td>col2</td>
        <td>col3</td>
        <td>col4</td>
        <td>col5</td>
        <td>col6</td> 
        <td><button class="button">สมัคร</button></td>
    </tr> --%>
      

  </tbody>
</table>
<!-- END TABLE -->



 
    </div>
    </form>
</body>
</html>
