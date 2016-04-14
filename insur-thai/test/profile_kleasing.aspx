<%@ Page Language="C#" AutoEventWireup="true" CodeFile="profile_kleasing.aspx.cs" Inherits="test_profile" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        /*  blue     #0078CF
    purlpe     #5C2D91
    green     #00B14B */

        /* CLIENT-SPECIFIC STYLES */
        body, table, td, a {
            -webkit-text-size-adjust: 100%;
            -ms-text-size-adjust: 100%;
        }
        /* Prevent WebKit and Windows mobile changing default text sizes */
        table, td {
            mso-table-lspace: 0pt;
            mso-table-rspace: 0pt;
        }
        /* Remove spacing between tables in Outlook 2007 and up */
        img {
            -ms-interpolation-mode: bicubic;
        }
        /* Allow smoother rendering of resized image in Internet Explorer */

        /* RESET STYLES */
        img {
            border: 0;
            height: auto;
            line-height: 100%;
            outline: none;
            text-decoration: none;
        }

        table {
            border-collapse: collapse !important;
        }

        body {
            height: 100% !important;
            margin: 0 !important;
            padding: 0 !important;
            width: 100% !important;
            font-family: Segoe UI, Helvetica, Arial, sans-serif;
            color: #444444;
            font-size: 14px;
        }

        /* iOS BLUE LINKS */
        a[x-apple-data-detectors] {
            color: inherit !important;
            text-decoration: none !important;
            font-size: inherit !important;
            font-family: inherit !important;
            font-weight: inherit !important;
            line-height: inherit !important;
        }

        a {
            text-decoration: none;
            color: #007ACC;
        }

        td {
            font-family: Segoe UI, Helvetica, Arial, sans-serif;
        }

        .img-block {
            display: block;
            font-family: Segoe UI, Helvetica, Arial, sans-serif;
            color: #ccc;
            font-size: 10px;
            max-width: 100%;
        }

        .img-padding {
            padding: 0 20px 0 0;
        }

        .subhead {
            font-size: 16px;
            padding-bottom: 8px;
        }

        .comment {
            font-family: Segoe UI, Helvetica, Arial, sans-serif;
            color: #333333;
            font-size: 14px;
            /* line-height: 23px !important; */
            /* padding: 15px 30px; */
            border-radius: 5px;
            text-align: left;
        }

        .comment-gfx {
            padding-top: 20px;
        }

        /* INFO TABLE */
        .activity-table {
            display: table;
        }

        .active {
            background: #CEF1DE;
            font-family: Segoe UI, Helvetica, Arial, sans-serif;
            font-size: 14px;
            color: #333333;
            padding: 2px 4px;
            display: inline-block;
        }

        .inactive {
            background: #eeeeee;
            font-family: Segoe UI, Helvetica, Arial, sans-serif;
            font-size: 14px;
            text-decoration: line-through;
            color: #666666;
            padding: 2px 4px;
            display: inline-block;
        }

        .row-label {
            font-family: Segoe UI, Helvetica, Arial, sans-serif;
            font-size: 14px;
            color: #333;
            padding: 2px 4px;
            line-height: 16px;
            text-align: left;
        }

        .foot-logo {
            padding: 15px 0 0px;
            opacity: .7;
        }

        /* MOBILE STYLES */
        @media screen and (max-width: 525px) {
            .header {
                padding: 10px 30px !important;
            }

            .mobile-sm-txt {
                font-size: 14px !important;
            }

                .mobile-sm-txt span {
                    display: block;
                }

            /* ALLOWS FOR FLUID TABLES */
            .wrapper {
                width: 100% !important;
                max-width: 100% !important;
            }

            /* ADJUSTS LAYOUT OF LOGO IMAGE */
            .logo img {
                margin: 0 auto !important;
            }

            /* USE THESE CLASSES TO HIDE CONTENT ON MOBILE */
            .mobile-hide {
                display: none !important;
            }

            .img-max {
                max-width: 100% !important;
                width: 100% !important;
                height: auto !important;
            }

            /* FULL-WIDTH TABLES */
            .responsive-table {
                width: 100% !important;
            }

            /* UTILITY CLASSES FOR ADJUSTING PADDING ON MOBILE */
            .padding {
                padding: 10px 5% 15px 5% !important;
            }

            .img-padding {
                padding: 0 0 10px 0;
            }

            .padding-meta {
                padding: 30px 5% 0px 5% !important;
                /*text-align: center;*/
            }

            .padding-copy {
                /* padding: 10px 5% 10px 5% !important; */
                /* text-align: center !important; */
            }

            .logo {
                padding: 10px 0 10px 5% !important;
                /*text-align: center;*/
            }

            .no-padding {
                padding: 0 !important;
            }

            .section-padding {
                padding: 50px 15px 50px 15px !important;
            }

            .comment {
                padding: 16px 22px !important;
            }

            .gfx-promo {
                padding-bottom: 20px;
                width: 40% !important;
            }

                .gfx-promo img {
                    width: 100%;
                }

                .gfx-promo td {
                    /* text-align: center; */
                    /* width: 100%; */
                    /* outline: 1px solid lightgreen; */
                }

            /* ADJUST BUTTONS ON MOBILE */
            .mobile-button-container {
                margin: 0 auto;
                width: 100% !important;
            }

            .mobile-button {
                padding: 10px !important;
                border: 0 !important;
                font-size: 16px !important;
                display: block !important;
            }

            .logo {
                margin: 0 auto;
            }

            .mobile-center {
                text-align: center !important;
            }

            .mobile-promos {
                text-align: center !important;
                padding: 30px !important;
            }
        }
        /* EXTRA SMALL - PHONE */
        @media screen and (max-width: 413px) {
            body[class="body-padding"] {
                padding: 0 !important;
            }
            /* HIDE CONTENT ON MOBILE */
            td[class="mobile-hide-xs"], td[class="mobile-hide-xs comment-gfx"] {
                display: none;
            }
            /* ADJUST BUTTONS ON MOBILE */
            td[class="mobile-wrapper"] {
                padding: 10px 5% 15px 5% !important;
            }

            table[class="mobile-button-container"] {
                margin: 0 auto;
                width: 100% !important;
            }
        }
        /* ANDROID CENTER FIX */
        div[style*="margin: 16px 0;"] {
            margin: 0 !important;
        }
    </style>
</head>
<body>

    <div style="margin: 0; padding: 0; background: #F8F8F8; padding-top: 10px;">
        <!-- HIDDEN PREHEADER TEXT -->
        <div style="display: none; font-size: 1Welcome iceorbital.px; color: #fefefe; line-height: 1px; font-family: Segoe UI, Helvetica, Arial, sans-serif; max-height: 0px; max-width: 0px; opacity: 0; overflow: hidden;">
            This is preheader text.
        </div>

        <!-- ####### START WRAPPER align="center" removed / -->
        <table border="0" width="100%" class="wrapper">
            <tr>
                <td></td>
                <td width="860">

                    <!-- CONTAINER -->
                    <table border="0" cellpadding="0" cellspacing="0" style="max-width: 860px;">

                        <!-- MARKETING STYLE COMPONENTS -->
                        <tr>
                            <td bgcolor="#0078CF" style="padding: 0 30px;">
                                <!--[if (gte mso 9)|(IE)]>
            <table  border="0" cellspacing="0" cellpadding="0" width="600">
            <tr>
            <td  valign="top" width="600">
            <![endif]-->
                                <table border="0" cellpadding="0" cellspacing="0" width="100%" style="max-width: 800px;" class="responsive-table">
                                    <tr>
                                        <td>
                                            <table border="0" cellpadding="0" cellspacing="0" class="logo">
                                                <tr>
                                                    <td align="" valign="top" style="padding: 9px 0; width: 40px;">
                                                        <img src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxISERUSEhMVFhUXGBcXGBcYGBcXGBgWGBYXFhgbIBgYHiogGBolGxgVITEhJikrLi4uGB8zODMtNygtLisBCgoKDg0OGxAQGi8lHyUtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0vLS0tLf/AABEIAIQBfgMBEQACEQEDEQH/xAAcAAEAAgMBAQEAAAAAAAAAAAAABQYBBAcDAgj/xABKEAABAwIDAwYKBwYFAgcAAAABAAIDBBEFEiEGMUETIlFhcdEHFBYXU1SBkZOhIzJCYnOxsjM0UnKzwSQ1Q4Lhg6IVJZLC0vDx/8QAGwEBAAMBAQEBAAAAAAAAAAAAAAECAwQFBgf/xAA5EQACAQIDBAcHAwQCAwAAAAAAAQIDEQQhMRITQVEFFlJTcZHRBhUiMmGhwTOBsSNC4fAUJDRy8f/aAAwDAQACEQMRAD8A7igCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAID4lkDWlx3AEnsGpQGnhOLw1LS6FxcGmxu1zdbX+0BwKhO5LTWpvqSAgCAIAgCAIAgCAIAgPiaQNaXO3AEnsGpQGpheKw1DDJE/M0Gx0Isd+ocARooTuS00eWGY/T1D3RxPzOaCTzXAWBte5FjqiaYcWtSTUkBAEAQBAEAQBAEAQBAEBglARVdtNRw6SVEbT0Zrn3NuVR1IrVnbS6OxVXOFNv9vUineETDQbcuT2Ry/8AxVN/T5/ZnWugMf2PvH1Nqk22w+T6tSwfzBzP1gKyrQfEyqdD42nnKm/2s/4bJyCoY8ZmOa4dLSCPkrp30POnCUHaSs/qeqkqEAQBAEAQBAEBAbQ7UR0pDMpklP2G8L7rnhfgN6q5WLKNyGl23kaCJqWSMOBAdqCCRoecBf3qNotsfU3fB3VSSQSGR7nkSWBcSTbIzTVTEiazLWrFAgCAqOL7VSmY09HFyj26Oda7QeNuzpJAuquXIuo8WaM+0VbCLVkH0b7tLmCxGYW0IJaT1Gyi74k7K4Fh2TwqKCG8MheyQh4cbdAHDsUpFZO5NqxUIAgCA+XvABJNgBcnoA3oCg1O0lTVSObTPjhiabZ3ua0noN3dPQAqXbNNlLUR7QVlK4GocyeImxcwtdb2ttr1EJdobKehfIJmva17TdrgCD0gi4VzM9EAQBAedREHtc07nAg9hFkByLxqWkNRSt+2eTPTYEi4/mabe1ZaZG2TsyZ8GzbVUgOhEZBHY8KY6kVNDpC0MggCAIAgCAIAgCAIDBKApO1fhDgpiY4QJpRobHmNPW7ieofJYzrJZI97o7oGriEp1fhj934HMcY2lq6s2klcQd0bOa3syjf7brmlOUtWfX4bo7C4RXhFeLzfmz0odj62UZhAWN/iktGP+6x+SKnJ8DOv0zgqHzVFf6Z/4NryHn4z0g6jO2/5JsPmvM89+1fRyy2n9vU+JdhqwC7Gxy/hSMcfddTu5crnRR9osBVdlO3ivS5FNNVRyacrA/scwm3VxCpnF8j0msPi4W+Ga/Zl42a8J72kMrG5m7uVaLOHa0aH2LeFdr5j57H+zcXeeGdnyf4Z06irY5mCSJ7Xsduc03C6YtNXR8jVpTpTcJqzRsqTMIAgCAIAgKHWbL1QqJKkVEceZziHEm4B0GpGmlhoqbLNFJWtY8jg9ZK0xiuhlBGrS/P/AGPvSzJ2lyJ/YrCJaWJ7JctzJmGU3FsrR/YqYqxSTTZOz1LGfXe1v8xA/NWKkfiuPQwxGXMHi4ADXNJcTwGvtUNkqNzGAYyKuN0jWOYA7KM1tdASRbhqidw1Yq8WxUdsxrdHG125QC6+6+bUquyX2/ofGMbJtp4nPfWSBmgIy3uSdBlDtVDjYKd+BYdiC3xRoY4uaHPAcWlv2r7j2q0dCs9Sanq42EB72NJ3BzgL+9WKnrdAeU9VGz672t/mcB+aAzBUsfqx7XfykH8kBisgEkb4ySA9paSN9iLIxoVOTY7D49JJXA/ekY0+6wVNlF9uREbQ4Nh9M1pD5XF+4MfG7QcTcbrqGki0XJl02YcDSQ5Q4NyANzWzFo0BNtNRqrrQzlqbbsRhBsZYwegvbf8ANTcWNlrgdQhBh7wBckAdJ0CA+Iqhj/qva7sIP5ICHqNmoX1QqySXCxy6ZC5osHHS993HgFGzncttO1ir+Dw/4yb+V39QKsdS89DoM87GC73NaOlxAHvKuZGYpWuF2uBHSCCPeEB8moZmyZ25v4bi/u3oD0JQHlBVxvJDHscRvyuBt7kFjMlSxpyue0E8CQD7kB6oAgCAxdAcq8IW3JcXUtK4houJJGmxJGha0jh0niuWrVv8MT7DoXoVJKvXV3wX5ZU9n9nHVDTLI4Q07TzpXcepg+25ZRjdX4HqdK9NUOj4fG7y5epYI8Thpxloogzhy8gDpndh3MHUFDqJfIv34n5f0n7SYvGO21aPLh5f/WRtTVySG8j3vP3nF357lm5N6s8CU5S+ZtnhZVKH0wkagkHpGh94TQlZaEpBj8uXk5g2oj4smGf3OOoPWtVVejzX1O/CdJ4nCy2qc35s1a7ZqKoaZKAkOGr6Z5u8DpY77Y6t6tsqWcfL0P0XoX2shif6eIyfP19UR2y2001DLdtzGTaSMk2Oupt9l46VEJuLuj6PpDo6ljaeeT4S/wB1R3PCMTjqYmzROuxw9oPEEcCF3RkpK6PzvEYeph6jp1FZo3VYxCAIAgMOQHMMcpp5JnOr5RAz7I/aC3Qxjfrdbj/ws3rmap2WRq1OE0+Qy0lTndGMxY5pY+w3uadNyiyJ2nxRb9ncXqJ6FzmAPnYSwFxtc2BDj12PtsrJuxSSSZUHUDC8ur6hzJCdWZTJJ2m1wwdAVbcy9+RrYvhUcbRLBM2WNxy3tlc11r2cOwHXqRolPmTm0eIkU1LT07SxssbXlrbkm+5vSbm9+lS3lkVis3cjaHZ9k0Mr2zFphbd0b2WIfY9drHKRff0qEiXKzIyeqmkYwyue+NpDRc7rC9h97LxKhlrHXcDjjbTxCEWjyNLemxF9evVarQwepzPE2sNVVeNmQP53J2F7m/MB+7ly9SzerubK9lYsGzNbP/4ZNyd3SMcWx2GYgWadBxtc2VlexSSW0VCINfMfGnSgk2JADn3PTnOir4mngTOPbOyYeWzwykjNbMBlc07xfWzgbKWrZlVLayZaavEKqegjkpmjlHjn2IBba4dlB3m/uVnmilknmUyDDaW/+JqiJD9YMYX5T95+oJ6bKlkaXfBHhUYeyCeLnNmhcWkOboHtzWcDY6EdCcRe6LL4QpZ2ljI84gyC+UENvcixI4Wy6btVaRSFiF2b2fgqw5gkeyVoBN2NLLE26bn5KqVyzk0b2zNTNR1vij3Xa52Qt3tuRma4dH/KlZOxEldXI3aPFzU1LhI9zYWuLWgDNYNJF8txdxtx3XUN3ZaKssjVdDSXGSeZnSXRA+3mPvb2FMhnxR1DZygMFM2MycoBctdawyu1AGp01WiVjGTuyneDz97m/kd/UCrHU0noNtrGuYKkvEGUWLddLHNbrzWvxsolrmIaZGls5jraTxjKSWEfRNdxdms0kDdzdT2InYmSuQ1fFKWipkJvK55a7cSW2u4dAudOxVZbLQu23lbIKOAAn6S2c9PMvbsJ/JXk8jOCzKzh4YKim8TdIZDl5QEWsbjMNPs2vfgqrXIs9MyV20H/AJlD/wBH+oVMtSI/KdHWhkEAQFI8J+0hpoBDEbSygi43tj3E9p3D29CwrzsrLie/0D0csRV3s18Mfu+BzTZbBG1DnSTEtp4hmkd0/wALB95y5oxvrpxPpOm+lodH0Nu/xPT1LbhzvH6jkCBHEIniFg+rFaxaes6alTH+rLZ8j8glWqY/EN1Hm0/PmQNdRyQvMcjS1w4dI6QeI61lKLi7M4KlOUJbMlmeCqUCAIAgJisweWnovG3Zo5OUj5Lg5gubu6idNOjtV5wcKe3xufR9C4Vxm5zWqtb6GjiUTcQgdUsaG1UQvOxugljH+sB0jiP+FMZqqtritfU+86Jx7oTWHqv4H8r5Pl4cjPg32lNLUCJ5+hlIDvuv3Nd+QPVrwWtKey/ozv6c6O/5NHeRXxx+65flf5O3Bdp+fmUAQBAEByzapxfiTw5jpQ3KAxt7loYHWFgSNSSbdazeptH5T4qsPp56d9RTNdG6L9pE52YZTxaTr0+4pbIXadmWTwaH/DS/in9DFMdCs9Sl0EzM8ks0D526l1nOAaSTqSPlchVLvxNnHsLjZHHUU5Jhl0Ad9Zjxe7T07j7kYT4MtsOz4qaSkkbIY5Y42ZXjXSwP5q1rme1ZshtqMHNJTD6Rz3zSXlduzWa4gW6LklRJWRaLuzzx6hZFh1Nl3vfyjj0udGf+AjWRMXeTJLFaGokw6mdC91mRMLo26F1gCHAjUkdClrIqmlLM0zjsdVRStmazxhkZyvIF3AHeDvDhxHtUXusydmzyJfwZ/u0n4p/QxWhoVqakLsfTtlxCUyAOtyjhm152e19e0qq1LS0LB4R/3QfiN/Iq0tCsNTxoJS3Bi5psRE+x6LuIUL5Q/mKbhLqdjL1FPI9jjblWlwDeocCeO9VVuJo78D6xrCvFp2Na7NG/K+N3S0kb+tGrBO6Lv4RHkUeh3yMB6xqf7BXloZw1PbYWlY2jje1oDnhxc7iecQNfYEjoRPUrdf8A5038SP8AQFV/MXXyFyrMOpGNfLJDFZoLnHI3tPDUq9kZps5ttDXxzta6Kl5FgLgHhts2m4kC1xbdcrN5msVbidPwX91h/CZ+kLRGT1OabP4q+lmllbEZBZwda/NGe9yQDbdxWadjVq6OjUFTDWwNkyBzTfmvAJa4aEdq01MrWZzTZzBvGqnk9zGkuf8Ayh1rDrO5ZpXZrJ2RP+E2INZTtaAABIABuAAZYK0isOJJbXmP/wAOZnaSbRhltLPy7+y10ehEfmIDZnD68NZJAA2NzgSeYCW3F94vawUJMtJxPbbT/Mov+j/UKS1EflOjrQyCAw42GqA/PO1OJurKySUXIc7LGPujmtA7d/tXnzltO5+m9H4aOEw0YPgrvx4llxhgp4oqFlvowHzEfancNfY0WA/4SpklDz8T8k9o+kpY3Fyz+Fafj/eZueD399b/ACP/ACCnD/Oeb0f+uvBnRsWwiGpZllZfoO5zesHguycFJZnt1qEKqtJHONodkJqe72Xki6QOc0feA4dY+S46lCUc1meJiMDOlms19yuLE4TdwnCZql+SJhPS7c1va7h2b1aEHPJGtKjOq7QR0fZ7Y6Gns9/0knSRzWn7rf7nVdlOio5vU9vD4GFLN5s0/Cr+4f8AUj/MrPGfpHsYT9Q5Vg+JPppmTM3tOo4OafrNPURdeZTm4SUkejOKlFo9Nr8NZDPeL9jK0SxH7jxe3sNx7l3SSvlo8z67onFvEYdOXzRyfivU7DsFi5qqKN7jd7bxv/mbpf2ix9q66MtqNz4npjC/8bFSitHmv3LEtTzAgCAICnY9s9U+NeNUjwHuFiCQLaZeIsQQBoqNO+ReMlazMYZsrLHS1DXOaZp2kb+aN9rm2+5OqbOQcldEhsXg8tNC9kuW7n5hlNxbK0dHUVMURJ3ZX59k62MyRU72mGU63IBtwuLX4203qNlltpcTfxXZSTxKGnhLXOY8vcXHKCSHXt7SEccgpq9yy4JTOip4o32zMY1ptqLgWOqsijzZTMb2Yr5pXnOHRl7nMa6Q2AO7S2mio4s0UkjVfsdXvDWPkaWN3AyOcG8NG26E2WNtHQsNpeSijiBvka1t+mwtdaIybuVHafYsyScrTZQXfXYTlF+kaceIVHHkaRnzJvZHBnUsBY8guc4uNtwuALX47lMVYrKV2Rmy2z09PVSSyZcrg8CzrnV4cNLdChKzJlJNEltjhclTTiOLLmztdzjYWF1aSuiIuzGG4M4UHispAJY5pLdbXJIPXwUJZWDlncq/klXlopnSM5AOzXv87Wv06darsvQvtrUktpdmJZXwcjlyRMaznOsdD2dCs4lYyRK7YYVJU04jiy5s7Xc42FgDf81LV0RF2Zt7N0L4KWOKS2ZoN7G41cTv9qLQiTuyBqtnZ3YkKkZOTD2O+tzrBoB0sq2zLKS2bFnxKjE0T4ibB7S2/RfirMosiiDZKuc0UzpGcgHZgb3331Ate+p061TZehptrU6BSwBjGsG5rQ0dgFloZlFqtlqyJ8raZ7eSmvmuQDYkmxuOsi4VHFmm0nqWnZvCPFacRXzOuXOPAuPR1bgrJWRSUru5DbHbPT008j5cmVzSBldc3z36OhQlZlpSTR67c4DNVclyWXm575jb62W3DqKSVxGVjbx/BH1FI2EEB7chF9xLW2I/NGroiLs7lYh2ZxNgDWS5WjcBM4AeyyrssvtRPWg2Qq3VDJKh4IaWkkvL3HKbgahSou5DmrZHQVczCAhtsq3kaGeQGxDCB2u5g+ZCpUdoNnf0ZRVbF04PS/8AGZxjYSkEldFm+rHeV3ZGMw+dlx018S/3Q+46bxDoYGcuat5m3VTmR75Dve5zj/uJKyk7ts/DJy2pOT4mxg2Iupp2TNF8p1HS0ixCmEtmSZejVdKopo6/hWKxVDA+J1xxHFp6COBXowmpK6PpKNaFWO1Fm6QrGpzfbDZwNqohEMoqHZbAaNcLXIHRY39hXHVpJSVuJ4mMwiVWOzltF+wvD44IxHG2zR7yeJPSSuqMVFWR69KlGnHZijZkeGgkkAAXJOgA7VbQ08DkfhE2rZVEQQG8THZnP4PcBYW+6NdeJXlYqup/DHQ9LC0HD4paspK4zsJ7EBy2FxP+1TzOi/2SAPaPeu6m70l9HY9PoOrsYqdPhJX/AHWRY/AxVm9RDwsyQdurXf8AtXTh3m0V9qaStTqeK/J1NdR8gEAQGpideynidNIbMaLkgE6XtuCiUlFXZrQoTr1FThqyuecfDvSu+G/uWW/ger1fx3YXmvUecbDvSu+G/uTfRHV/Hdhea9R5xsO9K74b+5N9EdX8d2F5r1HnGw70rvhv7k30R1fx3YXmvUecbDvSu+G/uTfRHV/Hdhea9R5x8O9K74b+5N9EdX8d2F5r1HnHw70rvhv7k30R1fx3YXmvUecfDvSu+G/uTfRHV/Hdhea9R5x8O9K74b+5N9EdX8d2F5r1HnHw70rvhv7k30R1fx3YXmvUecfDvSu+G/uTfRHV/Hdhea9R5x8O9K74b+5N9EdX8d2F5r1HnHw70rvhv7k30R1fx3YXmvUecbDvSu+G/uTfRHV/Hdhea9R5xsO9K74b+5N9EdX8d2F5r1HnGw70rvhv7k30R1fx3YXmvUecfDvSu+G/uTfRHV/Hdhea9R5x8O9K74b+5N9EdX8d2F5r1HnGw70rvhv7k30R1fx3YXmvUecfDvSu+G/uTfRHV/Hdhea9R5x8O9K74b+5N9EdX8d2F5r1HnHw70rvhv7k30R1fx3YXmvUecfDvSu+G/uTfRHV/Hdhea9R5xsO9K74b+5N9EdX8d2F5r1HnHw70rvhv7k30R1fx3YXmvUecfDvSu+G/uTfRHV/Hdhea9R5xsO9K74b+5N9EdX8d2F5r1HnHw70rvhv7k30R1fx3YXmvUyzwiYeSAJXXJsPo38fYm+gQ+gMcldx+6LYCtjxjKAqXhTP/lsvW6P+o0/2WOI+TyPa9n1/3o+D/hnNtgjZ9U4b20k1v+1c8OPge17Xycejnbn+GeYXOfjoQGxQV0kDxJE4tcOI4joI3EK0ZOOaL06kqctqLszpOzW2EdRaOW0cu4fwv7DwPUV20q6lk9T3MNjo1Phlkz22l/eqD8Z39MqanzR8S2J/VpeP4N/H8dho4+Umda/1WjVzj0Af33KatWNNXkejTpSqO0TkG1G109aS0nJFwiB07XH7R+S8qtiJVPA9OlQjT+rK8sDcICfw7XC64Hg+mcO0vLfyXXQ/Tl4o6ujHbH0/CX8G/wCCB3+OeOmJ36mrrofMen7TL/qr/wBl/DOzLrPhAgCA16+jZMx0cjQ5jtCDx48FDSaszSlVnSmpwdmiF8iMP9WZ8+9Z7mHI7/fGN7xjyIw/1Znz703MOQ98Y3vGPIjD/VmfPvTcw5D3xje8Y8iMP9WZ8+9NzDkPfGN7xjyIw/1Znz703MOQ98Y3vGPIjD/VmfPvTcw5D3xje8Y8iMP9WZ8+9NzDkPfGN7xjyIw/1Znz703MOQ98Y3vGPIjD/VmfPvTcw5D3xje8Y8iMP9WZ8+9NzDkPfGN7xjyIw/1Znz703MOQ98Y3vGPIjD/VmfPvTcw5D3xje8Y8iMP9WZ8+9NzDkPfGN7xjyIw/1Znz703MOQ98Y3vGPIjD/VmfPvTcw5D3xje8Y8iMP9WZ8+9NzDkPfGN7xjyIw/1Znz703MOQ98Y3vGPIjD/VmfPvTcw5D3xje8ZnyIw/1Znz703MOQ98Y3vGY8iMP9WZ8+9NzDkPfGN7xjyIw/1Znz703MOQ98Y3vGPIjD/VmfPvTcw5D3xje8ZnyIw/1Znz703MOQ98Y3vGY8iMP9WZ8+9NzDkPfGN7xjyIw/1Znz703MOQ98Y3vGPIjD/VmfPvTcw5D3xje8Y8iMP9WZ8+9NzDkPfON7xjyJw/1Znz703MOQ9843vGZbsVh41FMy/t703MORD6YxrVnUZYAFqeaZQFY8JMBfhs4G8BjvY17SfkCsq6vBnrdBzUMdTvxuvNM5f4PHA1T4j/AKsE0Y6yW3H5LmhrbmmfTe09He4CX0a9PyfA61zn4qSmzNAyoqo4pL5XZr2Njowka9oWlKKlJJnRhqUalVRloSm0WzTWVcVNTh30jQecc1ucQTfoAF1pUpWmoxN8RhFGtGnT4o3Np8Ao6SEHnuldowZ7XcN7rDcBv9ytVpwhH6muKwtCjDjteJvsqnStwp7jdxe656bMIv8AJWvfYbNlNzVCT1v+CMhwmPEcTrG1BeRFlazK7LYAkW/usVTVarLa4H0bm6VGLjxKPtHRMgqpoY75GPytubm1gd/tXFWgoTcUddKTlBSZGrM0CAnoTkwmcn/VqImDrEbc5+ZXZRX9J/Vo7uiYbWOT7MW/PIl/A3BepmfwbGB7XOFv0ldVD52dXtPO2HhHm/4R19dZ8SEAQGrisxZBK9v1mse4doaSFDJWpVqPaConbTwwlvKvbnmflu1jLkbuk93Sq3ZZxSJbazFX08AMf7V7msZpfXeTbjoD71aTsiIq7PB+0ThhwqwAX5QCOGe4YfZfVRfK42fiseUVZWMpZZnywyDks8bmDc7W4PAgaJd2Jsr2NVm08jJITK4cm6l5Z+gBL9d3bYaKNobIO0FUyBsj2gy1DrQRWtladxJ3k6joS7Gyrn0cWrqR7DWcm+J7spczfGT/APfkUu1qLJ6HlimM1gqKkQvYGQNEmVzRq3KCRf3o2yVFWQxDa+SN1LJYclLHnkba5GtiQepHKwUNSWxHF3iqpGRuBjmzl2gNwBcWPBS3mVSyZ94riUkdZTQtIySZ8wtqbC414I3mglk2aON4jVeOCngkjYOTD+eBbeQdfcjbvYlJWuySxHEH09EZZHNdK1g1H1TIdBYdFyFLdkVSuzRwfaF7qGWeQXlhzhwtbVouNOGhHuKhPIs452PnB66sfC6d8kL2GJ7wGjnMeBcN6D136ETZDS0IobXTRtpJJLObI1xls3WweW3Ft1hqo2i2wsydxLGXNqqVrHDkpWvc42vcBuYEFS3mVSyI6nxLEKprp6bk2RAnI1wu6S3Xw+Si7ehNktSzYXUSPiY6WPk3kc5t72KsirIXaTG5oOUyZNACCWvO/pN7XUSdi0Vc3MMxd72yPkAsxodZjX5joSdHb93BE8iGiJp9oqm8DiwObNyrg0ZGnIPqC7nDUDUnrUbTJ2US1RjZZTMnyB7nuY0MY8EZnuygZ9x7VN8iLZ2IqPaapzTPNNeNmmUSMu0sF5Nft7xuGijaZOyuZtY9jT2OgySxwskY5xfI3MBYNLRvGupUthRPDDMckdVRReMwzteJC7k2FpblbcG+Y7yl8w45aHlX45PmnIcYWMfAxudg0D3ua+TXeNDbsS4UUekWMz+Kve17ZXeMci2UBoGQua0PsNDv+aXyGyrmrRY7OazknSgtzAZbwXPOILbh3C24a9Si+ZOyrXLurmYQGviNKJYnxO3Pa5p9osoaurGlGq6VSM1waZ+eMPqH0lUx5FnQyDMP5XWcPaLheensu/I/Tq0I4rDOK0lHL91kWfaGlEc7izWOS0sZ4FknOFveR7FFWOzI/Csdh5YevKnJcTc2F/f4v9/9NytQ+dDA/wDkR/f+DqApY+WMu+TIGdjbk+y5v7l3WV7nv7Edva42scm2orJZaqQyjKWksDf4Wg6DrvvvxuvPqybk7nzuKqSnVe1wyLRh/wCywn8R/wCly3WkD0KfyUPH8Mzsb/muI9o/UVWh+tM+ir/owKFtr/mFT+IfyauLEfqyOyh+nEhFgbBATe1x5KOmohviYZJfxZbOI7WtsPavQ2dmKhy/k97oCi9idd/3Oy8F/kvnghw7JSOmO+V5t/Ky7R/3Zl1UFlc8X2lxG3iVTX9q+7z/AIsX1bnzoQBAaOO/u034Un6CoehK1KHs7MaIQVB1gqG5ZD/A8OcAez/lUWWZpL4rolcdllqK+NlOGONO3lOcTkzOta9urLZS82VVlHM1cGq/FmVVNUx5w1wkLG84ZJCA4i/2RoUTsWedmjUgEX+M8ULjTeLkm98ok4Wza9PzUc7Dlc858O8ZfSxA2caMFp+83MR7L/mlrk3tc2anFJJWQVBaTNSPLZmcbaDNbo0I6il+JGmRs49jTK9sdLTBzi9zXPJBAYBrr39Slu+hCWzmyN2ho3Pq6stuRE2N72AkZ4wG5gbdWqh6lovIlJZYZqygMYHJOhe0N4BuVwLT2blPFFeDNWOhkp8QpYHG8THvMJP8D2klt+o/motZ2JveJK7WVbIa2jkkNmt5S536WA3BTLVFYq6ZE47VUc1bHJOSYHQAgjMCTmcBoNelQ7XLRvbI2sekbM2jpKSxaQJGhxIGRg5t7623+5S/oRHK7Z8UdVLS1U4qIweXjMuSPnBzhe4F+kZrqNHmHmsjXojCalxocwidBKZm87KDkdlGvG9v7IrXyJd7ZnzgUbXPw5rgC10U7SDxBMgIRcA+IfhskVbDSuN4/pRC4/wSNdzb8cpS2YvdXPSmxOOGkNHUOlhlicbcncOfzi4WI4G6m+VhZt3LNsZDM2laZi4vcXO5xJcGncNeoX9qmOhSWpEbUQxMknlc2Iv5K7XOyktIIABYW2JJsASb9Chlo3JLZ+kjZJUckyNu4ZARfNYnUZQWtNxYXI1NlKKtkTXRTNkpqd1NTFtnhjC4vGgB+s5t226t6hllbUsT+XbTi0ETpAQBGHcwNG4gluhA4WVsymVynw1GWkbI17fGYJJjIL6tbLI6NzjbcLlrr/dCpwNOJMbQPAfRudUCMZHgzWa4EljT9sW1UvgVXE+NnW8lVviNSDc8oxmVg5YSMzFwNrixubDTRFqHmrkNilPyU8xc2KO8sOUlxOXn3uRezgQ0uI4KHqWTyJKkqGmiqfpoxapu6RvNbYujN2jW1xe29TfIh6o+cPc10gcypfblWiJ0hGWYNymT7O/UgC+qIMvauZhAYKA4/wCFjATFOKpo5kujuqQD+4F+0FcleNpX4M+49nMcqlLcS1jp9V/g1dnajxum8Ucfp4bugJ+2ze6Lt4hZpbUdnitDxPa/oVz/AO1SXj4/5/k39iDavizaW5S99LHI4cVFD50fn+Byrxv9SybRY34tiMUgN2GINkA15ud2vaN/vW1Sps1EzuxGI3WJjJaNWfn+DG3eFsmjFVEWl7QM1iOdHvB7R+SV4KS2kMfRU472LzX3R54f+ywn8R/6XqI6QIp/JQ8fwY2QkAxTEbkDnDebfaKpQa30z6Kt+lA18c2CFRUSzirjbyjs2XLe2gG/OL7lWrhdubltFqeK2IqOyQGP7D+K075/GmSZbc0NsTdwG/MelYVMLsRctq5tTxO3JR2SM2fgZGDWzj6KI/RtP+rPvawfdG8nqVaFPPbei+7OylQniaqo0+Or5LmRdHTTV1UG3vJM8lzuAubud2AX9y6EnJ24s+xq1KWCw+1/bFefJH6Ew+kbDEyJgs1jQ0dgFl6CVlZH5lWqyq1JVJat3NhSZhAEBhwvoUB8GFtrZRbosLe5AZbE0agAHqAQDkxe9hfdewvZAYbC0CwaADwsLe5AZETdDYaaDQaBABE0Emwud5sLlAYjga2+VoF99gB+SAzyTbk2FzvNhcjr6UBhsDRazQLbtBogPosBIJAJG49CA+ZIGu+s0HtAP5oDBpmfwN06ggPpsTRqALjTcNyAGME3IFxuNtQgDYmi9gBffYDVAYELRazRpu0GnZ0ID6dGCQSBcbupAfL4Wk3LQSNxIBIQH3ZAeb6dhvdrTe17ga23dqA+xGL5rC50J427UAdGCQSBcbjbUdyA+kB5eLM15jdd+g17elAZfA1wALQQNwIBAQDkG3Byi40BsLgdAPBAZfC072g9oBQGBA0C2UWPCwsgMiJugsNNRoNEB9oAgCA0cawyOphfDILteLdYPBw6wdVWUVJWZvhsRPD1VVp6r/bHBscwmegqMjiWuac0cg0zAHRwPT0jguGUXF2Z+j4TFUcdQ2lmnk1y+hYqWsixEalkVZxBs2OfrB+zJbhxUv4/o/sz8+9oPZaVJuvhleP8ePr5kdU0743FkjS1w3gix/8AzrWLi1kz4aUHB2krM8wFBUvuH/ssJ/Ef+l661pA9in8lDx/Bz/a/9+qfxXLzq/6kvE+vo/px8CI0WRqTFFgwawVFWTFBwG6WY9EbTw+8dAuinQbznkvuWo0qmInu6Su+L4Lx9DQxrFX1L2tazJGzmRRNvZovpp9p54neSulu59bgcFTwdPJ56tv/AHT6HV/B1sl4pHy0o+nkGo9G3fl7ensA4Lqo09lXep8f030p/wAue7pv4F93z9C6BbHhBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQBARW0OAw1kRimb1tcPrMPSCqTgpKzOvB42rhKm8pvxXB+JxbajZGoonXcM8X2ZWjT2j7B7Vxzg4a6H3uA6VoYxWTtLjF/jmelBthKGCOpY2pjG4SaPb/ACyDUe26bb0eZx9I+zWDxmdtl/T09DfbV4ZKLiWanP8AC9nKtHtZqoapvi19z47FexGJi/6Mk/39bfyWijxOhDKMCti/w7nON2vaXAgjQEXG9apw+H4tDLq5j4buLg/h+/3KvjbMPkqZZnVxIe8uDI4Xl2vDO6zVzVKUJTcnLX6Hv0ei8dspbu3jJfjMjzjtNB+6U13jdNORI4dYjAyN+atGMI/Kv3Z6lDoFvPETv9I5Lz1I1raqum0zzSu9un5NHuCnOT5s9i+GwVLhCK/3xZ1fYnYNlJaaaz5+H8MfZ0u+97l1U6Kjm9T4zpXpueK/p08ofd+P0+hdlueCEAQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQBAfL2AixFwd4OoKEptO6KhjXg5o5yXMDoXH+D6v8A6Dp7rLGVCL0yPbwvT+Ko5Se0vrr5lPrfBXVNP0UsTx15mH3WI+ayeHke3S9p8PL54tPz9COPg5xD0bD/AL2qu6nyOpe0GB7T8mbFN4Mq531uSYOt5P6QVKozM5+0mDj8t3+3qWTCfBVE2xqJXSfdYMjffqfyV1h1/czysR7T1ZK1GKj9Xn/gvWG4XDTsyQxtY3oaN/ad59q3jFR0Pna+Iq15bVWTbNxWMQgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgP//Z" width="60" height="30" alt="VSTS" class="img-block" style="color: #fff;" />
                                                    </td>
                                                    <td color="#ffffff" style="padding: 0 5px 0 5px; text-align: left; color: #ffffff; font-family: Segoe UI, Helvetica, Arial, sans-serif; font-size: 16px;">สินเชื่อรถช่วยได้กสิกรไทย
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                                <!--[if (gte mso 9)|(IE)]>
            </td>
            </tr>
            </table>
            <![endif]-->
                            </td>
                        </tr>
                        <!-- HERO -->
                        <tr>
                            <td bgcolor="#ffffff" style="padding: 40px; border-bottom: 2px solid #eee;">

                                <table border="0" align="center" cellpadding="0" cellspacing="0" width="100%" style="max-width: 800px;" class="responsive-table">
                                    <tr>
                                        <td>
                                            <!-- COPY -->
                                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                <tr>
                                                    <!-- INNER HERO LEFT -->
                                                    <td>
                                                        <table>
                                                            <tr>
                                                                <td align="left" style="padding: 15px 0 0 0; font-size: 24px; line-height: 30px; font-family: Segoe UI, Helvetica, Arial, sans-serif; color: #444444;" class="mobile-center">สินเชื่อรถช่วยได้กสิกรไทย
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="left" style="padding: 10px 0 25px 0; font-size: 16px; line-height: 25px; font-family: Segoe UI, Helvetica, Arial, sans-serif; color: #444444;" class="mobile-center">
                                                                    
                                                                    &nbsp;&nbsp; บริการพิเศษสำหรับลูกค้าที่เป็นเจ้าของกรรมสิทธิ์ในเล่มทะเบียนรถยนต์ที่ปลอดภาระหนี้หรือภาระผูกพันใดๆ โดยลูกค้าประสงค์จะใช้รถยนต์ซึ่งเป็นสินทรัพย์มาแปลงเป็นเงินสด

                                                                 <!-- BUTTON -->
                                                                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                                        <tr>
                                                                            <td align="">
                                                                                <!-- BULLETPROOF BUTTON -->
                                                                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                                                    <tr>
                                                                                        <td align="" style="padding: 15px 0;" class="padding">
                                                                                            <!-- PRIMARY BTN -->
                                                                                            <table border="0" cellspacing="0" cellpadding="0" class="mobile-button-container" align="left">
                                                                                                <tr>
                                                                                                    <td align="center" bgcolor="#007acc" style="padding: 0 10px">
                                                                                                        <a href="https://microsoft.com" target="_blank" style="font-size: 14px; font-family: Segoe UI, Helvetica, Arial, sans-serif; color: #ffffff; text-decoration: none; padding: 6px; border: 2px solid #007acc; display: inline-block;" class="mobile-button btn-primary">
                                                                                                            สมัครสินเชื่อ</a></td>
                                                                                                </tr>
                                                                                            </table>
                                                                                        </td>
                                                                                    </tr>
                                                                                </table>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                    <!-- END BUTTON -->
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                    <!-- INNER HERO RIGHT -->
                                                    <td class="mobile-hide" style="text-align: right; width: 40%; padding-left: 5%;">
                                                        <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/130015/gfx-welcome2x.png" width="180" height="169" class="img-block" /></td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>

                        <!-- PROMO 1 -->
                        <tr>
                            <td bgcolor="#ffffff" style="padding: 40px 30px 40px 40px; border-bottom: 2px solid #eee; vertical-align: middle;" class="mobile-promos">
                                <!--[if (gte mso 9)|(IE)]>
            <table align="center" border="0" cellspacing="0" cellpadding="0" width="600">
            <tr>
            <td align="center" valign="top" width="600" style="background: red;">
            <![endif]-->
                                <table border="0" width="29%" cellpadding="0" cellspacing="0" class="gfx-promo" style="display: inline-block; vertical-align: middle;">
                                    <tr>
                                        <td style="text-align: center; vertical-align: middle;" class="img-padding">
                                            <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/130015/gfx-agile-tools2x.png" width="125" /></td>
                                    </tr>
                                </table>
                                <table border="0" width="70%" cellpadding="0" cellspacing="0" style="vertical-align: middle; display: inline-block;" class="responsive-table">

                                    <tr>
                                        <td>
                                            <!-- COPY -->
                                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                <tr>
                                                    <td style="font-size: 20px; font-family: Segoe UI, Helvetica, Arial, sans-serif; color: #444444; text-align: left;" class="mobile-center">
                                                     จุดเด่น
                                                </tr>
                                                <tr>
                                                    <td align="left" style="padding: 0; font-size: 15px; line-height: 25px; font-family: Segoe UI, Helvetica, Arial, sans-serif; color: #444444;" class="mobile-center">
                                                        
                                                           เงื่อนไขพิเศษ
                                                          <br /> - &nbsp;   วงเงินกู้สูงสุด 100% ของราคาประเมินรถยนต์  ทั้งนี้ขึ้นอยู่กับเกณฑ์การพิจารณาสินเชื่อของบริษัทฯ
                                                          <br /> - &nbsp;  อนุมัติผลภายใน 24 ชั่วโมง
                                                          <br /> - &nbsp;  ลูกค้าจะได้รับเงินภายใน 24 ชั่วโมงหลังจากที่ได้ทำการโอนรถยนต์เป็นที่เรียบร้อยแล้ว
                                                          <br /> - &nbsp;   ระยะเวลาในการกู้สูงสุด 72 เดือน
                                                          <br /> - &nbsp;  อายุรถสูงสุด 17 ปี
                                                          <br /> - &nbsp;  อัตราดอกเบี้ยแบบลดต้นลดดอก  และอัตราดอกเบี้ยคงที่แบบ Flat Rate 
                                    <!-- BUTTON -->
                                                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                            <tr>
                                                                <td align="">
                                                                    <!-- BULLETPROOF BUTTON -->
                                                                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                                        <tr>
                                                                            <td align="" style="padding: 15px 0;" class="padding">
                                                                                <!-- PRIMARY BTN -->
                                                                                <table border="0" cellspacing="0" cellpadding="0" class="mobile-button-container" align="left">
                                                                                    <tr>
                                                                                        <td align="center" bgcolor="#cccccc" style="padding: 0 10px">
                                                                                            <a href="#" target="_blank" style="font-size: 14px; font-family: Segoe UI, Helvetica, Arial, sans-serif; color: #222222; text-decoration: none; padding: 6px; border: 2px solid #cccccc; display: inline-block;" class="mobile-button btn-primary">
                                                                                                สมัครสินเชื่อ
                                                                                            </a></td>
                                                                                    </tr>
                                                                                </table>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <!-- END BUTTON -->
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                                <!--[if (gte mso 9)|(IE)]>
            </td>
            </tr>
            </table>
            <![endif]-->
                            </td>
                        </tr>

                        <!-- PROMO 2 -->
                        <tr>
                            <td bgcolor="#ffffff" style="padding: 40px 30px 40px 40px; border-bottom: 2px solid #eee; vertical-align: middle;" class="mobile-promos">
                                <!--[if (gte mso 9)|(IE)]>
            <table align="center" border="0" cellspacing="0" cellpadding="0" width="600">
            <tr>
            <td align="center" valign="top" width="600" style="background: red;">
            <![endif]-->
                                <table border="0" width="29%" cellpadding="0" cellspacing="0" class="gfx-promo" style="display: inline-block; vertical-align: middle;">
                                    <tr>
                                        <td style="text-align: center; vertical-align: middle;" class="img-padding">
                                            <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/130015/gfx-tools-training2x.png" width="125" /></td>
                                    </tr>
                                </table>
                                <table border="0" width="70%" cellpadding="0" cellspacing="0" style="vertical-align: middle; display: inline-block;" class="responsive-table">

                                    <tr>
                                        <td>
                                            <!-- COPY -->
                                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                <tr>
                                                    <td style="font-size: 20px; font-family: Segoe UI, Helvetica, Arial, sans-serif; color: #444444; text-align: left;" class="mobile-center">
                                                    รายละเอียด
                                                </tr>
                                                <tr>
                                                    <td align="left" style="padding: 0; font-size: 15px; line-height: 25px; font-family: Segoe UI, Helvetica, Arial, sans-serif; color: #444444;" class="mobile-center">
                                                      

                                   <b> คุณสมบัติของผู้ขอสินเชื่อ</b>
                                   <br />- &nbsp; มีสัญชาติไทย อายุ 20 - 70 ปี
                                   <br />- &nbsp; เป็นเจ้าของกรรมสิทธิ์ในเล่มทะเบียนรถยนต์ที่ปลอดภาระหนี้หรือภาระผูกพันใด ๆ
                                   <br />- &nbsp; รายได้ขั้นต่ำ 15,000  บาท/เดือน สำหรับกรุงเทพฯและปริมณฑล
                                   <br />- &nbsp; รายได้ขั้นต่ำ 10,000 บาท สำหรับต่างจังหวัด
                                   <br />- &nbsp; มีอาชีพและรายได้ที่ชัดเจน และสามารถตรวจสอบข้อมูลได้
                                   <br /><b> เอกสารที่ใช้ประกอบการขอสินเชื่อ : ผู้ขอสินเชื่อ และผู้ค้ำประกัน</b>
                                    <br />- &nbsp; สำเนาบัตรประจำตัวประชาชนและสำเนาทะเบียนบ้าน อย่างละ 4 ชุด 
                                   <br />- &nbsp; สำเนาหนังสือรับรองบริษัทและหนังสือบริคณห์สนธิ 4 ชุด (กรณีนิติบุคคล) 
                                   <br />- &nbsp; เอกสารแสดงฐานะการเงิน เช่น สมุดบัญชีคู่ฝากธนาคาร  หนังสือรับรองเงินเดือนหรืใบสำคัญจ่ายเงินเดือน  อย่างละ 1 ชุด 
                                   <br />- &nbsp; กรณีสลิปเงินเดือน  อย่างน้อย 6 เดือน
                                   <br />- &nbsp; สำเนาเล่มทะเบียนรถยนต์ 
                                   <br />- &nbsp; กรมธรรม์ประกันภัย ชั้น 1 หรือชั้น 2 
                                    <!-- BUTTON -->
                                                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                            <tr>
                                                                <td align="">
                                                                    <!-- BULLETPROOF BUTTON -->
                                                                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                                        <tr>
                                                                            <td align="" style="padding: 15px 0;" class="padding">
                                                                                <!-- PRIMARY BTN -->
                                                                                <table border="0" cellspacing="0" cellpadding="0" class="mobile-button-container" align="left">
                                                                                    <tr>
                                                                                        <td align="center" bgcolor="#cccccc" style="padding: 0 10px"><a href="https://microsoft.com" target="_blank" style="font-size: 14px; font-family: Segoe UI, Helvetica, Arial, sans-serif; color: #222222; text-decoration: none; padding: 6px; border: 2px solid #cccccc; display: inline-block;" class="mobile-button btn-primary">
                                                                                             สมัครสินเชื่อ  
                                                                                         </a></td>
                                                                                    </tr>
                                                                                </table>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <!-- END BUTTON -->
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                                <!--[if (gte mso 9)|(IE)]>
            </td>
            </tr>
            </table>
            <![endif]-->
                            </td>
                        </tr>

                        


                        <!-- FOOTER -->
                        <tr>
                            <td bgcolor="#F3F3F3" style="padding: 0 30px; text-align: left;" class="mobile-center">
                                <!--[if (gte mso 9)|(IE)]>
            <table align="center" border="0" cellspacing="0" cellpadding="0" width="600">
            <tr>
            <td align="center" valign="top" width="600">
            <![endif]-->
                                <table border="0" cellpadding="0" cellspacing="0" width="100%" style="max-width: 600px;" class="responsive-table">
                                    <tr>
                                        <td class="mobile-center" style="padding-top: 15px; font-size: 12px; line-height: 18px; font-family: Segoe UI, Helvetica, Arial, sans-serif; color: #444444; text-align: left;">This is a mandatory service communication. Microsoft respects your privacy. Review our online
                                            <a href="">Privacy Statement</a>.
                                            <a href="">Set contact preferences</a>  |  <a href="">Personal page</a>  |  <a href="">Get help</a>.
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="mobile-center" style="padding: 15px 0; font-size: 12px; line-height: 18px; font-family: Segoe UI, Helvetica, Arial, sans-serif; color: #444444; text-align: right;">
                                            <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/130015/logo-ms.png" width="77" height="15" alt="Microsoft" />
                                        </td>
                                    </tr>
                                </table>
                                <!--[if (gte mso 9)|(IE)]>
            </td>
            </tr>
            </table>
            <![endif]-->
                            </td>
                        </tr>
                        <!-- /FOOTER -->
                    </table>
                </td>
                <td></td>
            </tr>
        </table>
        <!-- ####### / END WRAPPER -->
    </div>
</body>
</html>