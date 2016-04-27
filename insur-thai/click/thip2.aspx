<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Copy of thip.aspx.cs" Inherits="test_Default" %>

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

                 <br />************************************
                 <div   > 
                   <br /> [carloan thinsur]: 
                 <br />

                        set carloan&nbsp; :<asp:textbox   
                             runat="server" ID="tbthinsur"></asp:textbox>
                        <asp:button runat="server"  text="set carloan" ID="BtnSetCarloan" 
                             onclick="BtnSetCarloanThinsur_Click" />
                    <br />  
                 </div>

                 <br /> [carloan creditshop]: 
                 <br /> 
                        set carloan&nbsp; :<asp:textbox   
                             runat="server" ID="tbCreditshop"></asp:textbox>
                        <asp:button runat="server"  text="set carloan2" ID="btnCreditShop" 
                             onclick="BtnSetCarloanCredit_Click" />
                    <br />  


                 <div  style="display:none;">
                 <br /> [carloan loanshop]: 
                 <br />

                        set carloan&nbsp; :<asp:textbox   
                             runat="server" ID="tbloanshop"></asp:textbox>
                        <asp:button runat="server"  text="set carloan3" ID="btnLoanShop" 
                             onclick="BtnSetCarloanShop_Click" />
                    <br />  
                     </div>


             </div> 
          </form>   
          <form   action="http://www.silkspan.com/car_loan/detail_carloan.asp?typedealer=thinsur" method="post" target="my_frame_carLoan"> 
                car loan thinsur: <br />
                 เหลือคลิกอีก : <asp:Label ID="lbThinsur" runat="server" Text="Label"></asp:Label>
                 <input type="submit" runat="server" value="click_carloan" />
          </form>
          <iframe    name="my_frame_carLoan" ></iframe> 
    <br />
    ######################################################## 
            <br />


                <form action="http://www.silkspan.com/car_loan/detail_carloan.asp?typedealer=creditshop" method="post" target="my_frame_carLoan2"> 
                creditshop <br />
                    เหลือคลิกอีก : <asp:Label ID="lbCreditshop" runat="server" Text="Label"></asp:Label>
                    <input id="Submit2" type="submit" runat="server" value="click_carloan" />
            </form>
            <iframe name="my_frame_carLoan2" ></iframe> 
            <br />
            ########################################################
            <br />


          <form  style="display:none;" action="http://www.silkspan.com/car_loan/detail_carloan.asp?typedealer=loanshop" method="post" target="my_frame_carLoan3"> 
                LoanShop <br />
                    เหลือคลิกอีก : <asp:Label ID="lbLoanShop" runat="server" Text="Label"></asp:Label>
                    <input id="Submit3" type="submit" runat="server" value="click_carloan" />
            </form>
            <iframe   style="display:none;" name="my_frame_carLoan3" ></iframe> 
            <br />
            ########################################################
            <br />


           

</body>
</html>
