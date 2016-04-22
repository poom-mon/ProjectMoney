<%@ Page Language="C#" AutoEventWireup="true" CodeFile="poom.aspx.cs" Inherits="test_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
        <form id="form1" runat="server">  
             <div>
                         IpaddressOld :
                         <asp:Label ID="lbIpaddress" runat="server" style="font-weight: 700" 
                             Text="Label"></asp:Label>
&nbsp;newIpaddress :
                         <asp:Label ID="lbNewIp" runat="server" style="font-weight: 700" Text="Label"></asp:Label>
                         <br />
                         set credit&nbsp;&nbsp;&nbsp; : 
                         <asp:textbox   runat="server" ID="tb_credit"></asp:textbox>

                        <asp:button runat="server"  text="set credit" ID="btnSetCredit" 
                             onclick="btnSetCredit_Click" />

                    <br />
                        set carloan&nbsp; :<asp:textbox   
                             runat="server" ID="tb_carloan"></asp:textbox>
                        <asp:button runat="server"  text="set carloan" ID="BtnSetCarloan" 
                             onclick="BtnSetCarloan_Click" />
                    <br />  
             </div> 
          </form> 



         <br /> 
          <form   method="post" >  
                credit <br />
                เหลือคลิกอีก : <asp:Label ID="lbCredit" runat="server" Text="Label"></asp:Label> 
              <a href="http://www.silkspan.com/banner/log_cbanner_counter.asp?fname=http://www.silkspan.com/silkspan_ssl/revole/detail_rl_ktc_type1.asp&typedealer=creditshop" target="_blank">click</a> 
          </form>
           

          
          <form action="http://www.silkspan.com/car_loan/detail_carloan.asp?typedealer=thinsur" method="post" target="my_frame_carLoan"> 
                car loan <br />
                 เหลือคลิกอีก : <asp:Label ID="lbCarLoan" runat="server" Text="Label"></asp:Label>
                 <input type="submit" runat="server" value="click_carloan" />
          </form>
          <iframe name="my_frame_carLoan" ></iframe>


           

</body>
</html>
