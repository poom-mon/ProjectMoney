 
// silkspan.o({
//     p:"page",
//     pl:"pagelist",
//     t: "typedealer",
//     s:"systemtype",
//     m: "media"
// });

var phone = "", email = "", yearCar = "", brandCar = "", modelCar ="";
var $Email = $("#tbEmail"), $Mobile = $("#tbMobile");
var $Yearcar = $("#ddlYearCar"), $BrandCar = $("#ddlBandCar"), $ModelCar = $("#ddlModelcar");
var $typedealer = "thinsur";



$(window).load(function () {
    console.log("test mailtip");
    $("#tbEmail").mailtip();
  //  $("[type='email']").mailtip();
});   

silkspan.o({
    p: "car_insurance.asp",
    pl: "car_insurance.aspx",
    t: $typedealer  ,
    s: "car-insurance",
    m: ""
});
silkspan.bindRedbook({
    id_year: 'ddlYearCar'
    , id_brand: 'ddlBandCar'
    , id_model: 'ddlModelcar'
    , isCarloan: true // *** require this option for carloan
});

// silkspan.counterPage_Carloan('216.239.75.123'); // *** require this function in page

$('#btnCarLoan').click(function (event) {

    yearCar = $($Yearcar).val();
    brandCar = $($BrandCar).val();
    modelCar = $($ModelCar).val();
    phone = $($Mobile).val();
    email = $($Email).val();

    if (valid()) { 
        event.preventDefault();
        silkspan.goCarloan({
            id_mobile: 'tbMobile'
           , id_email: 'tbEmail'
           , name_firstCar: 'ckbFirstBox'
        });
    }
});


function valid() {
    var v = true;
    $('.silkspan_alerttxtmsg').remove();  
    if (typeof yearCar === 'undefined' || yearCar == 0) {
        alertTxtMsg($Yearcar, 'กรุณาระบุ ปีรถ ด้วยค่ะ');
        throw new Error("requires Year Car !");
        v = false;
    }

    if (typeof brandCar === 'undefined' || brandCar == 0) {
        alertTxtMsg($BrandCar, 'กรุณาระบุ ยี่ห้อรถ ด้วยค่ะ');
        throw new Error("requires Brand Car !");
        v = false;
    }

    if (typeof modelCar === 'undefined' || modelCar == 0) {
        alertTxtMsg($ModelCar, 'กรุณาระบุ รุ่นรถ ด้วยค่ะ');
        throw new Error("requires Model Car !");
        v = false;
    }

      if (typeof phone === 'undefined' || phone == '') {
            if (phone.length != 10 || !validMobile(phone)) {
                alertTxtMsg($Mobile, 'เบอร์โทรศัพท์ ไม่ถูกต้องค่ะ');
            } else {
                alertTxtMsg($Mobile, 'กรุณาระบุ เบอร์โทรศัพท์ ด้วยค่ะ');
            }
            throw new Error("requires Phone Number !");
            v = false;

     }

   if (typeof email !== 'undefined' && email != '') {
            if (!validEmail(email)) {
                alertTxtMsg($Email, 'email ไม่ถูกต้องค่ะ');
                throw new Error("requires Email !");
            }
              v = false;
      }
        

    return v; 
}
 