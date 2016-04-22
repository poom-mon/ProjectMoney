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
           if (Application["CarLoanSetThinsur"] != null)
            {
                Application["CarLoanSetThinsur"] = Convert.ToInt32(Application["CarLoanSetThinsur"]) - 1;
                lbThinsur.Text = Application["CarLoanSetThinsur"].ToString();
            }
           if (Application["CarLoanSetCreditshop"] != null)
           {
               Application["CarLoanSetCreditshop"] = Convert.ToInt32(Application["CarLoanSetThinsur"]) - 1;
               lbCreditshop.Text = Application["CarLoanSetCreditshop"].ToString();
           }
           if (Application["CarLoanSetLoanshop"] != null)
           {
               Application["CarLoanSetLoanshop"] = Convert.ToInt32(Application["CarLoanSetLoanshop"]) - 1;
               lbLoanShop.Text = Application["CarLoanSetLoanshop"].ToString();
           }
           if (Application["CreditSet"] != null)
           {
               Application["CreditSet"] = Convert.ToInt32(Application["CreditSet"]) - 1;
               lbCredit.Text = Application["CreditSet"].ToString();
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
        Application["CarLoanSetThinsur"] = tbthinsur.Text;
        lbThinsur.Text = tbthinsur.Text;  
    }
     protected void BtnSetCarloanCredit_Click(object sender, EventArgs e)
    { 
        Application["CarLoanSetCreditshop"] = tbthinsur.Text;
        lbCreditshop.Text = tbCreditshop.Text;  
    }
     protected void BtnSetCarloanShop_Click(object sender, EventArgs e)
    { 
        Application["CarLoanSetLoanshop"] = tbthinsur.Text;
        lbLoanShop.Text = tbloanshop.Text;  
    }
     protected void btnSetCredit_Click(object sender, EventArgs e)
     {
         //if (Application["CreditSet"] == null)
         //{
         Application["CreditSet"] = tb_credit.Text;
         lbCredit.Text = tb_credit.Text;
         //}
     }
}