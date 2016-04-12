<%@ Page Language="C#" AutoEventWireup="true" CodeFile="listtable4.aspx.cs" Inherits="test_listtable4" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <table>
  <thead>
    <th colspan="4">General Details</th>
  </thead>
  <tbody>
    <tr class="odd">
      <td class="first">Organization Name:</td>
      <td><a href="#">Frontline Managment Inc.</a></td>
      <td class="first">CEO:</td>
      <td>John Fredriksen</td>
    </tr>
    <tr class="even">
      <td class="first">Category:</td>
      <td>Oil & Gas</td>
      <td class="first">Primary Contact:</td>
      <td>Svend Johnson</td>
    </tr>
    <tr class="odd">
      <td class="first">Customer Number:</td>
      <td>20345</td>
      <td class="first">City:</td>
      <td>Oslo</td>
    </tr>
    <tr class="even">
      <td class="first">Country:</td>
      <td>Norway</td>
      <td class="first">Phone:</td>
      <td>22009900</td>
    </tr>
    <tr class="odd">
      <td class="first">Email:</td>
      <td><a href="#">frontline@frontline.com</a></td>
      <td class="first">Vessels:</td>
      <td>97</td>
    </tr>
  </tbody>
</table>

    </div>
    </form>
<style>

    @import url(http://fonts.googleapis.com/css?family=Open+Sans:300);
table {
  font-family: Open Sans;
  font-size: 14px;
  color: #212121;
  margin: 0 auto;
  width: 960px;
  border-collapse: collapse;
}

thead th {
  font-size: 20px;
  color: #212121;
  height: 40px;
  border: 1px solid #e6eaed;
  background: -webkit-gradient(linear, 0% 0%, 0% 100%, from(#e7f0fa), to(#dbe8f5));
}

.first {
  padding-right: 40px;
  width: 230px;
  text-align: right;
  border-left: 1px solid #e6eaed;
  border-right: none;
  font-weight: 200;
}

.odd {
  background-color: #f6f9fb;
}

td {
  height: 40px;
  width: 230px;
  font-weight: bold;
  border-bottom: 1px solid #e6eaed;
  border-right: 1px solid #e6eaed;
}

a {
  color: #0088CC;
  text-decoration: none;
}

</style>

</body>
</html>
