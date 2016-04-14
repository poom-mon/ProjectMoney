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

        public static bool cUpdateLoanPq(MODEL_Insur_thai.Loan_Model.loan_pq data)
        {
            string sql = @" 
                    if not EXISTS (select * from loan_pq where Loan_id = @Loan_id and mobile = @mobile and datediff(d,applicationdate,getdate()) = 0)
                      begin
                          insert into loan_pq
                           (
                                titleName
                                ,name
                                ,lastname
                                ,birthdate
                                ,sex
                                ,address
                                ,mobile
                                ,tel
                                ,email
                                ,jobs
                                ,work_province
                                ,salary
                                ,payment_Salary
                                ,work_year
                                ,work_month
                                ,work_address
                                ,work_tel
                                ,Applicationdate
                                ,Loan_id
                            )
                            values(
                                     @titleName
                                    ,@name
                                    ,@lastname
                                    ,@birthdate
                                    ,@sex
                                    ,@address
                                    ,@mobile
                                    ,@tel
                                    ,@email
                                    ,@jobs
                                    ,@work_province
                                    ,@salary
                                    ,@payment_Salary
                                    ,@work_year
                                    ,@work_month
                                    ,@work_address
                                    ,@work_tel
                                    ,getdate()
                                    ,@Loan_id
                               )    
                      end
                    else
                     begin
                            update loan_pq
                            set titleName  = @titleName
                                ,name      = @name
                                ,lastname  = @lastname
                                ,birthdate = @birthdate
                                ,sex       = @sex
                                ,address   = @address
                                ,mobile    = @mobile
                                ,tel       = @tel
                                ,email     = @email
                                ,jobs      = @jobs
                                ,work_province  = @work_province
                                ,salary         = @salary
                                ,payment_Salary = @payment_Salary
                                ,work_year   = @work_year
                                ,work_month  = @work_month
                                ,work_address = @work_address
                                ,work_tel = @work_tel 
                     end
            ";

            SqlCommand cmd = new SqlCommand(); 
            cmd.Parameters.AddWithValue("@titleName",data.titleName);
            cmd.Parameters.AddWithValue("@name", data.name);
            cmd.Parameters.AddWithValue("@lastname",data.lastname);
            cmd.Parameters.AddWithValue("@birthdate",   data.birthdate );
            cmd.Parameters.AddWithValue("@sex", data.sex);
            cmd.Parameters.AddWithValue("@address",data.address);
            cmd.Parameters.AddWithValue("@mobile",data.mobile);
            cmd.Parameters.AddWithValue("@tel",data.tel);
            cmd.Parameters.AddWithValue("@email",data.email);
            cmd.Parameters.AddWithValue("@jobs",data.jobs);
            cmd.Parameters.AddWithValue("@work_province",data.work_province);
            cmd.Parameters.AddWithValue("@salary",data.salary);
            cmd.Parameters.AddWithValue("@payment_Salary",data.payment_Salary);
            cmd.Parameters.AddWithValue("@work_year",data.work_year);
            cmd.Parameters.AddWithValue("@work_month",data.work_month);
            cmd.Parameters.AddWithValue("@work_address",data.work_address);
            cmd.Parameters.AddWithValue("@work_tel", data.work_tel);
            cmd.Parameters.AddWithValue("@Loan_id", data.Loan_id);

            return cSourceData.ExecuteData(sql, cmd);
        }

        public static List<MODEL_Insur_thai.Loan_Model.callLoanPackage> cLoanPackage(MODEL_Insur_thai.Loan_Model.callLoanPackage data)
        {

            SqlCommand cmd = new SqlCommand();
            cmd.Parameters.AddWithValue("@Loan_typeId", data.Loan_typeId);
            string sql = @"  
                    select 
                    a.Loan_Id,
                    c.bank_Name,
                    a.Loan_Name,
                    a.Loan_Amount,
                    a.Loan_Interest,
                    a.Loan_Promotion,
                    a.Loan_Descript,
                    c.bank_LogoPath,
                    a.Loan_smLogo,
                    a.Loan_typeId
                      from 
                    Loan_info a inner join 
                    Loan_typeInfo b on(a.loan_typeId= b.loan_typeId ) 
                    inner join bank_info c on(a.bank_Id = c.bank_Id)
                    where b.Loan_typeId =@Loan_typeId
            ";
             
            var item = cSourceData.GetData(sql, cmd).Tables[0];
            List<MODEL_Insur_thai.Loan_Model.callLoanPackage> obj = new List<MODEL_Insur_thai.Loan_Model.callLoanPackage>();
            if (item.Rows.Count > 0)
            {
                for (var i = 0; i < item.Rows.Count; i++)
                {
                    obj.Add(
                        new MODEL_Insur_thai.Loan_Model.callLoanPackage
                        {
                           Loan_Id =  Convert.ToInt32(item.Rows[i]["Loan_Id"].ToString()) , 
                           bank_Name = item.Rows[i]["bank_Name"].ToString(),
                           Loan_Name = item.Rows[i]["Loan_Name"].ToString(),
                           Loan_Amount = item.Rows[i]["Loan_Amount"].ToString(),
                           Loan_Interest= item.Rows[i]["Loan_Interest"].ToString(),
                           Loan_Promotion= item.Rows[i]["Loan_Promotion"].ToString(),
                           Loan_Descript = item.Rows[i]["Loan_Descript"].ToString(),
                           bank_LogoPath = item.Rows[i]["bank_LogoPath"].ToString(),
                           Loan_logoPath  = item.Rows[i]["Loan_smLogo"].ToString() ,
                           Loan_typeId =  Convert.ToInt32( item.Rows[i]["Loan_typeId"].ToString())
                        });
                }
            }

            return obj;
        }

        public static List<MODEL_Insur_thai.Loan_Model.callLoanPackage> cSearchCredit(MODEL_Insur_thai.Loan_Model.callLoanPackage data)
        { 
            SqlCommand cmd = new SqlCommand();
            cmd.Parameters.AddWithValue("@Loan_typeId", data.Loan_typeId);
            cmd.Parameters.AddWithValue("@Loan_Name", data.Loan_Name);

            string sql = @"  
                    select 
                    a.Loan_Id,
                    c.bank_Name,
                    a.Loan_Name,
                    a.Loan_Amount,
                    a.Loan_Interest,
                    a.Loan_Promotion,
                    a.Loan_Descript,
                    c.bank_LogoPath,
                    a.Loan_smLogo,
                    a.Loan_typeId
                      from 
                    Loan_info a inner join 
                    Loan_typeInfo b on(a.loan_typeId= b.loan_typeId ) 
                    inner join bank_info c on(a.bank_Id = c.bank_Id)
                    where b.Loan_typeId =@Loan_typeId
            ";

            sql += data.Loan_Name != "" ? (" and  a.Loan_Name like '%@loanname%' ".Replace("@loanname",data.Loan_Name)) : "";


            var item = cSourceData.GetData(sql, cmd).Tables[0];
            List<MODEL_Insur_thai.Loan_Model.callLoanPackage> obj = new List<MODEL_Insur_thai.Loan_Model.callLoanPackage>();
            if (item.Rows.Count > 0)
            {
                for (var i = 0; i < item.Rows.Count; i++)
                {
                    obj.Add(
                        new MODEL_Insur_thai.Loan_Model.callLoanPackage
                        {
                            Loan_Id = Convert.ToInt32(item.Rows[i]["Loan_Id"].ToString()),
                            bank_Name = item.Rows[i]["bank_Name"].ToString(),
                            Loan_Name = item.Rows[i]["Loan_Name"].ToString(),
                            Loan_Amount = item.Rows[i]["Loan_Amount"].ToString(),
                            Loan_Interest = item.Rows[i]["Loan_Interest"].ToString(),
                            Loan_Promotion = item.Rows[i]["Loan_Promotion"].ToString(),
                            Loan_Descript = item.Rows[i]["Loan_Descript"].ToString(),
                            bank_LogoPath = item.Rows[i]["bank_LogoPath"].ToString(),
                            Loan_logoPath = item.Rows[i]["Loan_smLogo"].ToString(),
                            Loan_typeId = Convert.ToInt32(item.Rows[i]["Loan_typeId"].ToString())
                        });
                }
            }

            return obj;
        }



        public static List<MODEL_Insur_thai.Loan_Model.callLoanPackage> cSearchCredit(MODEL_Insur_thai.bank_Model data)
        {
            throw new NotImplementedException();
        }
    }
}
