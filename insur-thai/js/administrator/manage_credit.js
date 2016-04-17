﻿
var _objItem;

searchBank()
function searchBank() {
    var str = "";
    var data = {};
    var obj = callAjaxAsyFailObj(data, "search_bank.aspx/cSearchBank", function (o) {
        console.log("bank", o)
        SetOptionListDdl($("#ddl_bank"),"--เลือกธนาคาร--",'')
        if (o.length > 0) {
            for (var i = 0; i < o.length; i++) {
                SetOptionListDdl($("#ddl_bank"), o[i].bank_Name, o[i].bank_Id)
            }
        }
        

    });
}
var ckEditor = CKEDITOR.replace('editor1');
CKFinder.setupCKEditor(ckEditor, '../js/textEditor/ckfinder/');

CKEDITOR.on('instanceReady', function (ev) {
    document.getElementById('eMessage').innerHTML = 'Instance <code>' + ev.editor.name + '<\/code> loaded.';
});
function fncUpload() {
    CKEDITOR.tools.callFunction(151, this);
    setTimeout(function () {
        $("#cke_dialog_footer_111").css("display", "none");
    }, 500);
}

setTimeout(function () {
    $("#cke_editor1").css("display", "none");

}, 500);

function Focus() {
    CKEDITOR.instances.editor1.focus();
}

function onFocus() {
    document.getElementById('eMessage').innerHTML = '<b>' + this.name + ' is focused </b>';
}

function onBlur() {
    document.getElementById('eMessage').innerHTML = this.name + ' lost focus';
}

 
$("#btnLink").on("click", function () {
     
    var str = "<tr id='tr"+i+"'><td></td>";
    str += "<td><input class=\"form-control _obPathFile\" type=\"text\">  <div class=\"_alert-meg\">filepath </div> </td>";
    str += "<td><input class=\"form-control _obFileName\" type=\"text\">  <div class=\"_alert-meg\">filename </div> </td>";
    str += "<td><input class=\"form-control _obFileDesc\" type=\"text\">  <div class=\"_alert-meg\">filedescript </div></td>";
    str += "<td><input   type=\"button\" class=\"btn btn-link btnRemove\" data-tr='tr" + i + "' value=\"ลบข้อมูล\" /></td> </tr>";

    $("#trBodypath").append(str);
    i++;

    $(".btnRemove").on("click", function () {
         $("#"+$(this).data("tr")).remove();
    });
});

function renderObjItem() {
    return _objItem = { 
        bank_Id : Math.round($("#ddl_bank").val()),
        Loan_typeId : Math.round($("#ddlCreditType").val()),
        Loan_Name : $("#tbCard").val(),
        Loan_Descript: $("#taProduct").val(),
        Loan_Amount: $("#tbAmount").val(),
        Loan_Interest: $("#tbInterest").val(),
        Loan_Promotion: $("#taPromotion").val(), 
        Loan_urlReference: $("#taRefertb").val(),
        Loan_fee: $("#tbFee").val(),
        Loan_logoPath: $("#tbBigLogo").val(),
        Loan_smLogo: $("#tbSmallLogo").val(),
        Loan_status: $("#ddlStatus").val(),
        Loan_Id: ( GetQueryStringParams("id") || 0)
    }
}
$("#btnSave").on("click", function () {
    if (fncValidFile()) {
        _objItem = renderObjItem();
        console.log(_objItem);

        var obj = callAjaxAsyFailObj(_objItem, "manage_credit.aspx/cUpdateCredit", function (o) {
            console.log("load success", o);
            alert("บันทึกข้อมูลสำเร็จ");
        });

    } 
});
$("#btnCancel").on("click", function () {
    window.location.href = "search_credit.aspx";
});

function fncValidFile() {
    var v = true; 
    v = v && validElement($("#ddl_bank"));
     v = v && validElement($("#tbAmount"));
     v = v && validElement($("#ddlCreditType"));
     v = v && validElement($("#tbCard"));
     v = v && validElement($("#taProduct"));
   
     v = v && validElement($("#tbInterest"));
     v = v && validElement($("#taPromotion"));
     v = v && validElement($("#taRefertb"));
     v = v && validElement($("#tbFee"));
     v = v && validElement($("#tbBigLogo"));
     v = v && validElement($("#tbSmallLogo"));
     v = v && validElement($("#ddlStatus"));

     
    if (v == false) {
        scroll2Err();
    }
    return v;
}















