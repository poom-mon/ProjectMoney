
var _cardType = "credit";

//$('#radioBtn a').on('click', function () {
//    var sel = $(this).data('title');
//    var tog = $(this).data('toggle');
//    $('#' + tog).prop('value', sel);

//    $('a[data-toggle="' + tog + '"]').not('[data-title="' + sel + '"]').removeClass('active').addClass('notActive');
//    $('a[data-toggle="' + tog + '"][data-title="' + sel + '"]').removeClass('notActive').addClass('active');
//}) 

var _gObject = [];
_gObject.push({ id:1 ,ctype: "credit" ,  logo: "http://www.silkspan.com/images_new/crd_cc/card/card_firstchoice_cc.gif", card_name: "กรุงศรีเฟิร์สช้อยส์ วีซ่า แพลทินัม", amountLoan: "24,000", interest: "20%", detail: "- ผ่อนชำระ 0% สั่งได้<br>- 1 ฟรี 1 ที่เมเจอร์ โบว์ล ฮิต<br>- แลกคะแนนสะสมเป็นไมล์สะสม", Promotion: "รับฟรี! กระเป๋าล้อลาก Caggioni", urlRegist: "http://www.silkspan.com//silkspan_ssl/credit/detail_cc_krungsrifirstchoice.asp?typedealer=&vtype=cc&tag=สมัครบัตรเครดิตกรุงศรีเฟิร์สช้อยส์ วีซ่า  แพลทินัม" })
_gObject.push({ id:2 ,ctype: "credit" ,  logo: "http://www.silkspan.com/images_new/crd/logo/logo_ktc.gif", card_name: "บัตรเครดิต เคทีซีมาตรฐาน", amountLoan: "5เท่าของเงินเดือน", interest: "20%", detail: "- ส่วนลดร้านค้าแบรนด์เนม   10%-15%", Promotion: "ช๊อปทุกที่...เที่ยวทั่วโลกใช้บัตรเครดิต KTC ถูกกว่า  รับคะแนนสะสม X2", urlRegist: "http://www.silkspan.com//silkspan_ssl/credit/detail_cc_ktc_classicgroup01.asp?typedealer=&vtype=cc&tag=สมัครบัตรเครดิต เคทีซี มาตรฐาน" })
_gObject.push({ id:3 ,ctype: "loan", logo: "http://www.silkspan.com//silkspan_ssl/image/logo/kbank_k.gif", card_name: "บัตรเครดิตร่วม โรบินสัน-กสิกรไทย", amountLoan: "5 เท่า", interest: "20%", detail: "- ลดทันที 10% ที่โรบินสัน<br>- ลดทันที 3% ที่โฮมเวิร์ค,ออฟฟิศ ดีโป <br>- ส่วนลดพิเศษตลอดปี ณ ร้านค้าชั้นนำ", Promotion: "-ยกเว้นค่าธรรมเนียมแรกเข้าและ", urlRegist: "http://www.silkspan.com/silkspan_ssl/credit/detail_cc_kbank_robinson.asp?typedealer=&vtype=cc&tag=สมัครบัตรเครดิตร่วมโรบินสัน-กสิกรไทย" })
_gObject.push({ id:4 , ctype: "cash", logo: "http://www.silkspan.com/images_new/crd/logo/logo_citiloan.gif", card_name: "สินเชื่อ บุคคลซิตี", amountLoan : "5 เท่า" ,interest: "20%", detail: "- วงเงินสินเชื่อสูงสุด 5 เท่าของรายได้ <br>-ไม่ต้องใช้หลักทรัพย์หรือผู้ค้ำประกัน  <br>- ให้คำปรึกษาและเข้าใจใน", Promotion: "- รับข้อเสนออัตราพิเศษ ต่ำสุด 18% ต่อปี*", urlRegist: "http://www.silkspan.com/silkspan_ssl/pl/detail_pl_citi_advance_type1.asp?typedealer=&vtype=refin&tag=" })
 


RenderPackage();
function RenderPackage() { 
    var str = "";
    for (var i = 0; i < _gObject.length; i++) {

        if (_gObject[i].ctype == _cardType) {
           // str += "<tr>";
           // str += "<td align=\"left\"> <img src=\"" + _gObject[i].logo + "\" /> ข้อมูลบัตร </td>";
           // str += "<td align=\"left\">" + _gObject[i].card_name + "</td>";
           // str += "<td align=\"left\">" + _gObject[i].amountLoan + "</td>";
           // str += "<td align=\"left\">" + _gObject[i].interest + "</td>";
           // str += "<td align=\"left\">" + _gObject[i].detail + "</td>";
           // str += "<td align=\"left\">" + _gObject[i].Promotion + "</td>";
           // str += "<td align=\"left\" >";
           // str += "   <div class=\"btn btn-info btn-md _buttonRegist\" data-url=\"" + _gObject[i].urlRegist + "\">";
           // str += "        <i class=\"glyphicon glyphicon-edit\"></i> ";
           // str += "         สมัคร";
           // str += "      </div>";
           // str += "  </td>";
           // str += "</tr>";

            

            str += " <tr>";
            str += "         <td   class=\"headcol\" align=\"left\">";
            str += "         <i class=\"glyphicon glyphicon-edit\"  data-id=\"" + _gObject[i].id + "\" ></i>  สมัคร  <br />";
            str += "         <i class=\"glyphicon glyphicon-new-window\" data-id=\"" + _gObject[i].id + "\" data-url=\"" + _gObject[i].urlRegist + "\" ></i>  รายละเอียด";
            str += "         </td>"; 
            str += "     <td  class=\"blankCol\" >";   
            str += "     </td>";
            str += "     <td    class=\"tdcol\"  align=\"left\">  "; 
            str += "         <img src=\"" + _gObject[i].logo + "\"  />"; 
            str += "     </td>";
            str += "     <td align=\"left\">";
            str +=   _gObject[i].card_name ;
            str += "     </td> ";
            str += "     <td  align=\"left\">" + _gObject[i].amountLoan + "</td>";
            str += "     <td  align=\"left\">" + _gObject[i].interest + "</td>";
		    str += "     <td  align=\"left\">";
		    str +=  _gObject[i].detail+"</td>";
		    str += "     <td align=\"left\">";
            str +=  _gObject[i].Promotion + "</td> ";
		    str += "     <td class=\"dvDetailTbPc\" align=\"left\" style=\"width:100px;\">    ";
		    str += "         <i class=\"glyphicon glyphicon-edit\"   data-id=\"" + _gObject[i].id + "\" ></i>  สมัคร  <br />";
		    str += "         <i class=\"glyphicon glyphicon-new-window\"    data-id=\"" + _gObject[i].id + "\" data-url=\"" + _gObject[i].urlRegist + "\" ></i>  รายละเอียด ";
            str += "     </td>  ";
	        str += " </tr>  ";

        }
    }
	 $("#tbRows").html(str);


	     $("#tbRowsCredit").html("")
	     $("#tbRowsLoan").html("")
	     $("#tbRowscash").html("")
	     switch (_cardType) {
	         case "credit":
	           $("#tbRowsCredit").html(str) 
            break;
        case "cash": 
            $("#tbRowscash").html(str)
            break;
        case "loan": 
            $("#tbRowsLoan").html(str) 

            break;
	     }

	if (IsMobileSize()) {
	    $(".headcol").css('display', "");
	    $(".dvDetailTbPc").css('display', "none");
	}
	else {
	    $(".headcol").css('display', "none");
	    $(".blankCol").css('display', "none");
	    $(".dvDetailTbPc").css('display', "");
	}

} 

$(".btnCardType").on("click", function () {
    console.log("event card_type : ", $(this).attr("data-cardType"));
    _cardType = $(this).attr("data-cardType");
    RenderPackage()
});
