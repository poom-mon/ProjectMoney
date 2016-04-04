using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {   

    }
    private string _finalUrl;
    public string finalUrl
    {
        get
        {
            return "http://www.silkspan.com/v2/insurance_holiday/ab/app-payment.aspx?banner=acc&typedealer=thinsur";
           // return "http://www.silkspan.com/v2/insurance_holiday/ab/default.aspx?typedealer=thinsur&banner=family";
        }
        set { _finalUrl = value; }
    }
}