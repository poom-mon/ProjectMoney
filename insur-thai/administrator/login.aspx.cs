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
    public static bool checkLogin(MODEL_Insur_thai.Authen_Model.login data)
    {
        bool objReturn = BAL_Insur_thai.Authen_BAL.checkLogin(data);
        if (objReturn)
        {
            HttpContext.Current.Session["username"] = data.username;

            return true;
        }
        else
            return false; 
    }
    

}