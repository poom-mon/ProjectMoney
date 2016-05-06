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

        System.Data.DataTable dt2 = new System.Data.DataTable();
        if (dt.Rows.Count > 0) {
            foreach (System.Data.DataRow item in dt.Rows)
            {
                if (string.IsNullOrEmpty(item["status"].ToString()))
                {
                    dt2.Rows.Add(item);
                }
            }
        }
        GridView1.DataSource = dt2;
        GridView1.DataBind();
    }
}