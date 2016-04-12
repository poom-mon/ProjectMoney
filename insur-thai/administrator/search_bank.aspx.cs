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
    public static List<MODEL_Insur_thai.bank_Model> cSearchBank(MODEL_Insur_thai.bank_Model data)
    {
        return BAL_Insur_thai.Bank_BAL.cSearchBank(data);
    }
}