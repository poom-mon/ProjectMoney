using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MS_Main : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    private string _typedealer;
    public string typedealer
    {
        get
        {  
            return (null != Request.QueryString["typedealer"]) ? Request.QueryString["typedealer"].ToString() : "";
        }
        set { _typedealer = value; }
    }

}
