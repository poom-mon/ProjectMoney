using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;

namespace DAL_Insur_thai
{
    public class Loan_DAL
    {
        public static List<MODEL_Insur_thai.Loan_Model.callLoanPackage> cLoadPackageById(MODEL_Insur_thai.Loan_Model.LoanInfo data)
        { 
             SqlCommand cmd = new SqlCommand();
             cmd.Parameters.AddWithValue("@Loan_Id", data.Loan_Id); 
             string sql = @" 
                select  * from Loan_info 
                  where Loan_Id = @Loan_Id
            ";
             var item =  cSourceData.GetData(sql, cmd).Tables[0];
             List<MODEL_Insur_thai.Loan_Model.callLoanPackage> obj = new List<MODEL_Insur_thai.Loan_Model.callLoanPackage>();
             if (item.Rows.Count > 0)
             {
                 for (var i = 0; i < item.Rows.Count; i++)
                 {
                     obj.Add(
                         new MODEL_Insur_thai.Loan_Model.callLoanPackage
                         {
                             Loan_Name = item.Rows[i]["Loan_Name"].ToString(),
                             Loan_Id = Convert.ToInt32(item.Rows[i]["Loan_Id"].ToString()),
                             bank_Id = Convert.ToInt32(item.Rows[i]["bank_Id"].ToString()),
                             //Loan_type = item.Rows[i]["Loan_type"].ToString(), 
                             Loan_Descript = item.Rows[i]["Loan_Descript"].ToString(),
                             Loan_Amount = item.Rows[i]["Loan_Amount"].ToString(),
                             Loan_Interest = item.Rows[i]["Loan_Interest"].ToString(),
                             Loan_Promotion = item.Rows[i]["Loan_Promotion"].ToString(),
                             Loan_logoPath = item.Rows[i]["Loan_logoPath"].ToString(),
                             Loan_fee = item.Rows[i]["Loan_fee"].ToString()
                         });
                 }
             }

            return obj;
        }

        public static List<MODEL_Insur_thai.Loan_Model.bank_pathfile> cLoadFilePath(MODEL_Insur_thai.Loan_Model.bank_pathfile data)
        {

            SqlCommand cmd = new SqlCommand();
            cmd.Parameters.AddWithValue("@loan_Id", data.loan_Id);
            string sql = @" 
                select  * from bank_pathfile 
                  where loan_Id = @loan_Id
            ";
            var item = cSourceData.GetData(sql, cmd).Tables[0];
            List<MODEL_Insur_thai.Loan_Model.bank_pathfile> obj = new List<MODEL_Insur_thai.Loan_Model.bank_pathfile>();
            if (item.Rows.Count > 0)
            {
                for (var i = 0; i < item.Rows.Count; i++)
                {
                    obj.Add(
                        new MODEL_Insur_thai.Loan_Model.bank_pathfile
                        {
                            file_desc = item.Rows[i]["file_desc"].ToString(),
                            file_name = item.Rows[i]["file_name"].ToString(),
                            file_path = item.Rows[i]["file_path"].ToString()  
                        });
                }
            }

            return obj;
        }
    }
}
