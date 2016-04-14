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
}fncLoadBankFormById();
function fncLoadBankFormById() {
    if (typeof GetQueryStringParams("id") !== "undefined") {
        var data = {
            bank_Id: (GetQueryStringParams("id") || 0)
        };
        var obj = callAjaxAsyFailObj(data, "manage_bank.aspx/cLoadBankFormById", function (o) {
            //console.log("load success", o);

            $("#tbBank").val(o.bank_Name);
            $("#ddlStatus").val(o.status);
            $("#tbBankPath").val(o.bank_LogoPath);

        });
    }
}

$("#btnCancel").on("click", function () {
    window.location.href = "search_bank.aspx";
});

$("#btnSave").on("click", function () {
    var data = {
        bank_Id: (GetQueryStringParams("id") || 0),
        bank_Name: $("#tbBank").val() || "",
        bank_LogoPath: $("#tbBankPath").val() || "",
        status: $("#ddlStatus").val()
    };
    var obj = callAjaxAsyFailObj(data, "manage_bank.aspx/cUpdateBank", function (o) {
        console.log(o);
        if (o) {
            alert("update success !");
        }
    });
});