<%@ Page Language="C#" AutoEventWireup="true" CodeFile="testTable1.aspx.cs" Inherits="test_testTable1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    

    <table summary="Webhosting products overview showing all available packages, what's included and what the monthly cost is with an option to order">
	<caption>Company X webhosting products overview</caption>
	<thead>
	<tr class="odd">
		<td class="column1"></td>
		<th scope="col" abbr="Home">Webhosting Home</th>
		<th scope="col" abbr="Home Plus">Webhosting Home Plus</th>	
		<th scope="col" abbr="Business">Webhosting Business</th>
		<th scope="col" abbr="Business Plus">Webhosting Business Plus</th>
	</tr>	
	</thead>
    <tfoot>	
 	<tr class="odd">
		<td class="column1">&nbsp;</td>
		<th scope="col"><strong>Webhosting Home</strong><br><em>€ 4,95</em>/ month<br>
		<a href="#" title="Bestel Web Hosting Home"><img src="images/b-order.gif" alt="order now" width="73" height="21"></a></th>
		<th scope="col"><strong>Webhosting Home Plus</strong><br><em>€ 9,95 </em>/ month<br>
		<a href="#" title="Bestel Web Hosting Home Plus"><img src="images/b-order.gif" alt="order now" width="73" height="21"></a></th>
		<th scope="col"><strong>Webhosting Business</strong><br><em>€14,95</em> / month<br>
		<a href="#" title="Bestel Web Hosting Business"><img src="images/b-order.gif" alt="order now" width="73" height="21"></a></th>
		<th scope="col"><strong>Webhosting Business Plus</strong><br><em>€ 19,95</em> / month<br>
		<a href="#" title="Bestel Web Hosting Business Plus"><img src="images/b-order.gif" alt="order now" width="73" height="21"></a></th>
	</tr>	
	</tfoot>
	<tbody>
 	<tr>
		<th scope="row" class="column1">Data usage</th>
		<td>1 GB per month</td>
		<td>2 GB per month</td>
		<td>5 GB per month</td>
		<td>10 GB per month</td>
	</tr>	
 	 <tr class="odd">
		<th scope="row" class="column1">Opslag Capaciteit</th>
		<td>100 MB	</td>
		<td>250 MB</td>
		<td>500 MB</td>
		<td>1 GB</td>
	</tr>	
 	<tr>
		<th scope="row" class="column1">MySQL Databases</th>	
		<td>1</td>
		<td>2</td>
		<td>5</td>
		<td>10</td>
	</tr>	
 	<tr class="odd">
		<th scope="row" class="column1">Email Boxes</th>
		<td>5</td>
		<td>10</td>
		<td>25</td>
		<td>50</td>
	</tr>	
 	<tr>
		<th scope="row" class="column1">Email Addresses</th>
		<td>Unlimited</td>
		<td>Unlimited</td>
		<td>Unlimited</td>
		<td>Unlimited</td>
	</tr>	 
 	<tr class="odd">
		<th scope="row" class="column1">Spam and Virus filter</th>
		<td><img src="images/icon-check.gif" alt="included" width="16" height="16"></td>
		<td><img src="images/icon-check.gif" alt="included" width="16" height="16"></td>
		<td><img src="images/icon-check.gif" alt="included" width="16" height="16"></td>
		<td><img src="images/icon-check.gif" alt="included" width="16" height="16"></td>
	</tr>	
 	<tr>
		<th scope="row" class="column1">Mailinglists</th>
		<td><img src="images/icon-check.gif" alt="included" width="16" height="16"></td>
		<td><img src="images/icon-check.gif" alt="included" width="16" height="16"></td>
		<td><img src="images/icon-check.gif" alt="included" width="16" height="16"></td>
		<td><img src="images/icon-check.gif" alt="included" width="16" height="16"></td>
	</tr>	
 	<tr class="odd">
		<th scope="row" class="column1">Autoresponders</th>
		<td><img src="images/icon-check.gif" alt="included" width="16" height="16"></td>
		<td><img src="images/icon-check.gif" alt="included" width="16" height="16"></td>
		<td><img src="images/icon-check.gif" alt="included" width="16" height="16"></td>
		<td><img src="images/icon-check.gif" alt="included" width="16" height="16"></td>
	</tr>	
 	<tr>
		<th scope="row" class="column1">PHP Supportg</th>
		<td><img src="images/icon-check.gif" alt="included" width="16" height="16"></td>
		<td><img src="images/icon-check.gif" alt="included" width="16" height="16"></td>
		<td><img src="images/icon-check.gif" alt="included" width="16" height="16"></td>
		<td><img src="images/icon-check.gif" alt="included" width="16" height="16"></td>
	</tr>	
 	<tr class="odd">
		<th scope="row" class="column1">CGI Support</th>
		<td><img src="images/icon-check.gif" alt="included" width="16" height="16"></td>
		<td><img src="images/icon-check.gif" alt="included" width="16" height="16"></td>
		<td><img src="images/icon-check.gif" alt="included" width="16" height="16"></td>
		<td><img src="images/icon-check.gif" alt="included" width="16" height="16"></td>
	</tr>	
 	<tr>
		<th scope="row" class="column1">SSL Support</th>
		<td><img src="images/icon-check.gif" alt="included" width="16" height="16"></td>
		<td><img src="images/icon-check.gif" alt="included" width="16" height="16"></td>
		<td><img src="images/icon-check.gif" alt="included" width="16" height="16"></td>
		<td><img src="images/icon-check.gif" alt="included" width="16" height="16"></td>
	</tr>
 	<tr class="odd">
		<th scope="row" class="column1">DNS Management</th>
		<td><img src="images/icon-check.gif" alt="included" width="16" height="16"></td>
		<td><img src="images/icon-check.gif" alt="included" width="16" height="16"></td>
		<td><img src="images/icon-check.gif" alt="included" width="16" height="16"></td>
		<td><img src="images/icon-check.gif" alt="included" width="16" height="16"></td>
	</tr>	
 	<tr>
		<th scope="row" class="column1">Error Documents</th>
		<td><img src="images/icon-check.gif" alt="included" width="16" height="16"></td>
		<td><img src="images/icon-check.gif" alt="included" width="16" height="16"></td>
		<td><img src="images/icon-check.gif" alt="included" width="16" height="16"></td>
		<td><img src="images/icon-check.gif" alt="included" width="16" height="16"></td>
	</tr>	
 	<tr class="odd">
		<th scope="row" class="column1">Secure Folders</th>
		<td><img src="images/icon-check.gif" alt="included" width="16" height="16"></td>
		<td><img src="images/icon-check.gif" alt="included" width="16" height="16"></td>
		<td><img src="images/icon-check.gif" alt="included" width="16" height="16"></td>
		<td><img src="images/icon-check.gif" alt="included" width="16" height="16"></td>
	</tr>	
 	<tr>
		<th scope="row" class="column1">Statistics</th>
		<td><img src="images/icon-check.gif" alt="included" width="16" height="16"></td>
		<td><img src="images/icon-check.gif" alt="included" width="16" height="16"></td>
		<td><img src="images/icon-check.gif" alt="included" width="16" height="16"></td>
		<td><img src="images/icon-check.gif" alt="included" width="16" height="16"></td>
	</tr>
	</tbody>
</table>

    </form>
    <link href="styles2.css" rel="stylesheet" type="text/css" />
</body>

</html>
