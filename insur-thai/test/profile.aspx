<%@ Page Language="C#" AutoEventWireup="true" CodeFile="profile.aspx.cs" Inherits="test_profile" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
/*  blue     #0078CF
    purlpe     #5C2D91
    green     #00B14B */
    
    /* CLIENT-SPECIFIC STYLES */
    body, table, td, a{-webkit-text-size-adjust: 100%; -ms-text-size-adjust: 100%;} /* Prevent WebKit and Windows mobile changing default text sizes */
    table, td{mso-table-lspace: 0pt; mso-table-rspace: 0pt;} /* Remove spacing between tables in Outlook 2007 and up */
    img{-ms-interpolation-mode: bicubic;} /* Allow smoother rendering of resized image in Internet Explorer */

    /* RESET STYLES */
    img{border: 0; height: auto; line-height: 100%; outline: none; text-decoration: none;}
    table{border-collapse: collapse !important;}
    body{
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
        background: #CEF1DE;font-family: Segoe UI, Helvetica, Arial, sans-serif; font-size: 14px; color: #333333; padding: 2px 4px; display: inline-block;
    }
    .inactive {
        background: #eeeeee;font-family: Segoe UI, Helvetica, Arial, sans-serif; font-size: 14px;text-decoration: line-through;color: #666666;padding: 2px 4px;display: inline-block;
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
        td[class="mobile-hide-xs"], td[class="mobile-hide-xs comment-gfx"]{
          display:none;
        }
        /* ADJUST BUTTONS ON MOBILE */
        td[class="mobile-wrapper"]{
            padding: 10px 5% 15px 5% !important;
        }
        table[class="mobile-button-container"]{
            margin:0 auto;
            width:100% !important;
        }

    }
    /* ANDROID CENTER FIX */
    div[style*="margin: 16px 0;"] { margin: 0 !important; }
</style>
</head>
<body>

<div style="margin: 0; padding: 0; background: #F8F8F8; padding-top: 10px;">
<!-- HIDDEN PREHEADER TEXT -->
<div style="display: none; font-size: 1px; color: #fefefe; line-height: 1px; font-family: Segoe UI, Helvetica, Arial, sans-serif;  max-height: 0px; max-width: 0px; opacity: 0; overflow: hidden;">
    This is preheader text.
</div>
    
<!-- ####### START WRAPPER align="center" removed / -->
<table border="0" width="100%" class="wrapper"><tr><td></td><td width="660">

<!-- CONTAINER -->
<table border="0" cellpadding="0" cellspacing="0" style="max-width: 660px;">
    
    <!-- MARKETING STYLE COMPONENTS -->
    <tr>
        <td bgcolor="#0078CF" style="padding: 0 30px;">
            <!--[if (gte mso 9)|(IE)]>
            <table  border="0" cellspacing="0" cellpadding="0" width="600">
            <tr>
            <td  valign="top" width="600">
            <![endif]-->
            <table border="0" cellpadding="0" cellspacing="0" width="100%" style="max-width: 600px;" class="responsive-table">
                <tr>
                    <td>
                        <table border="0" cellpadding="0" cellspacing="0" class="logo">
                            <tr>
                                <td align="" valign="top" style="padding: 9px 0; width:40px;">    
                                    <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/130015/logo-vsts.png" width="30" height="30" alt="VSTS" class="img-block" style="color: #fff;" />
                                </td>
                                <td color="#ffffff" style="padding: 0 5px 0 5px; text-align: left; color: #ffffff; font-family: Segoe UI, Helvetica, Arial, sans-serif; font-size: 16px;">Visual Studio</td>
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
        <td bgcolor="#ffffff" style="padding: 40px;border-bottom: 2px solid #eee;">

            <table border="0" align="center" cellpadding="0" cellspacing="0" width="100%" style="max-width: 600px;" class="responsive-table">
                <tr>
                    <td>
                        <!-- COPY -->
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <!-- INNER HERO LEFT -->
                                <td>
                                    <table>
                                        <tr>
                                            <td align="left" style="padding: 15px 0 0 0; font-size: 24px; line-height: 30px; font-family: Segoe UI, Helvetica, Arial, sans-serif; color: #444444;" class="mobile-center">
                                    Welcome iceorbital.
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="left" style="padding: 10px 0 25px 0; font-size: 16px; line-height: 25px; font-family: Segoe UI, Helvetica, Arial, sans-serif; color: #444444;" class="mobile-center">
                                                Thanks for joining us. Collaborate in the cloud with version control, agile, continuous delivery, app analytics — using any IDE or editor.
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
                                                                                <td align="center" bgcolor="#007acc" style="padding: 0 10px"><a href="https://microsoft.com" target="_blank" style="font-size: 14px; font-family: Segoe UI, Helvetica, Arial, sans-serif; color: #ffffff; text-decoration: none; padding: 6px; border: 2px solid #007acc; display: inline-block;" class="mobile-button btn-primary">Start your project</a></td>
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
                                <td class="mobile-hide" style="text-align: right; width: 40%; padding-left: 5%;"><img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/130015/gfx-welcome2x.png" width="180" height="169" class="img-block" /></td>
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
            <table border="0" width="29%" cellpadding="0" cellspacing="0" class="gfx-promo" style="display: inline-block; vertical-align: middle; ">
                <tr>
                    <td style="text-align: center; vertical-align: middle;" class="img-padding"><img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/130015/gfx-agile-tools2x.png" width="125"  /></td>
                </tr>
            </table>
            <table border="0" width="70%" cellpadding="0" cellspacing="0" style="vertical-align: middle; display: inline-block;" class="responsive-table">
                
                <tr>
                    <td>
                        <!-- COPY -->
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td style="font-size: 20px; font-family: Segoe UI, Helvetica, Arial, sans-serif;  color: #444444; text-align: left;" class="mobile-center">Share code, track work, and ship software
                            </tr>
                            <tr>
                                <td align="left" style="padding: 0; font-size: 15px; line-height: 25px; font-family: Segoe UI, Helvetica, Arial, sans-serif;  color: #444444;" class="mobile-center">Create as many private Git or TFVC repos as you need. Be agile, on your terms. Capture, prioritize, and track work with backlogs and customizable Kanban boards. <a href="">Visual Studio Team Services</a> is the perfect complement to your IDE.  
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
                                                                    <td align="center" bgcolor="#cccccc" style="padding: 0 10px"><a href="https://microsoft.com" target="_blank" style="font-size: 14px; font-family: Segoe UI, Helvetica, Arial, sans-serif; color: #222222; text-decoration: none; padding: 6px; border: 2px solid #cccccc; display: inline-block;" class="mobile-button btn-primary">Start your project</a></td>
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
            <table border="0" width="29%" cellpadding="0" cellspacing="0" class="gfx-promo" style="display: inline-block; vertical-align: middle; ">
                <tr>
                    <td style="text-align: center; vertical-align: middle;" class="img-padding"><img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/130015/gfx-tools-training2x.png" width="125"  /></td>
                </tr>
            </table>
            <table border="0" width="70%" cellpadding="0" cellspacing="0" style="vertical-align: middle; display: inline-block;" class="responsive-table">
                
                <tr>
                    <td>
                        <!-- COPY -->
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td style="font-size: 20px; font-family: Segoe UI, Helvetica, Arial, sans-serif;  color: #444444; text-align: left;" class="mobile-center">Free tools, cloud services, and training
                            </tr>
                            <tr>
                                <td align="left" style="padding: 0; font-size: 15px; line-height: 25px; font-family: Segoe UI, Helvetica, Arial, sans-serif;  color: #444444;" class="mobile-center">Get everything you need to build and deploy your app on any platform. With state-of-the-art tools, the power of the cloud, training, and support, <a href="">Visual Studio Dev Essentials</a> is our most comprehensive developer 
program ever.
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
                                                                    <td align="center" bgcolor="#cccccc" style="padding: 0 10px"><a href="https://microsoft.com" target="_blank" style="font-size: 14px; font-family: Segoe UI, Helvetica, Arial, sans-serif; color: #222222; text-decoration: none; padding: 6px; border: 2px solid #cccccc; display: inline-block;" class="mobile-button btn-primary">Access your benifits</a></td>
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
    
    <!-- PROMO 3 -->
    <tr>
        <td bgcolor="#ffffff" style="padding: 40px 30px 40px 40px; border-bottom: 2px solid #eee; vertical-align: middle;" class="mobile-promos">
            <!--[if (gte mso 9)|(IE)]>
            <table align="center" border="0" cellspacing="0" cellpadding="0" width="600">
            <tr>
            <td align="center" valign="top" width="600" style="background: red;">
            <![endif]-->
            <table border="0" width="29%" cellpadding="0" cellspacing="0" class="gfx-promo" style="display: inline-block; vertical-align: middle; ">
                <tr>
                    <td style="text-align: center; vertical-align: middle;" class="img-padding"><img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/130015/gfx-ide2x.png" width="125"  /></td>
                </tr>
            </table>
            <table border="0" width="70%" cellpadding="0" cellspacing="0" style="vertical-align: middle; display: inline-block;" class="responsive-table">
                
                <tr>
                    <td>
                        <!-- COPY -->
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td style="font-size: 20px; font-family: Segoe UI, Helvetica, Arial, sans-serif;  color: #444444; text-align: left;" class="mobile-center">A free, fully-featured, and extensible IDE
                            </tr>
                            <tr>
                                <td align="left" style="padding: 0; font-size: 15px; line-height: 25px; font-family: Segoe UI, Helvetica, Arial, sans-serif;  color: #444444;" class="mobile-center">Develop modern apps and cloud services for Android, iOS and Windows with <a href="">Visual Studio Community</a>, a full-featured extensible IDE for developers building non-enterprise applications.
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
                                                                    <td align="center" bgcolor="#cccccc" style="padding: 0 10px"><a href="https://microsoft.com" target="_blank" style="font-size: 14px; font-family: Segoe UI, Helvetica, Arial, sans-serif; color: #222222; text-decoration: none; padding: 6px; border: 2px solid #cccccc; display: inline-block;" class="mobile-button btn-primary">Download Visual Studio</a></td>
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
                    <td class="mobile-center" style="padding-top: 15px; font-size: 12px; line-height: 18px; font-family: Segoe UI, Helvetica, Arial, sans-serif;  color:#444444;text-align: left;">
This is a mandatory service communication. Microsoft respects your privacy. Review our online 
<a href="">Privacy Statement</a>.
<a href="">Set contact preferences</a>  |  <a href="">Personal page</a>  |  <a href="">Get help</a>.
                    </td>
                </tr>
                <tr>
                    <td class="mobile-center" style="padding: 15px 0; font-size: 12px; line-height: 18px; font-family: Segoe UI, Helvetica, Arial, sans-serif;  color:#444444;text-align: right;">
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
    </tr> <!-- /FOOTER -->
</table>

</td><td></td></tr></table>
<!-- ####### / END WRAPPER -->

</div>
</body>
</html>
