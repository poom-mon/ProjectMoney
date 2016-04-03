using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BAL_Insur_thai
{
   public class Loan_BAL
    {

       public static List<MODEL_Insur_thai.Loan_Model.callLoanPackage> cLoadPackageById(MODEL_Insur_thai.Loan_Model.LoanInfo data)
        {
            return DAL_Insur_thai.Loan_DAL.cLoadPackageById(data);
        }

        public static List<MODEL_Insur_thai.Loan_Model.bank_pathfile> cLoadFilePath(MODEL_Insur_thai.Loan_Model.bank_pathfile data)
        {
            return DAL_Insur_thai.Loan_DAL.cLoadFilePath(data);
        }
    }
}
