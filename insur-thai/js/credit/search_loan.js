var _cardType = 1; 
var _gObject = [];
//_gObject.push({ id:1 ,ctype: "credit" ,  logo: "http://www.silkspan.com/images_new/crd_cc/card/card_firstchoice_cc.gif", card_name: "กรุงศรีเฟิร์สช้อยส์ วีซ่า แพลทินัม", amountLoan: "24,000", interest: "20%", detail: "- ผ่อนชำระ 0% สั่งได้<br>- 1 ฟรี 1 ที่เมเจอร์ โบว์ล ฮิต<br>- แลกคะแนนสะสมเป็นไมล์สะสม", Promotion: "รับฟรี! กระเป๋าล้อลาก Caggioni", urlRegist: "http://www.silkspan.com//silkspan_ssl/credit/detail_cc_krungsrifirstchoice.asp?typedealer=&vtype=cc&tag=สมัครบัตรเครดิตกรุงศรีเฟิร์สช้อยส์ วีซ่า  แพลทินัม" })
//_gObject.push({ id:2 ,ctype: "credit" ,  logo: "http://www.silkspan.com/images_new/crd/logo/logo_ktc.gif", card_name: "บัตรเครดิต เคทีซีมาตรฐาน", amountLoan: "5เท่าของเงินเดือน", interest: "20%", detail: "- ส่วนลดร้านค้าแบรนด์เนม   10%-15%", Promotion: "ช๊อปทุกที่...เที่ยวทั่วโลกใช้บัตรเครดิต KTC ถูกกว่า  รับคะแนนสะสม X2", urlRegist: "http://www.silkspan.com//silkspan_ssl/credit/detail_cc_ktc_classicgroup01.asp?typedealer=&vtype=cc&tag=สมัครบัตรเครดิต เคทีซี มาตรฐาน" })
//_gObject.push({ id:3 ,ctype: "loan", logo: "http://www.silkspan.com//silkspan_ssl/image/logo/kbank_k.gif", card_name: "บัตรเครดิตร่วม โรบินสัน-กสิกรไทย", amountLoan: "5 เท่า", interest: "20%", detail: "- ลดทันที 10% ที่โรบินสัน<br>- ลดทันที 3% ที่โฮมเวิร์ค,ออฟฟิศ ดีโป <br>- ส่วนลดพิเศษตลอดปี ณ ร้านค้าชั้นนำ", Promotion: "-ยกเว้นค่าธรรมเนียมแรกเข้าและ", urlRegist: "http://www.silkspan.com/silkspan_ssl/credit/detail_cc_kbank_robinson.asp?typedealer=&vtype=cc&tag=สมัครบัตรเครดิตร่วมโรบินสัน-กสิกรไทย" })
//_gObject.push({ id:4 , ctype: "cash", logo: "http://www.silkspan.com/images_new/crd/logo/logo_citiloan.gif", card_name: "สินเชื่อ บุคคลซิตี", amountLoan : "5 เท่า" ,interest: "20%", detail: "- วงเงินสินเชื่อสูงสุด 5 เท่าของรายได้ <br>-ไม่ต้องใช้หลักทรัพย์หรือผู้ค้ำประกัน  <br>- ให้คำปรึกษาและเข้าใจใน", Promotion: "- รับข้อเสนออัตราพิเศษ ต่ำสุด 18% ต่อปี*", urlRegist: "http://www.silkspan.com/silkspan_ssl/pl/detail_pl_citi_advance_type1.asp?typedealer=&vtype=refin&tag=" })

callPageDb();
function callPageDb() {
    var data = { Loan_typeId: _cardType};
    var obj = callAjaxAsyFailObj(data, "detail.aspx/cLoanPackage", function (o) {
        _gObject = o; 
        RenderPackage(); 
    });
}
var str = "";
function RenderPackage() {

    str = "";
    $("#tbRowsCredit").html("")
    $("#tbRowscash").html("")
    $("#tbRowsLoan").html("")

    if (_gObject.length > 0) { 
        for (var i = 0; i < _gObject.length; i++) { 
            if (_gObject[i].Loan_typeId == _cardType) { 
                _gObject[i].urlRegist = "../credit/pdetail.aspx?pid=" + _gObject[i].Loan_Id; 
                str += " <tr>";
                str += "         <td   class=\"headcol\"   align=\"left\">";
                //str += "         <i class=\"glyphicon glyphicon-edit\"  data-id=\"" + _gObject[i].Loan_Id + "\" ></i>  สมัคร  <br />";
                str += "         <a  style='color:white;' href=\"" + _gObject[i].urlRegist + "\" target='_blank'>   <i class=\"glyphicon glyphicon-edit regisLoan\" data-id=\"" + _gObject[i].Loan_Id + "\"  ></i>  รายละเอียด  </a>";
                str += "         </td>";
                str += "     <td  class=\"blankCol\" >";
                str += "     </td>";
                str += "     <td    class=\"tdcol\"  align=\"left\">  ";
                str += "         <img src=\"" +fncCheckLogoUrl( _gObject[i].bank_LogoPath) + "\"  />";
                str += "     </td>";
                str += "     <td align=\"left\">";
                str += "         <img src=\"" + fncCheckLogoUrl(_gObject[i].Loan_logoPath) + "\"  /><br />";
                str += " <a    href=\"" + _gObject[i].urlRegist + "\" target='_blank'><b>" + _gObject[i].Loan_Name + "</b></a>";
                str += "     </td> ";
                str += "     <td  align=\"left\">" + (_gObject[i].Loan_Amount == "N" ? "-" : _gObject[i].Loan_Amount) + "</td>";
                str += "     <td  align=\"left\">" + _gObject[i].Loan_Interest + "</td>";
                str += "     <td  align=\"left\">";
                str += fncDataText(_gObject[i].Loan_Descript) + "</td>";
                str += "     <td align=\"left\">";
                str += fncDataText(_gObject[i].Loan_Promotion) + "</td> ";
                str += "     <td class=\"dvDetailTbPc\" align=\"left\" style=\"width:100px;\">    ";
                //str += "         <i class=\"glyphicon glyphicon-edit\"   data-id=\"" + _gObject[i].id + "\" ></i>  สมัคร  <br />";
                str += "     <a href=\"" + _gObject[i].urlRegist + "\" target='_blank'>    <i class=\"glyphicon glyphicon-edit regisLoan\"    data-id=\"" + _gObject[i].Loan_Id + "\"></i>  รายละเอียด </a> ";
                str += "     </td>  ";
                str += " </tr>  ";
            }
        }
    }
    else { 
        //console.log("no");
        str = "<tr><td colspan='7'>ไม่พบรายการ</td></tr>";
    }

    //$("#tbRows").html(str); 
    switch (_cardType) {
        case 1://"credit": 
            $("#tbRowsCredit").html(str)
            break;
        case 2://"cash": 
            $("#tbRowscash").html(str)
            break;
        case 3://"loan": 
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

    $(".headcol").html()

    $(".dvText").on("click", function () {
        // console.log($(this).data("text"), $(this).data("flaghide")); 
        if ($(this).data("flaghide")) {
            $(this).data("flaghide", false);
            $(this).html($(this).data("text") + "<font style='color:red;'>ย่อ</font>");
        }
        else {
            $(this).data("flaghide", true);
            $(this).html($(this).data("text").substring(0, 257) + "<font style='color:red;'>ขยาย</font>");
        }
    });
} 
function fncCheckLogoUrl(path) {
    if (window.location.host.indexOf("localhost") > -1) {
        return path;
    } else {
        return path.replace("/insur-thai", "");
    } 
}
    function fncDataText(text) {
        // console.log(text.length, text.length < 257)
        if (text.length > 0) {
            if (text.length < 257)
                return text;
            else
                return "<div style='cursor:pointer;' class='dvText' data-text='" + text + "' data-flaghide='true'>" + text.substring(0, 257) + "<font style='color:red;cursor:pointer;'>ขยาย</font></div>";
        }
        else
            return "-";
    } 
    $(".btnCardType").on("click", function () { 
        _cardType = Math.round($(this).attr("data-cardType"));
        callPageDb();
    });