﻿

var _objForm; 
var _pid = "1";

LoadDate() 

function LoadDate() {
    var _date = new Date()
    $selectPicker.init({
        idDay: '#ddlDayBirth'
            , idMonth: '#ddlMonthBirth'
            , idYear: '#ddlYearBirth'
            , language: 'th'
            , minDate: ((_date.getFullYear() - 50) + "-01-01")
            , maxDate: ((_date.getFullYear() - 15) + "-01-01") //'2022-05-12'
          //  , timeAfter: '16.00' 
        /*, holiday: {
             startDate: '2016-04-20'
             , endDate: '2016-05-10'
             , toDate: '2016-05-05' 
        } */
    });
    $("#ddlDayBirth").prepend($('<option disabled selected></option>').val('').html('-- เลือกวันเกิด --'));
    $('#ddlMonthBirth').prepend($('<option disabled selected></option>').val('').html('-- เลือกเดือนเกิด --'));
    $('#ddlYearBirth').prepend($('<option disabled selected></option>').val('').html('-- เลือกปีเกิด --'));
 }

function LoadObjForm() {
    _objForm = {
        titleName: $("#ddlTitleName").val() || ""
        , name: getSplitName("#tbName").fname
        , lname: getSplitName("#tbName").lname
        , birthdate: $("#tbBirthdate").val() || ""
        , Sex: ($("#ddlTitleName").val() == "นาย" ? "ชาย" : "หญิง")
        , Address: $("#taAddress").val() || ""
        , Mobile: $("#tbMobile").val() || ""
        , Email: $("#tbEmail").val() || ""
        , Tel:   ""
        , Jobs:  ""
        , WorkProvice: $("#ddlWorkProvince").val() || ""
        , Salary_Chanel:   ""
        , YearWork: $("#ddlAgeWork").val() || ""
        , MonthWork: $("#ddlAgeWorkMonth").val() || ""
        , Salary: $("#tbSalary").val() || "0"
        , WorkPlace:  ""
        , WorkTel:   "" 
    }
}

function fncfirstCal() {
    LoadObjForm();
    var _v = true;
    var _objfcal = "";
    if (_objForm.Salary_Chanel.indexOf("เงินสด") > -1) {
        //ท่านรับเงินเดือนผ่านบัญชีธนาคาร *ไม่ได้รับเป็นเงินสด*มี Slip เงินเดือน , มีใบรับรองเงินเดือน
        _objfcal += "- ท่านรับเงินเดือนเป็นเงินสด  <br>";
        _v = false;
    }
    if (Math.round(_objForm.Salary) < 15000) {
        // ท่านมีฐานเงินเดือนประจำ ไม่ต่ำกว่า 15,000 บาท ต่อเดือน
        _objfcal += "- ฐานเงินเดือนต่ำกว่า 15,000 บาท  <br>";
        _v = false;
    }
    if (_objForm.Jobs.indexOf("ธุรกิจ") > -1 && _objForm.YearWork < 1) {
        // สำหรับเจ้าของธุรกิจต้องทำธุรกิจเกิน 1 ปีขึ้นไป
        _objfcal += "- อายุการทำธุรกิจของท่านน้อยกว่าเงือนไขที่ธนาคารกำหนด  <br>";
        _v = false;
    }
    if (_objForm.Jobs.indexOf("ธุรกิจ") == -1 && (Math.round(_objForm.YearWork * 12) + Math.round(_objForm.MonthWork) < 6)) {
        //สำหรับพนักงานเงินเดือน ท่านต้องทำงานประจำเกิน 6 เดือนขึ้นไป
        _objfcal += "- อายุงานของท่านไม่ตรงตามเงือนไขที่ธนาคารกำหนด  <br>";
        _v = false;
    }
    if (_objForm.WorkProvice.indexOf("ยะลา") > -1 || _objForm.WorkProvice.indexOf("ปัตตานี") > -1 || _objForm.WorkProvice.indexOf("นราธิวาส") > -1) {
        // ท่านไม่ได้ทำงานในอาชีพเหล่านี้ อาชีพที่ธนาคารไม่รับพิจารณา : แม่บ้าน แมสเซนเจอร์ พนักงานขับรถ รปภ. ทหาร ตำรวจ ข้าราชการการเมือง กำนัน ผู้ใหญ่บ้าน อบจ อบต และ งดรับพิจารณา พนักงานที่ทำงานอยู่ใน 3 จังหวัด ชายแดนภาคใต้
        _objfcal += "- จังหวัดที่ทำงานของท่านไม่ตรงตามเงินไขของธนาคาร  <br>";
        _v = false;
    }

    if (_v == false) {
        $("#ifrImagePromo").prop("src", "");

        var strMessage = "<div class=\"alert alert-danger\" role=\"alert\">";
        strMessage += "<span class=\"glyphicon glyphicon-exclamation-sign\" aria-hidden=\"true\"></span>";
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

    //v = v && validElement($("#tbBirthdate"))
    v = v && validElement($("#ddlDayBirth"))
    v = v && validElement($("#ddlMonthBirth"))
    v = v && validElement($("#ddlYearBirth"))
    

    v = v && validElement($("#taAddress"))
    v = v && validElement($("#tbMobile"), "mobile")
    

    v = v && validElement($("#tbEmail"))
 
    v = v && validElement($("#ddlWorkProvince"))
    v = v && validElement($("#tbSalary"))


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
     

    if (v == false) {
        scroll2Err();
    }
    return v;
}

$("#btnUpdatePq").on("click", function () {
    LoadObjForm();

    if (fncValid() == true) {
        if (fncfirstCal()) {
             
            var _bdate = (Math.round(getObjVal($('#ddlYearBirth'))) - 543) + "-" + ((getObjVal($('#ddlMonthBirth')).length == 1 ? "0" : "") + getObjVal($('#ddlMonthBirth'))) + "-" + ((getObjVal($('#ddlDayBirth')).length == 1 ? "0" : "") + getObjVal($('#ddlDayBirth')))
            //_objForm.birthdate;
            var data = { 
               titleName : _objForm.titleName, 
               name : _objForm.name,
               lastname : _objForm.lname,
               birthdate: _bdate,//_bdate.split("/")[2] + "-" + _bdate.split("/")[1] + "-" + _bdate.split("/")[0],
               sex  : _objForm.Sex,
               address  : _objForm.Address,
               mobile : _objForm.Mobile,
               tel : _objForm.Tel,
               email : _objForm.Email,
               jobs  : _objForm.Jobs,
               work_province  : _objForm.WorkProvice,
               salary : _objForm.Salary ,
               payment_Salary  : _objForm.Salary_Chanel,
               work_year  : _objForm.YearWork,
               work_month : _objForm.MonthWork , 
               work_address : _objForm.WorkPlace,
               work_tel  : _objForm.WorkTel ,
               Loan_id: _pid
            };
            console.log(data);
            var obj = callAjaxAsyFailObj(data, "../Detail.aspx/cUpdateLoanPq", function (o) {
                  window.location.href = "thankyou.aspx";
            })
          
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
        , endDate: '+55y'
 });