var _objForm;


function isElementInViewport() {
    var scrollTop = $(window).scrollTop();
    var viewportHeight = $(window).height();
    $('#pt').each(function () {
        var top = $(this).offset().top;
        console.log(top);
        console.log(scrollTop + viewportHeight);
        if (scrollTop + viewportHeight >= top) {
            $('.submit-btn').addClass('non-snap');
            console.log(true);
        } else {
            $('.submit-btn').removeClass('non-snap');
            console.log(false);
        }
    });
}
$(window).scroll(isElementInViewport);

 
$("#ddlJobs").on("change", function () {
    if ($(this).val() == "ประกอบธุรกิจส่วนตัว") {
        $("#tbSalary").prop("placeholder", "กำไรสุทธิต่อเดือน");
        $("#lbAge").html("เปิดธุรกิจมา");
        $('#ddlAgeWork option:eq(0)').text("-------ปีที่ทำธุรกิจ-------")
        $('#ddlAgeWorkMonth option:eq(0)').text("-------เดือนที่ทำธุรกิจ-------")
    }
    else {
        $("#tbSalary").prop("placeholder", "ฐานเงินเดือน");
        $("#lbAge").html("อายุงาน");
        $('#ddlAgeWork option:eq(0)').text("-------ปีที่ทำงาน-------")
        $('#ddlAgeWorkMonth option:eq(0)').text("-------เดือนที่ทำงาน-------")
    }
});


var _pid = GetQueryStringParams("pid") || "";
//fncQPackageInfo();
function fncQPackageInfo() { 
    var data = { Loan_id : _pid};
    var obj = callAjaxAsyFailObj(data, "detail.aspx/cLoadPackageById", function (o) {
        console.log(o)
         

        $("#lbCardName").html(o[0].Loan_Name)
        $("#lbPromotion").html(o[0].Loan_Promotion)
        $("#imgImageLogo").prop("src",o[0].Loan_logoPath) 
        $("#tdPromo").html(o[0].Loan_Descript) 
        $("#tdAmount").html(o[0].Loan_Amount == "N" ? "-" : o[0].Loan_Amount)
        $("#tdInterest").html(o[0].Loan_Interest) 
        $("#tdFee").html(o[0].Loan_fee)

        fncLoadFile()
    })
}
 
 
function fncLoadFile() {
    var data = { Loan_id: _pid };
    var obj = callAjaxAsyFailObj(data, "detail.aspx/cLoadFilePath", function (o) {
        console.log(o)

        var oStr="";
        for(var i = 0 ;i< o.length;i++){
            oStr += " <li><a href=\"javascrip:void(0);\" data-name=\"" + o[i].file_name + "\" data-link=\"" + o[i].file_path + "\" class=\"lnkBankInfo\">" + o[i].file_name + "</a> </li>";
        }

        $("#ulPathFile").html(oStr)
       
            $(".lnkBankInfo").on("click", function () {
                console.log("xxxx");
                $("#ifrImagePromo").prop("src", $(this).data("link"));
                $("#modalShowImg").modal("show");
                $("#myModalLabel").html($(this).data("name"));
            });

    })
}
 

function LoadObjForm() {
     _objForm = {
        titleName: $("#ddlTitleName").val() || ""
         , name: $("#tbName").val().split(" ")[0] || ""
         , lname: $("#tbName").val().split(" ")[1] || ""
         , Age: $("#tbAge").val() || ""
         , Sex: $("input[name='rd_sex']:checked").val() || ""
         , Address: $("#taAddress").val() || ""
         , Mobile: $("#tbMobile").val() || ""
         , Email: $("#tbEmail").val() || ""
         , Tel: $("#tbTelHome").val() || ""
         , Jobs: $("#ddlJobs").val() || ""
         , WorkProvice: $("#ddlWorkProvince").val() || ""
         , Salary_Chanel: $("#ddlPaymentSaraly").val() || ""
         , YearWork: $("#ddlAgeWork").val() || ""
         , MonthWork: $("#ddlAgeWorkMonth").val() || ""
         , Salary: $("#tbSalary").val() || "0"
         , WorkPlace: $("#taWork").val() || ""
         , WorkTel: $("#tbTelWork").val() || ""
    }
}

function fncfirstCal() {
    LoadObjForm();
    var _v =true;
    var _objfcal = "";
    if (_objForm.Salary_Chanel.indexOf("เงินสด") > -1) {
        //ท่านรับเงินเดือนผ่านบัญชีธนาคาร *ไม่ได้รับเป็นเงินสด*มี Slip เงินเดือน , มีใบรับรองเงินเดือน
        _objfcal+="- ท่านรับเงินเดือนเป็นเงินสด  <br>";
        _v =false;
    }
    if(Math.round(_objForm.Salary) < 15000){
        // ท่านมีฐานเงินเดือนประจำ ไม่ต่ำกว่า 15,000 บาท ต่อเดือน
        _objfcal+="- ฐานเงินเดือนต่ำกว่า 15,000 บาท  <br>";
        _v =false;
    } 
    if(_objForm.Jobs.indexOf("ธุรกิจ") > -1 &&  _objForm.YearWork < 1){
        // สำหรับเจ้าของธุรกิจต้องทำธุรกิจเกิน 1 ปีขึ้นไป
        _objfcal+="- อายุการทำธุรกิจของท่านน้อยกว่าเงือนไขที่ธนาคารกำหนด  <br>";
        _v =false;
    }
    if(_objForm.Jobs.indexOf("ธุรกิจ") == -1 &&  (Math.round(_objForm.YearWork*12) + Math.round(_objForm.MonthWork) < 6)){
        //สำหรับพนักงานเงินเดือน ท่านต้องทำงานประจำเกิน 6 เดือนขึ้นไป
        _objfcal+="- อายุงานของท่านไม่ตรงตามเงือนไขที่ธนาคารกำหนด  <br>";
        _v =false;
    }
    if(_objForm.WorkProvice.indexOf("ยะลา") >  -1 ||  _objForm.WorkProvice.indexOf("ปัตตานี") >  -1 || _objForm.WorkProvice.indexOf("นราธิวาส") >  -1){
        // ท่านไม่ได้ทำงานในอาชีพเหล่านี้ อาชีพที่ธนาคารไม่รับพิจารณา : แม่บ้าน แมสเซนเจอร์ พนักงานขับรถ รปภ. ทหาร ตำรวจ ข้าราชการการเมือง กำนัน ผู้ใหญ่บ้าน อบจ อบต และ งดรับพิจารณา พนักงานที่ทำงานอยู่ใน 3 จังหวัด ชายแดนภาคใต้
        _objfcal+="- จังหวัดที่ทำงานของท่านไม่ตรงตามเงินไขของธนาคาร  <br>";
        _v =false;
    }

    if(_v==false){
        $("#ifrImagePromo").prop("src", "");

        var strMessage ="<div class=\"alert alert-danger\" role=\"alert\">";
        strMessage +=  "<span class=\"glyphicon glyphicon-exclamation-sign\" aria-hidden=\"true\"></span>"; 
        strMessage += "ท่านไม่ผ่านเงือนไขเบื้องต้นที่ธนาคารกำหนด เนืองจาก <br>" + _objfcal;
        strMessage += " </div>";

        $("#modalBody").html(strMessage);
        $("#modalShowImg").modal("show");
        $("#myModalLabel").html("การประเมินเบื้องต้น");
    }

    return _v; 
}

function fncValid() {
    var v = true;
    v = v && validElement($("#ddlTitleName")) 
    v = v && validElement($("#tbName"))
    v = v && validElement($("#tbName"), "split_name");
    v = v && validElement($("#tbBirthdate"))

    if (v) {
        if ($("input[name='rd_sex']").prop("checked") == false) {
            v = v && false;
            $("input[name='rd_sex']").addClass('_alert');
        }
        else {
            v = v && true;
            $("input[name='rd_sex']").removeClass('_alert');
        }
    }

    v = v && validElement($("#taAddress"))
    v = v && validElement($("#tbMobile"), "mobile")
    v = v && validElement($("#tbTelHome"),"tel")
    v = v && validElement($("#tbEmail"))
    v = v && validElement($("#ddlJobs"))
    v = v && validElement($("#ddlWorkProvince"))
    v = v && validElement($("#tbSalary"))
    v = v && validElement($("#ddlPaymentSaraly"))

    if (v) {
        if (_objForm.YearWork == "0" && _objForm.MonthWork == "0") {
            v = v && false;
            $("#ddlAgeWork").addClass('_alert');
        }
        else {
            v = v && true;
            $("#ddlAgeWork").removeClass('_alert');
        }
    }

    if (_objForm.YearWork == "1000") { 
        v = v && validElement($("#ddlAgeWorkMonth"))
    }
     
         
    v = v && validElement($("#taWork"))
    v = v && validElement($("#tbTelWork"), "tel")   


    if (v == false) {
        scroll2Err();
    }
    return v;
}


$("#btnUpdatePq").on("click", function () {
    LoadObjForm();

    if (fncValid() == true) {
        if (fncfirstCal()) {
            windows.location.href = "thankyou.aspx";
        }
    } 


});

$("#ckConfirm,#chkBulo").on("click", function () { 
    if ($("#ckConfirm").prop("checked") && $("#chkBulo").prop("checked")) {
        $("#btnUpdatePq").css("display", ""); 
    } else {
        $("#btnUpdatePq").css("display", "none");
    }
});
 

$('#tbBirthdate').datepicker
 ({
        autoclose: true
        , format: 'dd/mm/yyyy'
        , startDate: '-20y'
        ,endDate : '+55y'
});
   

