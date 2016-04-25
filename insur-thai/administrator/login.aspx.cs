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
        List<MODEL_Insur_thai.Authen_Model.login> objReturn = BAL_Insur_thai.Authen_BAL.checkLogin(data);
        if (objReturn.Count > 0 )
        {
            HttpContext.Current.Session["username"] = objReturn[0].username;
            HttpContext.Current.Session["userId"] = objReturn[0].logid;
            return true;
        }
        else
            return false; 
    }
    

}