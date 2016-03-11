<%@ Page Language="C#" AutoEventWireup="true" CodeFile="credit.aspx.cs" Inherits="test_testPcredit" %>

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
  รวมสินชื่อบัตร
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
           กรุงศรีเฟิร์สช้อยส์ วีซ่า แพลทินัม
         </td>
        <td>บัตรวีซ่า แพลทินัม 15,000</td>
        <td>
            - ผ่อนชำระ 0% สั่งได้
            <br />- 1 ฟรี 1 ที่เมเจอร์ โบว์ล ฮิต
            McDonald’s, TrueCoffee, ซับซีโร่ 
            ไอซ์สเก็ต, บลูโอ ริธึม แอนด์ โบวล์,
            และ เมเจอร์ ซีนีเพล็กซ์
            <br />- แลกคะแนนสะสมเป็นส่วนลด หรือ
            เครดิตเงินคืน 
            <br />- แลกคะแนนสะสมเป็นไมล์สะสม
            <br /> - ห้องรับรองพิเศษ Royal Silk Lounge
            <br />- บริการสำรองที่จอดรถพิเศษ
        </td>
        <td>
           - สมัครกรุงศรี เฟิร์สช้อยส์ วันนี้ 
            <br />- รับฟรี! กระเป๋าล้อลาก Caggioni
              ขนาด 26นิ้ว และขนาด 20นิ้ว 
              รวมมูลค่า 9,450 บาท 
              เพียงมียอดใช้จ่ายตามที่กำหนด 
              1 พ.ย. 58 - 31 ม.ค. 59*
         </td> 
        <td> 
            <a class="button"  target="_blank"  href="http://www.silkspan.com/banner/log_cbanner_counter.asp?typedealer=thinsur&fname=http://www.silkspan.com/silkspan_ssl/credit/detail_cc_krungsrifirstchoice.asp">สมัคร </a>
        </td>
    </tr>
      
      


 <tr> 
        <td><img src="http://www.silkspan.com/images_new/crd/logo/logo_ktc.gif" /></td>
        <td>
            บัตรเครดิต เคทีซี มาตรฐาน
         </td>
        <td>
          บัตรเงิน 15,000
          บัตรทอง 15,000
        </td>
        <td>
              - ส่วนลดร้านค้าแบรนด์เนม  10%-15%
        </td>
        <td>
          - ส่วนลดร้านค้าแบรนด์เนม 10%-15% 
            ช๊อปทุกที่...เที่ยวทั่วโลก
            ใช้บัตรเครดิต KTC ถูกกว่า 
            รับคะแนนสะสม X2
         </td> 
        <td> 
            <a class="button"  target="_blank"  href="http://www.silkspan.com/banner/log_cbanner_counter.asp?typedealer=thinsur&fname=http://www.silkspan.com/silkspan_ssl/credit/detail_cc_ktc_classicgroup01.asp">สมัคร </a>
        </td>
    </tr>


      <tr> 
        <td><img src="http://www.silkspan.com/images_new/crd/logo/logo_ktc.gif" /></td>
        <td>
          บัตรเครดิต เคทีซี JCB
         </td>
        <td>15,000</td>
        <td>
             -ส่วนลด 9% สำหรับทัวร์เอื้องหลวง
             เที่ยวประเทศญี่ปุ่น
            <br />- ส่วนลด 3% สำหรับ JTB ทัวร์และ
             โรงแรม ในประเทศญี่ปุ่น <img src="http://www.silkspan.com/images_new/crd/logo/logo_jcbrop.gif" />
        </td>
        <td>
            - Forever Rewards 2 เท่า เมื่อใช้จ่ายที่ประเทศญี่ปุ่น
         </td> 
        <td> 
            <a class="button"  target="_blank"  href="http://www.silkspan.com/banner/log_cbanner_counter.asp?typedealer=thinsur&fname=http://www.silkspan.com/silkspan_ssl/credit/detail_cc_ktc_jcb.asp">สมัคร </a>
        </td>
    </tr>


      <tr> 
        <td><img src="http://www.silkspan.com/images_new/crd/logo/logo_ktc.gif" /></td>
        <td>
           บัตรเครดิต เคทีซี Cash Back
         </td>
        <td>ไทเทเนียม 15,000</td>
        <td>
        - คืนเงิน! สูงสุด 0.8% โดยไม่จำกัด จำนวนเงินคืน
        </td>
        <td>
            ช๊อปทุกที่...เที่ยวทั่วโลก
              ใช้บัตรเครดิต KTC ถูกกว่า 
              รับคะแนนสะสม X2
         </td> 
        <td> 
            <a class="button"  target="_blank"  href="http://www.silkspan.com/banner/log_cbanner_counter.asp?typedealer=thinsur&fname=http://www.silkspan.com/silkspan_ssl/credit/detail_cc_ktc_titanium_cashback.asp">สมัคร </a>
        </td>
    </tr>


      <tr> 
       <td><img src="http://www.silkspan.com/images_new/crd/logo/logo_ktc.gif" /></td>
        <td>
            บัตรเครดิต เคทีซี
            Metro Living
            LifeStyle Group
         </td>
        <td>ไทเทเนียม 15,000</td>
        <td>
         - รับคะแนนสะสม Forever
           Rewards 2 เท่า
        </td>
        <td>
             ช๊อปทุกที่...เที่ยวทั่วโลก
              ใช้บัตรเครดิต KTC ถูกกว่า 
              รับคะแนนสะสม X2
         </td> 
        <td> 
            <a class="button"  target="_blank"  href="http://www.silkspan.com/banner/log_cbanner_counter.asp?typedealer=thinsur&fname=http://www.silkspan.com/silkspan_ssl/credit/detail_cc_ktc_titanium_iam.asp">สมัคร </a>
        </td>
    </tr>


      <tr> 
         <td><img src="http://www.silkspan.com/images_new/crd/logo/logo_ktc.gif" /></td>
        <td>
            บัตรเครดิต เคทีซี Auto Group
         </td>
        <td>ไทเทเนียม 15,000
แพลทินัม 30,000</td>
        <td>
        -  ส่วนลดพิเศษเฉพาะบัตร
        <img src="http://www.silkspan.com/images_new/crd/logo/logo_auto_01.gif" alt="">
        </td>
        <td>
           ช๊อปทุกที่...เที่ยวทั่วโลก
              ใช้บัตรเครดิต KTC ถูกกว่า 
              รับคะแนนสะสม X2
         </td> 
        <td> 
            <a class="button"  target="_blank"  href="http://www.silkspan.com/banner/log_cbanner_counter.asp?typedealer=thinsur&fname=http://www.silkspan.com/silkspan_ssl/credit/detail_cc_ktc_autogroup01.asp">สมัคร </a>
        </td>
    </tr>



      <tr> 
         <td><img src="http://www.silkspan.com/images_new/crd/logo/logo_ktc.gif" /></td>
        <td>
           บัตรเครดิต เคทีซี Sport Group
         </td>
        <td>ไทเทเนียม 15,000
แพลทินัม 30,000</td>
        <td>
         - รับส่วนลด จากผลิตภัณฑ์ 
              TaylorMade และร้าน Sports 
              Revolution   <img src="http://www.silkspan.com/images_new/crd/logo/logo_ktc_sport.gif" alt="">
        </td>
        <td>
           ช๊อปทุกที่...เที่ยวทั่วโลก
  ใช้บัตรเครดิต KTC ถูกกว่า 
  รับคะแนนสะสม X2
         </td> 
        <td> 
            <a class="button"  target="_blank"  href="http://www.silkspan.com/banner/log_cbanner_counter.asp?typedealer=thinsur&fname=http://www.silkspan.com/silkspan_ssl/credit/detail_cc_ktc_hospital01.asp">สมัคร </a>
        </td>
    </tr>



      <tr> 
         <td><img src="http://www.silkspan.com/images_new/crd/logo/logo_ktc.gif" /></td>
        <td>
            บัตรเครดิต เคทีซี Hospital Group
         </td>
        <td>ไทเทเนียม 15,000
            แพลทินัม 30,000</td>
        <td>
        -รับส่วนลดและสิทธิประโยชน์ 
        <img src="http://www.silkspan.com/images_new/crd/logo/logo_ktc_hospital.gif" alt="">
        </td>
        <td>
              ช๊อปทุกที่...เที่ยวทั่วโลก
              ใช้บัตรเครดิต KTC ถูกกว่า 
              รับคะแนนสะสม X2
         </td> 
        <td> 
            <a class="button"  target="_blank"  href="http://www.silkspan.com/banner/log_cbanner_counter.asp?typedealer=thinsur&fname=/silkspan_ssl/credit/detail_cc_ktc_hospital01.asp">สมัคร </a>
        </td>
    </tr>



      <tr> 
        <td><img src="http://www.silkspan.com/images_new/crd/logo/logo_ktc.gif" /></td>
        <td>
           บัตรเครดิต เคทีซี Shopping Group
         </td>
        <td>ไทเทเนียม 15,000</td>
        <td>
        - รับคะแนนสะสม Forever Rewards 2 เท่า
        </td>
        <td>
           ช๊อปทุกที่...เที่ยวทั่วโลก
  ใช้บัตรเครดิต KTC ถูกกว่า 
  รับคะแนนสะสม X2
         </td> 
        <td> 
            <a class="button"  target="_blank"  href="http://www.silkspan.com/banner/log_cbanner_counter.asp?typedealer=thinsur&fname=http://www.silkspan.com/silkspan_ssl/credit/detail_cc_ktc_titanium_shopping.asp">สมัคร </a>
        </td>
    </tr>


      <tr> 
        <td><img src="http://www.silkspan.com/images_new/crd/logo/logo_ktc.gif" /></td>
        <td>
           บัตรเครดิต เคทีซี
Travel Group
         </td>
        <td>ไทเทเนียม 15,000
แพลทินัม 30,000</td>
        <td>
        - รับคะแนนสะสม Forever
  Rewards 2 เท่า
- ส่วนลดพิเศษ! มากมาย 
  สำหรับคนรักการท่องเที่ยว
   <img src="http://www.silkspan.com/images_new/crd/logo/logo_ktc_travelall.gif" alt="">
        </td>
         <td>
           ช๊อปทุกที่...เที่ยวทั่วโลก
  ใช้บัตรเครดิต KTC ถูกกว่า 
  รับคะแนนสะสม X2
         </td>  
        <td> 
            <a class="button"  target="_blank"  href="http://www.silkspan.com/banner/log_cbanner_counter.asp?typedealer=thinsur&fname=http://www.silkspan.com/silkspan_ssl/credit/detail_cc_ktc_travelgroup01.asp">สมัคร </a>
        </td>
        </tr>



  <tr>  
          <td><img src="http://www.silkspan.com/images_new/crd/logo/logo_ktc.gif" /></td>
        <td>
           บัตรเครดิต เคทีซี
Insurance Group
         </td>
        <td>ไทเทเนียม 15,000</td>
        <td>
         -ฟรี บริการช่วยเหลือฉุกเฉินตลอด 
             24 ชั่วโมง ทั่วประเทศ
         <br />   - ส่วนลดค่าเบี้ยประกันภัย 10-23%
        </td>
         <td>
           ช๊อปทุกที่...เที่ยวทั่วโลก
  ใช้บัตรเครดิต KTC ถูกกว่า 
  รับคะแนนสะสม X2
         </td>  
        <td> 
            <a class="button"  target="_blank"  href="http://www.silkspan.com/banner/log_cbanner_counter.asp?typedealer=thinsur&fname=http://www.silkspan.com/silkspan_ssl/credit/detail_cc_ktc_insurance.asp">สมัคร </a>
        </td>
    </tr>



      <tr> 
        <td><img src="http://www.silkspan.com/images_new/crd/logo/logo_ktc.gif" /></td>
        <td>
          บัตรเครดิต เคทีซี Senior Group
         </td>
        <td>
            ไทเทเนียม 15,000
            แพลทินัม 30,000</td>
        <td>
         - รับเงินคืน 1% ของการใช้
          จ่ายทุกรายการที่เกิดขึ้นในวันพุธ
          เข้าบัญชีบัตรเครดิตในรอบบิลถัดไป
          ของผู้ถือบัตรนั้นๆ
        </td>
        <td>
          ช๊อปทุกที่...เที่ยวทั่วโลก
          ใช้บัตรเครดิต KTC ถูกกว่า 
          รับคะแนนสะสม X2
         </td> 
        <td> 
            <a class="button"  target="_blank"  href="http://www.silkspan.com/banner/log_cbanner_counter.asp?typedealer=thinsur&fname=http://www.silkspan.com/silkspan_ssl/credit/detail_cc_ktc_senior.asp">สมัคร </a>
        </td>
    </tr>


      <tr> 
        <td><img src="http://www.silkspan.com/images_new/crd/logo/logo_ctb2.gif" /></td>
        <td>
            บัตรเครดิต ซิตี้แบงก์ แพลตตินั่มรีวอร์ด
         </td>
        <td>15,000</td>
        <td>
        - รับคะแนนสะสม 3 เท่า 
          ทุกการใช้จ่าย 25 บาท 
       <br /> - รับเครดิตเงินคืน 2% ทุกการใช้จ่าย
          ที่ปั๊มเชลล์ 
       <br /> - พิเศษกว่าด้วยส่วนลดและสิทธิพิเศษ
          ที่ 2,000 ร้านอาหารชั้นนำ
        </td>
        <td>
             รับฟรีเครดิตเงินคืน 1,000 บาท
             รีวอร์ด เมื่อสมัครบัตรฯ ผ่านออนไลน์ *
         </td> 
        <td> 
            <a class="button"  target="_blank"  href="http://www.silkspan.com/banner/log_cbanner_counter.asp?typedealer=thinsur&fname=http://www.silkspan.com/silkspan_ssl/credit/detail_cc_citi_platinum_rewards.asp">สมัคร </a>
        </td>
    </tr>



      <tr> 
        <td><img src="http://www.silkspan.com/images_new/crd/logo/logo_ctb2.gif" /></td>
        <td>
            บัตรเครดิต ซิตี้แบงก์ 
แคชแบ็ก
         </td>
        <td>15,000</td>
        <td>
         - รับเครดิตเงินคืนเข้าบัญชี 1%
          สำหรับทุกยอดการใช้จ่าย 
        <br />- ฟรี บริการเลขาส่วนตัว ตลอด 24 ช.ม.
          และบริการช่วยเหลือฉุกเฉินบน
          ท้องถนน ตลอด 24 ช.ม. 2 ครั้ง/ปี
        </td>
        <td>
            รับฟรีเครดิตเงินคืน 1,000 บาท
           รีวอร์ด เมื่อสมัครบัตรฯ ผ่านออนไลน์ *
         </td> 
        <td> 
            <a class="button"  target="_blank"  href="http://www.silkspan.com/banner/log_cbanner_counter.asp?typedealer=thinsur&fname=http://www.silkspan.com/silkspan_ssl/credit/detail_cc_citi_cashback.asp">สมัคร </a>
        </td>
    </tr>

      <tr> 
        <td><img src="http://www.silkspan.com/images_new/crd/logo/logo_ctb2.gif" /></td>
        <td>
            บัตรเครดิต ซิตี้แบงก์ 
            รอยัลออร์คิดพลัส 
              แพลตตินั่มซีเล็คท์
         </td>
        <td>30,000</td>
        <td>
         - รับคะแนนสะสม 1 ไมล์ เมื่อมีการ
              ใช้จ่ายทุก 20 บาท
            <br />- คะแนนไมล์สะสม ไม่มีวันหมดอายุ
            <br />- ฟรีบริการห้องพักรับรองพิเศษ Royal
              Silk ที่สนามบินสุวรรณภูมิปีละ 2 ครั้ง
        </td>

        <td>
            รับฟรีไมล์สะสม 2,500 ไมล์
  รีวอร์ด เมื่อสมัครบัตรฯ ผ่านออนไลน์ *
         </td> 
        <td> 
            <a class="button"  target="_blank"  href="http://www.silkspan.com/banner/log_cbanner_counter.asp?typedealer=thinsur&fname=http://www.silkspan.com/silkspan_ssl/credit/detail_cc_citi_orchid.asp">สมัคร </a>
        </td>
    </tr>

      <tr> 
        <td><img src="http://www.silkspan.com/images_new/crd/logo/logo_ctb2.gif" /></td>
        <td>
           บัตรเครดิต 
ซิตี้ เอ็ม วีซ่า
         </td>
        <td>15,000</td>
        <td>
         - รับส่วนลดสูงสุด 10% สำหรับสินค้า
          ราคาปกติที่ห้างพารากอน
          เอ็มโพเรียม,
          เดอะมอลล์ ดีพาร์ทเมนท์สโตร์
       <br /> - รับส่วนลด 5% สำหรับสินค้า
          ราคาปกติ โฮมเฟรชมาร์ท 
          และกูร์เมต์ มาร์เก็ต 
        <br /> - รับคะแนนสะสม 2 เท่า เมื่อใช้จ่ายที่
          ห้างพารากอน เอ็มโพเรียมและ
          เดอะมอลล์ดีพาร์ทเมนท์สโตร์*
        </td>
        <td>
            รับเครดิตเงินคืน 500 บาท
  เมื่อสมัครบัตรฯ ผ่านออนไลน์
         </td> 
        <td> 
            <a class="button"  target="_blank"  href="http://www.silkspan.com/banner/log_cbanner_counter.asp?typedealer=thinsur&fname=http://www.silkspan.com/silkspan_ssl/credit/detail_cc_citi_em.asp">สมัคร </a>
        </td>
    </tr>


      <tr> 
       <td><img src="http://www.silkspan.com/images_new/crd/logo/logo_ctb2.gif" /></td>
        <td>
           บัตรเครดิต ซิตี้แบงก์ บิ๊กซี วีซ่า แพลตตินั่ม
         </td>
        <td>15,000</td>
        <td>
            - รับคืนสูงสุด 5% เมื่อใช้จ่าย
            ผ่านบัตรฯ ที่บิ๊กซี 
            (ทุกๆ 25 บาท รับ 12.5 คะแนน)
            <br />- รับคืน 5% เมื่อใช้จ่ายผ่านบัตรฯ 
            ณ ร้านอาหารในพลาซ่าของห้างบิ๊กซี 
            ทุกวันศุกร์ – อาทิตย์
            <br />  - รับเพิ่ม 10 บาท สำหรับทุกๆ 100 บาท 
            เมื่อซื้อบัตรเงินสดศูนย์อาหาร 
            ณ ศูนย์อาหารภายในห้างบิ๊กซี
        </td>
        <td>
           รับบัตรกำนัลห้างบิ๊กซี มูลค่า 500 บาท*
  รีวอร์ด เมื่อสมัครบัตรฯ ผ่านออนไลน์ *
         </td> 
        <td> 
            <a class="button"  target="_blank"  href="http://www.silkspan.com/banner/log_cbanner_counter.asp?typedealer=thinsur&fname=http://www.silkspan.com/silkspan_ssl/credit/detail_cc_citi_big-c.asp">สมัคร </a>
        </td>
    </tr>



      <tr> 
        <td><img src="http://www.silkspan.com/silkspan_ssl/image/logo/kbank_k.gif" /></td>
        <td>
            บัตรเครดิตร่วม
โรบินสัน-กสิกรไทย
         </td>
        <td>บัตรเงิน 30,000
แพลทินัม 50,000</td>
        <td>
        - ลดทันที 10% ที่โรบินสัน
<br />- ลดทันที 3% ที่โฮมเวิร์ค,ออฟฟิศ ดีโป
<br>- ส่วนลดพิเศษตลอดปี ณ ร้านค้าชั้นนำ
<br>- สิทธ์ที่จอดรถและห้องรับรอง 
   ที่ห้างสรรพสินค้าโรบินสัน
<br>- บริการ Touch up ฟรี เคาน์เตอร์
   เครื่องสำอางค์ที่โรบินสันทุกสาขา
<br>- ระยะเวลาเปลี่ยน-คืนสินค้านาน 30 วัน
<br>- ส่วนลดสูงสุด 30 %
  ต้อนรับสมาชิกใหม่ และในเดือนเกิด
        </td>
        <td>
        <br />   - ยกเว้นค่าธรรมเนียมแรกเข้าและ
  รายปีเฉพาะปีแรก(สำหรับปีถัดไป
  ต้องมีการใช้จ่าย 12 ครั้ง/ปี)
 <br />- พิเศษ ยื่น1ได้ถึง2 
 <img src="http://www.silkspan.com/images_new/crd_cc/card/kbank_Robinson.gif">
         </td> 
        <td> 
            <a class="button"  target="_blank"  href="http://www.silkspan.com/banner/log_cbanner_counter.asp?typedealer=thinsur&fname=http://www.silkspan.com/silkspan_ssl/credit/detail_cc_kbank_robinson.asp">สมัคร </a>
        </td>
    </tr>


      <tr> 
        <td><img src="http://www.silkspan.com/silkspan_ssl/image/logo/kbank_k.gif" /></td>
        <td>
            บัตรเครดิตร่วม
เครือโรงพยาบาลกรุงเทพ-กสิกรไทย
         </td>
                <td>บัตรทอง 30,000
        แพลทินัม 50,000</td>
                <td>
                 - ส่วนลด 30% ค่าห้อง
                <br />- ส่วนลด 10% ค่ายา ,
                  ค่าทันตกรรม 5 รายการ ,ค่าวัคซีน
                <br />- บริการรถพยาบาลฉุกเฉิน 
                  ฟรี 1 ครั้งต่อปี
                <br />- สิทธิพิเศษเฉพาะบัตรแพลทินัม
                  รับความคุ้มครองอุบัติเหตุส่วนบุคคล
                  สูงสุด 100,000 บาท พร้อมค่ารักษา
                  พยาบาลสูงสุด 5,000 บาทต่อ
                  เหตุการณ์ ไม่จำกัดจำนวนเหตุการณ์
        </td>
        <td>
                - ยกเว้นค่าธรรมเนียมแรกเข้าและ
                รายปีเฉพาะปีแรก(สำหรับปีถัดไป
                ต้องมีการใช้จ่าย 12 ครั้ง/ปี)
                สมัครบัตรวันนี้ 
               <br /> - พิเศษ ยื่น1ได้ถึง2 
               <img src="http://www.silkspan.com/images_new/crd_cc/card/kbank_bkk-hospital.gif">
         </td> 
        <td> 
            <a class="button"  target="_blank"  href="http://www.silkspan.com/banner/log_cbanner_counter.asp?typedealer=thinsur&fname=http://www.silkspan.com/silkspan_ssl/credit/detail_cc_kbank_bangkokhospital.asp">สมัคร </a>
        </td>
    </tr>


      <tr> 
        <td><img src="http://www.silkspan.com/silkspan_ssl/image/logo/kbank_k.gif" /></td>
        <td>
           บัตรเครดิต Mercedes-Benz
         </td>
        <td>แพลทินัม 50,000</td>
        <td>
         - รับส่วนลดค่าแรงและค่าอะไหล่ 15%
<br />- รับส่วนลดพิเศษ 10%
  เมื่อซื้อสินค้าประดับยนตร์และสินค้า
  คอลเลคชั่น จากผู้จำหน่าย อย่างเป็น
  ทางการฯ
<br />- บริการห้องพักรับรองพิเศษ
  ที่ท่าอากาศยานสุวรรณภูมิ
        </td>
        <td>
            สมัครบัตรวันนี้ 
            - พิเศษ ยื่น1ได้ถึง2 
            <img src="http://www.silkspan.com/images_new/crd_cc/card/kbank_benz.gif">
         </td> 
        <td> 
            <a class="button"  target="_blank"  href="http://www.silkspan.com/banner/log_cbanner_counter.asp?typedealer=thinsur&fname=http://www.silkspan.com/silkspan_ssl/credit/detail_cc_kbank_mercedes.asp">สมัคร </a>
        </td>
    </tr>


      <tr> 
        <td><img src="http://www.silkspan.com/silkspan_ssl/image/logo/kbank_k.gif" /></td>
        <td>
           บัตรเครดิตแพลทินัม
กสิกรไทย
         </td>
        <td>50,000</td>
        <td>
            - ฟรี ค่าธรรมเนียมตลอดชีพ
            <br />- ห้องพักรับรองพิเศษที่สนามบิน
              ฟรี 2 ครั้งต่อปี 
            <br />- บริการ Platinum Contact Center
              0 2888 8889 ตลอด 24 ชั่วโมง 
            <br />- คุ้มครองอุบัติเหตุระหว่างการเดินทาง
              สูงสุด 8 ล้านบาท
        </td>
        <td>
            - ยกเว้นค่าธรรมเนียมแรกเข้าและ
              รายปีเฉพาะปีแรก(สำหรับปีถัดไป
              ต้องมีการใช้จ่าย 12 ครั้ง/ปี)
              สมัครบัตรวันนี้ 
           <br /> - พิเศษ ยื่น1ได้ถึง2 
           <img src="http://www.silkspan.com/images_new/crd_cc/card/kbank_platinium.gif">
         </td> 
        <td> 
            <a class="button"  target="_blank"  href="http://www.silkspan.com/banner/log_cbanner_counter.asp?typedealer=thinsur&fname=http://www.silkspan.com/silkspan_ssl/credit/detail_cc_kbank_plati.asp">สมัคร </a>
        </td>
    </tr>



      <tr> 
           <td><img src="http://www.silkspan.com/silkspan_ssl/image/logo/kbank_k.gif" /></td>
        <td>
            บัตรเครดิตวีซ่าเพย์เวฟ 
กสิกรไทย
         </td>
        <td>30,000</td>
        <td>
         	- ใช้ชำระค่าสินค้าและบริการ ณ ร้านค้า
              ที่มีสัญลักษณ์ VISA ทั่วโลก และ
              ร้านค้าที่มีสัญลักษณ์ VISA payWave
              ทั่วประเทศ
            <br />- ปลอดภัยเมื่อชำระสินค้าและบริการ
              ด้วยการ Wave ไม่ต้องมอบบัตรให้ 
              เจ้าหน้าที่ร้านค้าและไม่ต้องลง
              ลายมือชื่อใน SalesSlip สำหรับยอด
              ใช้จ่ายไม่เกิน 1,500 บาทต่อรายการ
            <br />- คุ้มครองอุบัติเหตุระหว่างการเดินทาง
              สูงสุด 1 ล้านบาท
        </td>
        <td>
            - ยกเว้นค่าธรรมเนียมแรกเข้าและ
            รายปีเฉพาะปีแรก(สำหรับปีถัดไป
            ต้องมีการใช้จ่าย 12 ครั้ง/ปี)
            สมัครบัตรวันนี้ 
            <br />- พิเศษ ยื่น1ได้ถึง2 
  
         </td> 
        <td> 
            <a class="button"  target="_blank"  href="http://www.silkspan.com/banner/log_cbanner_counter.asp?typedealer=thinsur&fname=http://www.silkspan.com/silkspan_ssl/credit/detail_cc_kbank_kwave.asp">สมัคร </a>
        </td>
    </tr>


      <tr> 
      <td><img src="http://www.silkspan.com/silkspan_ssl/image/logo/kbank_k.gif" /></td>
        <td>
            บัตรเครดิตมาสเตอร์การ์ด
ไทเทเนียมกสิกรไทย
         </td>
        <td>30,000</td>
        <td>
                - รับเงินคืน 1% เมื่อใช้จ่ายผ่านบัตรที่ 
              <br>    • สถานีบริการน้ำมัน*
              <br>    • ร้านอาหาร*
              <br>    • ซุปเปอร์มาร์เก็ต*
              <br>  - รับเงินคืน 0.5% เมื่อใช้จ่ายผ่านบัตร
                   ที่ร้านค้าประเภทอื่นๆ 
              <br>  - ไม่จำกัดยอดการใช้บัตรเครดิตขั้นต่ำ 
                   ในการได้รับสิทธิเงินคืนเข้าบัญชี 
                  บัตรเครดิต
        </td>
        <td>
            - ยกเว้นค่าธรรมเนียมแรกเข้าและ
              รายปีเฉพาะปีแรก(สำหรับปีถัดไป
              ต้องมีการใช้จ่าย 12 ครั้ง/ปี)
              สมัครบัตรวันนี้ 
            <br> - พิเศษ ยื่น1ได้ถึง2 
            <img src="http://www.silkspan.com/images_new/crd_cc/card/kbank_everyday.gif">
         </td> 
        <td> 
            <a class="button"  target="_blank"  href="http://www.silkspan.com/banner/log_cbanner_counter.asp?typedealer=thinsur&fname=http://www.silkspan.com/silkspan_ssl/credit/detail_cc_kbank_everyday.asp" >สมัคร </a>
        </td>
    </tr>


      <tr> 
      <td><img src="http://www.silkspan.com/silkspan_ssl/image/logo/kbank_k.gif" /></td>
        <td>
            บัตรเครดิตร่วม King Power
         </td>
        <td>แพลทินัม 30,000</td>
        <td>
         - รับส่วนลดเริ่มต้น 5% และรับเพิ่มเป็น
  ส่วนลดสูงสุด 20% เมื่อใช้จ่ายตาม
  เงื่อนไขที่กำหนด 
<br />- รับคะแนนสะสม KBank Reward
  Point x 1.5 เท่า 
<br />- รับกะรัตสะสมจาก คิงเพาเวอร์ 
  เพิ่ม 25%
<br />- King Power Birthday Celebration
  รับคืน CashVoucher สูงสุด 30%

        </td>
        <td>
            - ยกเว้นค่าธรรมเนียมแรกเข้าและ
  รายปีเฉพาะปีแรก(สำหรับปีถัดไป
  ต้องมีการใช้จ่าย 12 ครั้ง/ปี)
  สมัครบัตรวันนี้ 
- พิเศษ ยื่น1ได้ถึง2 
<img src="http://www.silkspan.com/images_new/crd_cc/card/kbank_king.gif">
         </td> 
        <td> 
            <a class="button"  target="_blank"  href="http://www.silkspan.com/banner/log_cbanner_counter.asp?typedealer=thinsur&fname=http://www.silkspan.com/silkspan_ssl/credit/detail_cc_kbank_kingpower.asp">สมัคร </a>
        </td>
    </tr>


      <tr> 
        <td><img src="http://www.silkspan.com/images_new/crd/logo/logo_kcc.gif" /></td>
        <td>
            บัตรเครดิต กรุงศรี ซิกเนเจอร์
         </td>
        <td>70,000</td>
        <td>
                    - แลกคะแนนสะสสมได้เร็วขึ้นเพียง
                ทุก 20 บาทรับ 1ไมล์สะสม
                <br />- อัพเกรดห้องพักสูงขึ้นหนึ่งระดับที่
                โรงแรมและโรงพยาบาล
                <br />- อัพเกรดเครื่องดื่มสูงขึ้นหนึ่งระดับ
                ที่ DEAN & DELUCA ทุกสาขา
                <br />- บริการห้องพักรับรองพิเศษ 
                Royal Silk Lounge (2ครัง/ปีปฏิทิน)
                <br />- เลานจ์ของโรงภาพยนต์ เอ็มบาซซี่
        </td>
        <td>
            - ฟรี! ค่าแรกเข้า + รายปี ตลอดชีพ*
            <br />- รับฟรี กระเป๋าเดินทาง G2000
              มูลค่า 1,990 บาท
            <br />- รับคะแนนสะสม
              กรุงศรีโบนัส 500คะแนน*
            <br />- รับทันที รับเครดิตเงินคืน 1%*
         </td> 
        <td> 
            <a class="button"  target="_blank"  href="http://www.silkspan.com/banner/log_cbanner_counter.asp?typedealer=thinsur&fname=http://www.silkspan.com/silkspan_ssl/credit/detail_cc_krungsri_signature.asp">สมัคร </a>
        </td>
    </tr>


      <tr> 
        <td><img src="http://www.silkspan.com/images_new/crd/logo/logo_kcc.gif" /></td>
        <td>
           กรุงศรี แพลทินัม
         </td>
        <td>30,000</td>
        <td>
                         - บริการ เลขาส่วนตัวและช่วยเหลือ
                   ฉุกเฉินบนท้องถนน 24 ชม.
                <br />- ที่จอดรถสำรอง ณ เซ็นทรัลชิดลม
                   และโรงแรมสุโขทัย กรุงเทพฯ
                <br />- คุ้มครองบัตรหายย้อนหลัง 24 ชม.
        </td>
        <td>
           - ฟรี! ค่าแรกเข้า + รายปี ตลอดชีพ*
           <br /> - รับฟรี กระเป๋า Picnic Ride 
              Cooler Bag มูลค่า 1,490 บาท
            <br />- รับทันที รับเครดิตเงินคืน 1%*
         </td> 
        <td> 
            <a class="button"  target="_blank"  href="http://www.silkspan.com/banner/log_cbanner_counter.asp?typedealer=thinsur&fname=http://www.silkspan.com//silkspan_ssl/credit/detail_cc_krungsri_platinum.asp">สมัคร </a>
        </td>
    </tr>


      <tr> 
        <td><img src="http://www.silkspan.com/images_new/crd/logo/logo_kcc.gif" /></td>
        <td>
            บัตรเครดิต 
กรุงศรี วีซ่า
         </td>
        <td>15,000</td>
        <td>
         - ทุก 20 บาทจากการใช้จ่ายผ่านบัตร
  รับคะแนนกรุงศรี โบนัส
        </td>
        <td>
             - ฟรี! ค่าแรกเข้า + รายปี ตลอดชีพ*
           <br /> - รับฟรี กระเป๋า Picnic Ride 
              Cooler Bag มูลค่า 1,490 บาท
           <br /> - รับทันที รับเครดิตเงินคืน 1%*
         </td> 
        <td> 
            <a class="button"  target="_blank"  href="http://www.silkspan.com/banner/log_cbanner_counter.asp?typedealer=thinsur&fname=http://www.silkspan.com/silkspan_ssl/credit/detail_cc_krungsri_visa.asp">สมัคร </a>
        </td>
    </tr>


      <tr> 
       <td><img src="http://www.silkspan.com/images_new/crd/logo/logo_kcc.gif" /></td>
        <td>
            บัตรเครดิต กรุงศรี มาสเตอร์
         </td>
        <td>15,000
</td>
        <td>
         - ทุก 20 บาทจากการใช้จ่ายผ่านบัตร
  รับคะแนนกรุงศรี โบนัส
        </td>
        <td>
             - ฟรี! ค่าแรกเข้า + รายปี ตลอดชีพ*
           <br /> - รับฟรี กระเป๋า Picnic Ride 
              Cooler Bag มูลค่า 1,490 บาท
           <br /> - รับทันที รับเครดิตเงินคืน 1%*
         </td> 
        <td> 
            <a class="button"  target="_blank"  href="http://www.silkspan.com/banner/log_cbanner_counter.asp?typedealer=thinsur&fname=http://www.silkspan.com/silkspan_ssl/credit/detail_cc_krungsri_master.asp">สมัคร </a>
        </td>
    </tr>



      <tr> 
        <td><img src="http://www.silkspan.com/images_new/crd/logo/logo_kcc.gif" /></td>
        <td>
           กรุงศรี 
            เลดี้ ไทเทเนี่ยม
            มาสเตอร์การ์ด
         </td>
        <td>ไทเทเนียม 15,000</td>
        <td>
        - ทุก 20 บาทจากการใช้จ่ายผ่านบัตร
  รับคะแนนกรุงศรี โบนัส
        </td>
        <td>
           - ฟรี! ค่าแรกเข้า + รายปี ตลอดชีพ*
- รับฟรี กระเป๋า Miss Sixty Sporty
  Set มูลค่า 1,290 บาท
- รับคะแนนสะสม
  กรุงศรีโบนัส 500คะแนน*
- รับทันที รับเครดิตเงินคืน 1%
         </td> 
        <td> 
            <a class="button"  target="_blank"  href="http://www.silkspan.com/banner/log_cbanner_counter.asp?typedealer=thinsur&fname=http://www.silkspan.com/silkspan_ssl/credit/detail_cc_krungsri_ladymaster.asp">สมัคร </a>
        </td>
    </tr>


      <tr> 
          <td><img src="http://www.silkspan.com/images_new/crd/logo/logo_kcc.gif" /></td>
        <td>
            กรุงศรี โฮมโปร
         </td>
        <td>15,000</td>
        <td>
         - ส่วนลด 3%* เมื่อซื้อสินค้าทุกชิ้น
   ที่โฮมโปรทุกสาขา
- ส่วนลด 5% เมื่อซื้อบริการ
   HomeCare
- รับส่วนลดสูงสุด 10%* เมื่อซื้อสินค้า
  แผนกที่นอน ฐานรองหัวเตียง 
  เครื่องนอนและแบรนด์ Pasaya, 
  Hatchi และ Home Living Style 
- กรุงศรีโบนัส ใช้จ่ายทุก 20 บาท
  รับ 1 คะแนน เพื่อแลกรับของกำนัล
        </td>
        <td>
            - ฟรี! ค่าแรกเข้า + รายปี ตลอดชีพ*
           <br /> - รับฟรี กระเป๋า Picnic Ride 
              Cooler Bag มูลค่า 1,490 บาท
            <br />- รับทันที รับเครดิตเงินคืน 1%*
         </td> 
        <td> 
            <a class="button"  target="_blank"  href="http://www.silkspan.com/banner/log_cbanner_counter.asp?typedealer=thinsur&fname=http://www.silkspan.com/silkspan_ssl/credit/detail_cc_krungsri_homepro.asp">สมัคร </a>
        </td>
    </tr>
       

  </tbody>
</table>
<!-- END TABLE -->



 
    </div>
    </form>
</body>
</html>
