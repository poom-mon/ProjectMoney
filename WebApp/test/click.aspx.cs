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
            if (Application["CreditSet"] != null)
            {
                Application["CreditSet"] = Convert.ToInt32(Application["CreditSet"]) - 1;
                lbCredit.Text = Application["CreditSet"].ToString();
            }
            if (Application["CarLoanSet"] != null)
            {
                Application["CarLoanSet"] = Convert.ToInt32(Application["CarLoanSet"]) - 1;
                lbCarLoan.Text = Application["CarLoanSet"].ToString();
            }
         } 
    }
    protected void btnSetCredit_Click(object sender, EventArgs e)
    {
        //if (Application["CreditSet"] == null)
        //{
            Application["CreditSet"] = tb_credit.Text;
            lbCredit.Text = tb_credit.Text; 
        //}
    }
    protected void BtnSetCarloan_Click(object sender, EventArgs e)
    { 
            Application["CarLoanSet"] =  tb_carloan.Text;
            lbCarLoan.Text = tb_carloan.Text;  
    }
    private string GetUserIP()
    {
        return Request.ServerVariables["HTTP_X_FORWARDED_FOR"] ?? Request.ServerVariables["REMOTE_ADDR"];
    }
}