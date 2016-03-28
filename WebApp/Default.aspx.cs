using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
         
    }
     private string _typedealer;
    public string typedealer
    {
        get
        {
            MS_Main MasterPage = (MS_Main)Page.Master;
            return MasterPage.typedealer ?? ""; 
        }
        set { _typedealer = value; }
    }

       
}