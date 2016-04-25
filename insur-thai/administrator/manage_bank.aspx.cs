using System;
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
    public static bool cUpdateBank(MODEL_Insur_thai.bank_Model data)
    {
        data.update_user = HttpContext.Current.Session["userId"] != null ? HttpContext.Current.Session["userId"].ToString() : "0";
        return BAL_Insur_thai.Bank_BAL.cUpdateBank(data);
    }
    [WebMethod]
    public static MODEL_Insur_thai.bank_Model cLoadBankFormById(MODEL_Insur_thai.bank_Model data)
    { 
        return BAL_Insur_thai.Bank_BAL.cLoadBankFormById(data);
    }
    
}