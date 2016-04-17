
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


var i = 0;

$("#btnLink").on("click", function () {

    if ($("#tbFilePath").css("display") === "none") {
        $("#tbFilePath").css("display", "block");
    }
     
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

$("#btnSave").on("click", function () { 
    $('#trBodypath > tr').each(function () { 
        $this = $(this)

        var _$$filepath = $this.find("input._obPathFile");
        var _$$filename = $this.find("input._obFileName");
        var _$$filedesc = $this.find("input._obFileDesc");

        if (fncValidFile(_$$filepath, _$$filename, _$$filedesc)) {
            // save path file   
            console.log(_$$filepath.val(), _$$filename.val(), _$$filedesc.val());
        }
    });    
});

function fncValidFile(_obj1,_obj2,_obj3) {
    var v = true;
    v = v && validElement(_obj1)
    v = v && validElement(_obj2)
    v = v && validElement(_obj3)
     
    if (v == false) {
        scroll2Err();
    }
    return v;
}















