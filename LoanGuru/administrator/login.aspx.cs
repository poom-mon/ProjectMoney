using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;

public partial class administrator_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    } 
    [WebMethod]
    public static bool checkLogin(MODEL.authenModel.login data)
    {
        bool b = true;// BAL_Main.payment_BAL.updateOffline(data);
        return b;
    }
    

}