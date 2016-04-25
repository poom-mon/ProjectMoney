using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
  
    } 
    [WebMethod]
    public static List<MODEL_Insur_thai.Loan_Model.callLoanPackage> cLoadPackageById(MODEL_Insur_thai.Loan_Model.LoanInfo data)
    {
        return BAL_Insur_thai.Loan_BAL.cLoadPackageById(data);
    }
    [WebMethod]
    public static List<MODEL_Insur_thai.Loan_Model.bank_pathfile> cLoadFilePath(MODEL_Insur_thai.Loan_Model.bank_pathfile data)
    {
        return BAL_Insur_thai.Loan_BAL.cLoadFilePath(data);
    }
    [WebMethod]
    public static bool cUpdateLoanPq(MODEL_Insur_thai.Loan_Model.loan_pq data)
    {
        return BAL_Insur_thai.Loan_BAL.cUpdateLoanPq(data);
    }
     [WebMethod]
    public static List<MODEL_Insur_thai.Loan_Model.callLoanPackage> cLoanPackage(MODEL_Insur_thai.Loan_Model.callLoanPackage data)
    {
        return BAL_Insur_thai.Loan_BAL.cLoanPackage(data);
    }

    

}