﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class administrator_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    { 
    }
    [WebMethod]
    public static bool cUpdateCredit(MODEL_Insur_thai.Loan_Model.LoanInfo data)
    {
        data.update_user = HttpContext.Current.Session["username"] != null ? HttpContext.Current.Session["username"].ToString() : "";
        return BAL_Insur_thai.Loan_BAL.cUpdateCredit(data);
    }
}