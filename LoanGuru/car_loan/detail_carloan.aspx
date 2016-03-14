<%@ Page Language="C#" AutoEventWireup="true" CodeFile="detail_carloan.aspx.cs" Inherits="car_loan_detail_carloan" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
</head>
<body>
    <form name="Input" id="form1" action="http://192.168.0.2/car_loan/car_loan_app.asp" > 

   
    
		

        <input type="hidden" class="normal" name="email" id="email" maxlength="50" size="20" onkeypress="return email_key(event);" onkeyup="//check_3('');" onblur="//check_3('');" value="">
		<input type="hidden" name="mobile">
		<input type="hidden" name="code" value="20160314115247">
		<input type="hidden" name="typedealer" value="">
		<input type="hidden" name="banner" value="">
		<input type="hidden" name="cal_id" id="cal_id">
		<input type="hidden" name="pid" id="pid" value="204">
		<input type="hidden" name="Brand" id="Brand" value="TOYOTA">
		<input type="hidden" name="Model" id="Model" value="VIOS MT SEDAN 4DR E MAN 5SP FWD 1.5I">
		<input type="hidden" name="carType" id="carType" value="เก๋ง">
		<input type="hidden" name="moSalary" value="15000" id="moSalary">
		<input type="hidden" name="baseSalary" value="15000" id="baseSalary">
		<input type="hidden" name="interest" id="interest">
		<input type="hidden" name="loanType" id="loanType">
		<input type="hidden" name="H_MntPeriod" id="H_MntPeriod" value="">
		<input type="hidden" name="H_MntPay" id="H_MntPay" value="">
		<input type="hidden" name="H_MaxAmt" id="H_MaxAmt">
		<input type="hidden" name="H_MinAmt" id="H_MinAmt">
		<input type="hidden" name="usefilename" id="usefilename">
		<input type="hidden" name="arrDesireamt" id="arrDesireamt" value=""> 
        <input type="hidden" name="MaxLoanCheck" id="MaxLoanCheck" value=""> 
		<input type="hidden" name="arrInterest" id="arrInterest">
		<input type="hidden" name="listMaxLoan" id="listMaxLoan" value="0">
		<input type="hidden" name="h_logpqid" id="h_logpqid" value="">

     
     	<input type="hidden"  name="rdfistcar" value="yes">


         <input type="hidden" name="urlFistPage" value="http://192.168.0.2/car_loan/detail_carloan.asp?tag=%E0%B8%AA%E0%B8%B4%E0%B8%99%E0%B9%80%E0%B8%8A%E0%B8%B7%E0%B9%88%E0%B8%AD%E0%B8%A3%E0%B8%96%E0%B8%A2%E0%B8%99%E0%B8%95%E0%B9%8C&amp;typedealer=">
           
           
         <input type="hidden" name="yearCar" value="2015"> 

		<input type="hidden" name="h_yearcar" value="2015">
		<input type="hidden" name="h_brand" value="TOYOTA">
		<input type="hidden" name="h_model" value="VIOS MT SEDAN 4DR E MAN 5SP FWD 1.5I">


     <iframe name="iF_CalLoan" id="iF_CalLoan" width="100%" style="display:none"></iframe>

     <input id="Submit1" type="submit" value="submit" />
  

    </form>
    <script>
        getCal_loan();
        function getCal_loan() { 
            var baseSalary;
            baseSalary = 17000;

            document.Input.Brand.value = "TOYOTA";  
            document.Input.Model.value = "VIOS MT SEDAN 4DR E MAN 5SP FWD 1.5I";  

            document.Input.action = "http://www.silkspan.com/car_loan/cal_loan_p1.asp";
            document.Input.target = "iF_CalLoan";
            document.Input.submit();
        }
    </script>
</body>
</html>
