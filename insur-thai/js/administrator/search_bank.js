


$("#btn_serch").on("click", function () {
    console.log("search");
});
$("#btnAdd").on("click", function () {
    console.log("create");
    window.location.href = "manage_bank.aspx";
});
 
fncPackage();
function fncPackage() {
    // var data = { Loan_id: _pid };
    var str = "";
    var data = {};
    var obj = callAjaxAsyFailObj(data, "search_bank.aspx/cSearchBank", function (o) {
        console.log(o)

        if (o.length > 0) {
            for (var i = 0; i < o.length; i++) {
                str += "<tr>";
                str += "                   <td>"+(i+1)+"</td>";
                str += "                   <td><img src='" + o[i].bank_LogoPath + "' /></td>";
                str += "                   <td>" + o[i].bank_Name + "</td> ";
                str += "                   <td> ";
                str += "                       <a type=\"button\" href='manage_bank.aspx?id=" + o[i].bank_Id + "' class=\"btn btn-link\">แก้ไข</a>";
                str += "                       <a type=\"button\" class=\"btn btn-link\">ลบ</a>";
                str += "                   </td> ";
                str += "               </tr> ";
            }
        } else {
            str += "<tr><td colspan='4'>ไม่พบข้อมูล</td></tr>";
        }
        
        $("#tbSearchBank").html("");
        $("#tbSearchBank").html(str);

    });
}