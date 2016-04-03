


function valid(el, type, objValue) {
    var v = true;
    $('._alert').removeClass('_alert');

    v = v && validElement(el, type, objValue)

    if (v == false) {
        var $el_error = $('._alert').first();

        var idCollapse = $el_error.closest('.collapse').prop('id');
        showCollapse('#' + idCollapse, false);

        $('html, body').animate({ scrollTop: $el_error.offset().top - 40 }, 360);
        $el_error.focus();

        var errID = $el_error.prop('id');
        if (errID != '' && !errID.indexOf('ddl_') == 0) {
            $el_error[0].setSelectionRange(0, $el_error.val().length);
        }
    }

    return v;
}
function validElement(el, type,objValue) {
    var v = true;
    var id = el.prop('id');

    if (type != "TextValue") {
        var val = $.trim(el.val());
    }

    switch (type) {
        case 'split_name': v = validCusName(el); break;
        case 'idcard': v = validIDCard(val); break;
        case 'mobile': v = validMobile(val); break;
        case 'email': v = validEmail(val); break;

        case 'noregister': v = validNoRegister(el); break;

        case 'noenginebin': v = validNotThaiSpecialKey(val); break;

        case 'TextValue': v = ValidTextByValue(objValue); break;

        default: break;
    }

    if (!v || val == '' || val == null) {
        el.addClass('_alert');
        if ('email' == type) {
            el.next().addClass('_alert');
        }
        v = false;
    } else {
        el.removeClass('_alert');
        if ('email' == type) {
            el.next().removeClass('_alert');
        }
        v = true;
    }
    return v;
}

function getSplitName(id) {
    var _name = getObjVal($(id))
        , f = _name.substring(0, _name.indexOf(' '))
        , l = $.trim(_name.substring(f.length));
    return {
        fname: f
        , lname: l
    };
}

function ValidTextByValue(objValue) {
    var v = true; 
    if ($.trim(objValue).length > 0)
        return true;
    else
        return false;

    return v;
}

function validCusName(id) {
    var v = true;
    var _name = getSplitName(id);
    if (_name.fname == '' || _name.lname == '') {
        v = false;
    }

    return v;
}
function validNoRegister(id) {
    var data = chkNoRegister(getObjVal($(id)));
    var reg1 = /^[1-9]{1}[ก-ฮ]{2}(([-]{1}[1-9]{1}[0-9]{0,3}))$/;
    var reg2 = /^[ก-ฮ]{2,3}(([-]{1}[1-9]{1}[0-9]{0,3}))$/;

    if (reg1.test(data) || reg2.test(data))
        return true;
    else
        return false;
}
function validNotThaiSpecialKey(val) {
    var b = true;
    var sp = '|,\":<>[]{}`\';!@#$%^&*()_';
    var th = "ๅภถุึคตจขชๆไำพะัีรนยบลฃฟหกดเ้่าสวงผปแอิืทมใฝ๑๒๓๔ู฿๕๖๗๘๙๐ฎฑธํ๊ณฯญฐฅฤฆฏโฌ็๋ษศซฉฮฺ์ฒฬฦ";

    for (i = 0; i < val.length; i++) {
        if (sp.indexOf(val[i]) > -1 || th.indexOf(val[i]) > -1) {
            b = false;
            break;
        }
    }

    return b;
}

function chkNoRegister(str) {

    function isInt(value) {
        return !isNaN(value) && parseInt(Number(value)) == value && !isNaN(parseInt(value, 10));
    }

    var retVal = "";
    if (str != '') {
        if (isInt(str.substr(2, 1)))
            retVal = str.substr(0, 2) + "-" + str.substr(2, str.length - str.substr(0, 2).length)
        else
            retVal = str.substr(0, 3) + "-" + str.substr(3, str.length - str.substr(0, 3).length)
    }

    return retVal
}


function showCollapse(id, type) {

    var $el = $(id);
    if (type == 'all') {
        $el = $('#accordion').find('.item:visible .collapse');
    }

    $el.slideDown('normal', function () {

        $(this).addClass('in');

    });

    $el.siblings('.collapse-bar').addClass('active');

}