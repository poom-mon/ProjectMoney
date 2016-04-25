using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class credit_tbcredit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        System.Data.DataTable dt = BAL_Insur_thai.Loan_BAL.cLoadpq();
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
}