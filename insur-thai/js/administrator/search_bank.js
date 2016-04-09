


$("#btn_serch").on("click", function () {
    console.log("search");
});
$("#btnAdd").on("click", function () {
    console.log("create");
    window.location.href = "manage_bank.aspx";
});


function fncPackage() {
    var data = { Loan_id: _pid };
    var obj = callAjaxAsyFailObj(data, "manage_bank.aspx/cLoadPackage", function (o) {
        console.log(o)

    });
}