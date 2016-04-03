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


$("#lnkBankInfo").on("click", function () {
    $("#ifrImagePromo").prop("src", $(this).data("link"));
    $("#modalShowImg").modal("show");
});


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
fncQPackageInfo();
function fncQPackageInfo() { 
    var data = { Loan_id : _pid};
    var obj = callAjaxAsyFailObj(data, "detail.aspx/cLoadPackageById", function (o) {
        console.log(o)
        fncLoadFile()
    })
}
 
 
function fncLoadFile() {
    var data = { Loan_id: _pid };
    var obj = callAjaxAsyFailObj(data, "detail.aspx/cLoadFilePath", function (o) {
        console.log(o)
    })
}