﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


        Application["test"] = 10;

        Response.Write("test" + Application["test"]);
       // Response.Redirect(this.ResolveClientUrl("~/")+"credit_loan/Default.aspx"); 
    }
}