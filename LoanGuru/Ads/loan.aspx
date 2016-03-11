<%@ Page Language="C#" AutoEventWireup="true" CodeFile="loan.aspx.cs" Inherits="test_testPcredit" %>

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
  บัตรกดเงินสด
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
        <td><img src="http://www.silkspan.com/images_new/crd/logo/logo_cimb.gif" /></td>
        <td>
            สินเชื่อบุคคล PersonalCash
         </td>
        <td>รายได้ขั้นต่ำ 20,000</td>
        <td>
            - อัตราดอกเบี้ยสุดพิเศษ
            <br /> - วงเงินสูงสุด 1,500,000 บาท
            <br /> - ผ่อนได้นานสูงสุด 60 เดือน
            <br /> - ไม่ต้องมีหลักทรัพย์หรือ
            <br /> บุคคลค้ำประกัน
        </td>
        <td>
           - พิเศษ! รับดอกเบี้ยต่ำสุด
            18% ต่อปีตลอดอายุสัญญา
         </td> 
        <td> 
            <a class="button" href="http://www.silkspan.com/banner/log_cbanner_counter.asp?typedealer=thinsur&fname=http://www.silkspan.com/silkspan_ssl/pl/detail_pl_cimb.asp">สมัคร </a>
        </td>
    </tr>

     <tr> 
        <td><img src="http://www.silkspan.com/images_new/crd/logo/logo_firstchoice.gif" /></td>
        <td>
            สินเชื่อ KrungsriFirstchoice
         </td>
        <td>รายได้ขั้นต่ำ 12,000</td>
        <td>
        - ผ่อนสบายนานสูงสุด 36 เดือน 
        <br />- อัตราดอกเบี้ยแบบลดต้นลดดอก 
        <br />- วงเงินอนุมัติสูงสุด 300,000 บาท
        <br />- รู้ผลไวภายใน 30 นาที ...รับเงินทันใจ
          พร้อมรับเงินในวันเดียวกัน
        </td>
        <td>
            สมัครสินเชื่อ กรุงศรีเฟิร์สช้อยส์ วันนี้
            - ดอกเบี้ยต่ำสุดๆ 19% ต่อปี*
         </td> 
        <td> 
            <a class="button" href="http://www.silkspan.com/banner/log_cbanner_counter.asp?typedealer=thinsur&fname=/silkspan_ssl/pl/detail_pl_krungsrifirstchoice.asp">สมัคร </a>
        </td>
    </tr>
     <tr> 
        <td><img src="http://www.silkspan.com/images_new/crd/logo/logo_firstchoice.gif" /></td>
        <td>
           สินเชื่อ KrungsriFirstchoice 
           (Balance Transfer)
         </td>
        <td>รายได้ขั้นต่ำ 15,000</td>
        <td>
            - ผ่อนสบายนานสูงสุด 60 เดือน 
           <br /> - อัตราดอกเบี้ยแบบลดต้นลดดอก 
           <br /> - วงเงินอนุมัติสูงสุดถึง 500,000 บาท
           <br />- สะดวก ง่าย รวดเร็วด้วยบริการ
              ชำระหนี้ให้เสร็จใน 1 วัน
           <br />- ฟรี! ค่าธรรมเนียมการโอนหนี้
        </td>
        <td>
            สมัครบริการโอนคงค้างสินเชื่อวันนี้
          <br/>- ดอกเบี้ยตำสุด 16.99%
          <br />- ยอดโอนหนี้ต้องมากกว่า 
           30,000 บาทเท่านั้น *
         </td> 
        <td> 
            <a class="button" href="http://www.silkspan.com/banner/log_cbanner_counter.asp?typedealer=thinsur&fname=/silkspan_ssl/pl/detail_pl_krungsrifirstchoice_refin.asp">สมัคร </a>
        </td>
    </tr>
     <tr> 
        <td><img src="http://www.silkspan.com/images_new/crd/logo/logo_central.jpg" /></td>
        <td>
            สินเชื่อ เซ็นทรัล
         </td>
        <td>รายได้ขั้นต่ำ 20,000</td>
        <td>
            - วงเงินอนุมัติสูงสุด 5 เท่าของรายได้ 
           <br/> - โอนเงินภายใน 1 วัน 
           <br/> - วงเงินสินเชื่อเบิกเพิ่มได้เมื่อต้องการ 
           <br/> - ไม่มีค่าธรรมเนียมจัดการสินเชื่อ 
           <br/> - ผ่อนชำระนานสูงสุด 60 เดือน 
           <br /> - บริการทางโทรศัพท์ Personal
              Cash Line ได้ตลอด 24 ชม.
        </td>
        <td>
           สมัครสินเชื่อเซ็นทรัล 
          เอ็กซ์คลูซีฟ แคช วันนี้ 
       <br /> - รับอัตราดอกเบี้ยสุดพิเศษ 0%
          นานสูงสุด 3 เดือน 
        <br />  *รับเพิ่ม Gift Voucher
           มูลค่าสูงสุด 1,000 บาท
         </td> 
        <td> 
            <a class="button" href="http://www.silkspan.com/banner/log_cbanner_counter.asp?typedealer=thinsur&fname=http://www.silkspan.com/silkspan_ssl/pl/detail_pl_central.asp">สมัคร </a>
        </td>
    </tr>

     <tr> 
        <td><img src="http://www.silkspan.com/images_new/crd/logo/logo_bay.gif" /></td>
        <td>
            สินเชื่อหมุนเวียนส่วนบุคคล
         </td>
        <td>รายได้ขั้นต่ำ 15,000</td>
        <td>
        - วงเงินอนุมัติสูงสุดถึง 1 ล้านบาท 
          หรือสูงสุดไม่เกิน 5 เท่าของรายได้*
       <br /> - รับเงินก้อนใหญ่ ผ่อนจ่ายสบาย
          สูงสุด 60 เดือน
      <br />  - ไม่ต้องใช้หลักทรัพย์ 
          หรือผู้ค้ำประกัน
      <br />  - อัตราดอกเบี้ย แบบลดต้นลดดอก
        </td>

        <td>
            - สมัครเพียงครั้งเดียวสามารถใช้
            วงเงินได้ตลอดไป 
           <br /> - จ่ายชำระคืนสบายๆขั้นต่ำเพียง 3%*
           <br /> - สะดวกด้วยหลากหลายช่องทาง
            การชำระเงิน
           <br />  - ฟรี! ค่าอากรแสตมป์
           <br /> -ฟรี!ค่าธรรมเนียมในการโอนเงิน
            เข้าบัญชีธนาคารอื่นหลังได้รับ
            การอนุมัติ
           <br /> - รับเงินก้อนแรกได้ง่ายๆ ด้วยบริการ
            โอนเงินเข้าบัญชี
         </td> 
        <td> 
            <a class="button" href="http://www.silkspan.com/banner/log_cbanner_counter.asp?typedealer=thinsur&fname=http://www.silkspan.com/silkspan_ssl/pl/detail_pl_bay_type1.asp">สมัคร </a>
        </td>
    </tr>

  </tbody>
</table>
<!-- END TABLE -->



 
    </div>
    </form>
</body>
</html>
