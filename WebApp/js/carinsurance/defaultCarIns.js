
// silkspan.o({
//     p:"page",
//     pl:"pagelist",
//     t: "typedealer",
//     s:"systemtype",
//     m: "media"
// });

var phone = "", email = "", yearCar = "" , brandCar = "", modelCar = "";
var $Email = $("#tbEmail"), $Mobile = $("#tbMobile");
var $Yearcar = $("#ddlYearCar"), $BrandCar = $("#ddlBandCar"), $ModelCar = $("#ddlModelcar");

 

$(window).load(function () {
    console.log("test mailtip");
    $("#tbEmail").mailtip();
    //  $("[type='email']").mailtip();
});

silkspan.o({
    p: "car_insurance.asp",
    pl: "car_insurance.aspx",
    t: "thinsur",
    s: "car-insurance",
    m: ""
});
silkspan.bindRedbook({
    id_year: 'ddlYearCar'
    , id_brand: 'ddlBandCar'
    , id_model: 'ddlModelcar'
    , isCarloan: false // *** require this option for carloan
});

// silkspan.counterPage_Carloan('216.239.75.123'); // *** require this function in page

$('#btnCompare').click(function (event) {

    yearCar = $($Yearcar).val();
    brandCar = $($BrandCar).val();
    modelCar = $($ModelCar).val();
    phone = $($Mobile).val();
    email = $($Email).val();
    console.log(valid());
    if (valid()) {
        //event.preventDefault();
        //silkspan.goCarloan({
        //    id_mobile: 'tbMobile'
        //   , id_email: 'tbEmail'
        //   , name_firstCar: 'ckbFirstBox'
        //});
        carinfo();

    }
});


 function valid() {
   var v = true;
    $('.silkspan_alerttxtmsg').remove(); 
    if (typeof yearCar === 'undefined' || yearCar == 0) {
        alertTxtMsg($Yearcar, 'กรุณาระบุ ปีรถ ด้วยค่ะ');
        throw new Error("requires Year Car !");
        v = false;
        console.log("1")
    }

    if (typeof brandCar === 'undefined' || brandCar == 0) {
        alertTxtMsg($BrandCar, 'กรุณาระบุ ยี่ห้อรถ ด้วยค่ะ');
        throw new Error("requires Brand Car !");
        v = false;
        console.log("2")
    }

    if (typeof modelCar === 'undefined' || modelCar == 0) {
        alertTxtMsg($ModelCar, 'กรุณาระบุ รุ่นรถ ด้วยค่ะ');
        throw new Error("requires Model Car !");
        v = false;
        console.log("3")
    }

    if (typeof phone === 'undefined' || phone == '') {
        if (phone.length != 10 || !validMobile(phone)) {
            alertTxtMsg($Mobile, 'เบอร์โทรศัพท์ ไม่ถูกต้องค่ะ');
        } else {
            alertTxtMsg($Mobile, 'กรุณาระบุ เบอร์โทรศัพท์ ด้วยค่ะ');
        }
        throw new Error("requires Phone Number !");
        v = false;
        console.log("4")

    }

    if (typeof email !== 'undefined' && email != '') {
        if (!validEmail(email)) {
            alertTxtMsg($Email, 'email ไม่ถูกต้องค่ะ');
            throw new Error("requires Email !");
            v = false; 
        }
      
    } 
    return v;
}

carinfo();
function carinfo() {
//    var _data = {
//        year_car:  Math.round(yearCar)
//        , name_car: brandCar
//        , type_car: modelCar
//        }; 
    var _data = {
        year_car: '2015'
               , name_car: 'NISSAN'
               , type_car: 'TEANA XE AT 2.0 CC 4 DOORS'
    };
    $.ajax({
        url: 'http://silkspan.com/silkspanapis/api/carInfo/cCallCarInfo',
        data: _data,
        type: 'POST',
        dataType: 'json',
        success: function (data) {
            console.log(data, data[0], _data);
            var __ob = data[0];
            $("input[name='IyearC']").val(yearCar)
            $("input[name='InameC']").val(brandCar)
            $("input[name='ICC']").val(modelCar)
            $("input[name='alertmobile']").val(phone)
            $("input[name='alertemail']").val(email)
            $("input[name='Model']").val(__ob.model)
            $("input[name='car_category']").val(__ob.car_category)

            

             document.aspnetForm.action = "http://www.silkspan.com/carinsur/insurance/compare.aspx";
             document.aspnetForm.method = "post";
             document.aspnetForm.submit();

        },
        error: function (x, y, z) {
            console.log(x + '\n' + y + '\n' + z);
        }
    });
}


 