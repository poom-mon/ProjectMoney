using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class test_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    { 
         lbIpaddress.Text=GetUserIP();  

       if (!Page.IsPostBack)
       {    
           if (Application["CarLoanSetThinsur1"] != null)
            {
                Application["CarLoanSetThinsur1"] = Convert.ToInt32(Application["CarLoanSetThinsur1"]) - 1;
                lbThinsur.Text = Application["CarLoanSetThinsur1"].ToString();
            }
           if (Application["CarLoanSetCreditshop1"] != null)
           {
               Application["CarLoanSetCreditshop1"] = Convert.ToInt32(Application["CarLoanSetThinsur1"]) - 1;
               lbCreditshop.Text = Application["CarLoanSetCreditshop1"].ToString();
           }
           if (Application["CarLoanSetLoanshop1"] != null)
           {
               Application["CarLoanSetLoanshop1"] = Convert.ToInt32(Application["CarLoanSetLoanshop1"]) - 1;
               lbLoanShop.Text = Application["CarLoanSetLoanshop1"].ToString();
           }

         } 
    } 
    //protected void BtnSetCarloan_Click(object sender, EventArgs e)
    //{ 
    //        Application["CarLoanSet"] =  tb_carloan.Text;
    //        lbCarLoan.Text = tb_carloan.Text;  
    //}
    private string GetUserIP()
    {
        return Request.ServerVariables["HTTP_X_FORWARDED_FOR"] ?? Request.ServerVariables["REMOTE_ADDR"];
    }
    protected void BtnSetCarloanThinsur_Click(object sender, EventArgs e)
    { 
        Application["CarLoanSetThinsur1"] = tbthinsur.Text;
        lbThinsur.Text = tbthinsur.Text;  
    }
     protected void BtnSetCarloanCredit_Click(object sender, EventArgs e)
    {
        Application["CarLoanSetCreditshop1"] = tbCreditshop.Text;
        lbCreditshop.Text = tbCreditshop.Text;  
    }
     protected void BtnSetCarloanShop_Click(object sender, EventArgs e)
    {
        Application["CarLoanSetLoanshop1"] = tbloanshop.Text;
        lbLoanShop.Text = tbloanshop.Text;  
    }
    
}