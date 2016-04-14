
searchBank()
function searchBank() {
    var str = "";
    var data = {};
    var obj = callAjaxAsyFailObj(data, "search_bank.aspx/cSearchBank", function (o) {
        console.log("bank", o)
        SetOptionListDdl($("#ddl_bank"),"--เลือกธนาคาร--",0)
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