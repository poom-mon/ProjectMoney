


$("#btn_serch").on("click", function () {
    fncPackage();
});
$("#btnAdd").on("click", function () {
    console.log("create");
    window.location.href = "manage_credit.aspx";
});
 
fncPackage(); 
function fncPackage() { 
    var str = ""; 

    var data = {
        Loan_typeId: $("#ddlCreditType").val(),
        Loan_Name: $("#tbCreditname").val()
    };
    var obj = callAjaxAsyFailObj(data, "search_credit.aspx/cSearchCredit", function (o) {
        console.log(o)

        if (o.length > 0) {
            for (var i = 0; i < o.length; i++) {
                str += "<tr>";
                str += "                   <td>" + (i + 1) + "</td>";
                str += "                   <td>"+ o[i].Loan_Name + "</td>";
                str += "                   <td><img src='" + o[i].bank_LogoPath + "' /></td>";
                //str += "                   <td>" + o[i].bank_Name + "</td> ";
                str += "                   <td> ";
                str += "                       <a type=\"button\" href='manage_credit.aspx?id=" + o[i].Loan_Id + "' class=\"btn btn-link\">แก้ไข</a>";
               // str += "                       <a type=\"button\" class=\"btn btn-link\">ลบ</a>";
                str += "                   </td> ";
                str += "               </tr> ";
            }
        } else {
            str += "<tr><td colspan='4'>ไม่พบข้อมูล</td></tr>";
        }
        
        $("#tbSearchCredit").html("");
        $("#tbSearchCredit").html(str);

    });
}

