﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="listTable2.aspx.cs" Inherits="test_listTable2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <table class="pricing-table">
	<thead>
		<tr class="plan">
			<td class="green">
				<h2>Light</h2>
				<em>Great for small business</em>
			</td>
			<td class="orange">
				<h2>Run</h2>
				<em>Great for small business</em>
			</td>
			<td class="green">
				<h2>Fly</h2>
				<em>Great for small business</em>
			</td>
		</tr>
		<tr class="price">
			<td class="green">
				<p><span>$</span>5</p>
				<span>monthly</span>
				<a href="#">Join</a>
			</td>
			<td class="orange">
				<p><span>$</span>9<span>79</span></p>
				<span>monthly</span>
				<a href="#">Join</a>
			</td>
			<td class="green">
				<p><span>$</span>12</p>
				<span>monthly</span>
				<a href="#">Join</a>
			</td>
		</tr>
	</thead>
	
	<tbody>
		<tr class="clock-icon">
			<td>No Support</td>
			<td>24/7 Tech Support</td>
			<td>24/7 Tech Support</td>
		</tr>
		<tr class="basket-icon">
			<td>Basic Options</td>
			<td>Advanced Options</td>
			<td>Advanced Options</td>
		</tr>
		<tr class="star-icon">
			<td>100GB Storage</td>
			<td>200GB Storage</td>
			<td>500GB Storage</td>
		</tr>
		<tr class="heart-icon">
			<td>1TB Bandwidth</td>
			<td>2TB Bandwidth</td>
			<td>5TB Bandwidth</td>
		</tr>
	</tbody>
	
	<tfoot>
		<tr>
			<td>Known locally as "SoMa", this neighborhood was home to the dot.com boom and boasts.</td>
			<td>
				Known locally as "SoMa", this neighborhood was home to the dot.com boom and boasts.

				<div class="table-float">
					<span class="arrow"></span>
					<p>while our commercial director was on vacation, we came up with this</p>
					<p class="big">crazy price</p>
				</div>
			</td>
			<td>Known locally as "SoMa", this neighborhood was home to the dot.com boom and boasts.</td>
		</tr>
	</tfoot>
</table>

    </div>
    </form>
    <style>
                /* http://meyerweb.com/eric/tools/css/reset/ 
           v2.0 | 20110126
           License: none (public domain)
        */

        html, body, div, span, applet, object, iframe,
        h1, h2, h3, h4, h5, h6, p, blockquote, pre,
        a, abbr, acronym, address, big, cite, code,
        del, dfn, em, img, ins, kbd, q, s, samp,
        small, strike, strong, sub, sup, tt, var,
        b, u, i, center,
        dl, dt, dd, ol, ul, li,
        fieldset, form, label, legend,
        table, caption, tbody, tfoot, thead, tr, th, td,
        article, aside, canvas, details, embed, 
        figure, figcaption, footer, header, hgroup, 
        menu, nav, output, ruby, section, summary,
        time, mark, audio, video {
	        margin: 0;
	        padding: 0;
	        border: 0;
	        font-size: 100%;
	        font: inherit;
	        vertical-align: baseline;
        }
        /* HTML5 display-role reset for older browsers */
        article, aside, details, figcaption, figure, 
        footer, header, hgroup, menu, nav, section {
	        display: block;
        }
        body {
	        line-height: 1;
        }
        ol, ul {
	        list-style: none;
        }
        blockquote, q {
	        quotes: none;
        }
        blockquote:before, blockquote:after,
        q:before, q:after {
	        content: '';
	        content: none;
        }
        table {
	        border-collapse: collapse;
	        border-spacing: 0;
        }
        a img { border: none; }

        /* end of eric's css reset */
        /* #########################################################

        HOW TO CREATE CSS3 PRICING TABLES [TUTORIAL]

        "How to create CSS3 Pricing Tables [Tutorial]" was specially made for DesignModo by our friend Valeriu Timbuc.

        Links:
        http://vtimbuc.net
        http://designmodo.com
        http://vladimirkudinov.com

        ######################################################### */



        .pricing-table { min-width: 670px; }

        .pricing-table td {
	        position: relative;
	        display: inline-block;
	        margin: 0 5px;
	        vertical-align: text-top;
        }



        /* Plan Title */
        .pricing-table thead .plan td {
	        width: 210px;
	        height: 42px;
	        padding: 15px 0;
	        text-align: center;

	        -webkit-border-radius: 2px;
	        -moz-border-radius: 2px;
	        border-radius: 2px;
        }

        .pricing-table thead .plan h2 {
	        font-family: 'Arial Black', Arial, Helvetica, sans-serif;
	        font-weight: bold;
	        font-size: 22px;
	        text-transform: uppercase;
	        line-height: 24px;
        }

        .pricing-table thead .plan em {
	        font-family: Georgia, Arial, Helvetica, sans-serif;
	        font-style: italic;
	        font-size: 14px;
	        line-height: 16px;
        }

        .pricing-table thead .plan .green {
	        color: #36611e;
	        text-shadow: 1px 1px 0px rgba(255,255,255, .2);
	        background: url(http://designmodo.com/demo/css3pricingtables/img/green_pattern.png) repeat-x 0 0;
        }

        .pricing-table thead .plan .orange {
	        color: #fafafa;
	        text-shadow: 1px 1px 2px rgba(0,0,0, .4);
	        background: url(http://designmodo.com/demo/css3pricingtables/img/orange_pattern.png) repeat-x 0 0;
        }



        /* Plan Price Section */
        .pricing-table thead .price td {
	        position: relative;
	        width: 210px;
	        padding: 25px 0;

	        font-family: 'Arial Black', Arial, Helvetica, sans-serif;
	        font-weight: bold;
	        text-transform: uppercase;
	        text-align: center;
	        color: #b6b07c;

	        background: #f9f8f1;
	        background: -moz-linear-gradient(top,  #f9f8f1 0%, #f4f2e2 100%);
	        background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#f9f8f1), color-stop(100%,#f4f2e2));
	        background: -webkit-linear-gradient(top,  #f9f8f1 0%,#f4f2e2 100%);
	        background: -o-linear-gradient(top,  #f9f8f1 0%,#f4f2e2 100%);
	        background: -ms-linear-gradient(top,  #f9f8f1 0%,#f4f2e2 100%);
	        background: linear-gradient(to bottom,  #f9f8f1 0%,#f4f2e2 100%);
        }

        .pricing-table thead .price p {
	        display: table;
	        margin: 0 auto;
	        font-size: 50px;
	        line-height: 60px;
        }

        .pricing-table thead .price p span {
	        font-size: 0.5em;
	        display: table-cell;
	        vertical-align: middle;
        }

        .pricing-table thead .price span { font-size: 14px; }

        .pricing-table thead .price a {
	        display: block;
	        position: absolute;
	        top: 41px;
	        right: -5px;
	        height: 32px;
	        padding: 0 10px;
	        line-height: 32px;
	        font-size: 12px;
	        text-decoration: none;
        }

        .pricing-table thead .price .green a {
	        color: #37621f;
	        text-shadow: 1px 1px 0px rgba(255,255,255, .2);

	        background: #82d344;
	        background: -moz-linear-gradient(top,  #82d344 0%, #51af34 100%);
	        background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#82d344), color-stop(100%,#51af34));
	        background: -webkit-linear-gradient(top,  #82d344 0%,#51af34 100%);
	        background: -o-linear-gradient(top,  #82d344 0%,#51af34 100%);
	        background: -ms-linear-gradient(top,  #82d344 0%,#51af34 100%);
	        background: linear-gradient(to bottom,  #82d344 0%,#51af34 100%);
        }

        .pricing-table thead .price .orange a {
	        color: #fafafa;
	        text-shadow: 1px 1px 2px rgba(0,0,0, .3);

	        background: #ff8042;
	        background: -moz-linear-gradient(top,  #ff8042 0%, #f55a0e 100%);
	        background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#ff8042), color-stop(100%,#f55a0e));
	        background: -webkit-linear-gradient(top,  #ff8042 0%,#f55a0e 100%);
	        background: -o-linear-gradient(top,  #ff8042 0%,#f55a0e 100%);
	        background: -ms-linear-gradient(top,  #ff8042 0%,#f55a0e 100%);
	        background: linear-gradient(to bottom,  #ff8042 0%,#f55a0e 100%);
        }

        .pricing-table thead .price .green a:before,
        .pricing-table thead .price .orange a:before,
        .pricing-table thead .price .green a:after,
        .pricing-table thead .price .orange a:after {
	        display: block;
	        position: absolute;
	        content: '';
        }

        .pricing-table thead .price .green a:before,
        .pricing-table thead .price .orange a:before {
	        width: 8px;
	        height: 32px;
	        top: 0;
	        left: -8px;
	        background: url(http://designmodo.com/demo/css3pricingtables/img/badge.png) no-repeat;
        }

        .pricing-table thead .price .green a:after,
        .pricing-table thead .price .orange a:after {
	        width: 0;
	        height: 0;
	        bottom: -5px;
	        right: 0;
	        border-bottom: 5px solid transparent;
        }

        .pricing-table thead .price .green a:before { background-position: 0 0; }
        .pricing-table thead .price .orange a:before { background-position: 0 -32px; }
        .pricing-table thead .price .green a:after { border-left: 5px solid #1c5d40; }
        .pricing-table thead .price .orange a:after { border-left: 5px solid #88330a; }



        /* Plan Features Section */
        .pricing-table tbody tr:first-child td:before {
	        position: absolute;
	        display: block;
	        content: '';
	        width: 100%;
	        height: 5px;
	        top: -25px;
	        left: 0;
	        background: url(http://designmodo.com/demo/css3pricingtables/img/stripe.png) repeat-x 0 0;
        }

        .pricing-table tbody td {
	        width: 170px;
	        padding-left: 40px;
	        line-height: 30px;
	        border-top: 1px solid #f2f2f2;

	        font-family: Helvetica, Arial, sans-serif;
	        font-size: 11px;
	        color: #828282;
        }

        .pricing-table tbody tr:first-child td { border-top: 20px solid #ffffff; }

        .pricing-table .clock-icon td,
        .pricing-table .basket-icon td,
        .pricing-table .star-icon td,
        .pricing-table .heart-icon td { background: #ffffff url(http://designmodo.com/demo/css3pricingtables/img/icons.png) no-repeat 0 0; }

        .pricing-table .clock-icon td { background-position: 0 0; }
        .pricing-table .basket-icon td { background-position: 0 -30px; }
        .pricing-table .star-icon td { background-position: 0 -60px; }
        .pricing-table .heart-icon td { background-position: 0 -90px; }



        /* Plan Description Section */
        .pricing-table tfoot td {
	        width: 190px;
	        padding: 20px 10px;
	        text-align: center;
	        line-height: 18px;
	        background: #ffffff;

	        font-family: Helvetica, Arial, sans-serif;
	        font-size: 11px;
	        color: #828282;

	        -webkit-border-radius: 0 0 2px 2px;
	        -moz-border-radius: 0 0 2px 2px;
	        border-radius: 0 0 2px 2px;

	        -webkit-box-shadow: 0px 2px 0px #e4e4e4;
	        -moz-box-shadow: 0px 2px 0px #e4e4e4;
	        box-shadow: 0px 2px 0px #e4e4e4;
        }

        /* Float Text Section */

        @font-face {
            font-family: 'Lobster13Regular';
            src: url('font/Lobster_1.3-webfont.eot');
            src: url('font/Lobster_1.3-webfont.eot?#iefix') format('embedded-opentype'),
                 url('font/Lobster_1.3-webfont.woff') format('woff'),
                 url('font/Lobster_1.3-webfont.ttf') format('truetype'),
                 url('font/Lobster_1.3-webfont.svg#Lobster13Regular') format('svg');
            font-weight: normal;
            font-style: normal;
        }

        .table-float {
	        display: block;
	        position: absolute;
	        width: 300px;
	        padding: 80px 0 0 0;
	        top: 85%;
	        left: 130px;
        }

        .table-float p {
	        font-family: Lobster13Regular, sans-serif;
	        font-size: 16px;
	        color: #858585;
	        line-height: 20px;
        }

        .table-float p.big {
	        font-size: 65px;
	        color: #f76117;
	        text-align: right;
	        line-height: 65px;
        }

        .table-float .arrow {
	        display: block;
	        position: absolute;
	        top: 0;
	        left: 50px;
	        width: 68px;
	        height: 77px;
	        background: url(http://designmodo.com/demo/css3pricingtables/img/arrow.png) no-repeat 0 0;
        }

    </style>
</body>
</html>
