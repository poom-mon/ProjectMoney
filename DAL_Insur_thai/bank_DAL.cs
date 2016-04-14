using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;

namespace DAL_Insur_thai
{
    public class bank_DAL
    {
        public static List<MODEL_Insur_thai.bank_Model> cSearchBank(MODEL_Insur_thai.bank_Model data)
        {
            SqlCommand cmd = new SqlCommand(); 
            string sql = @" 
                select * from bank_info
                where status ='Y'
            ";
            var item = cSourceData.GetData(sql, cmd).Tables[0];
            List<MODEL_Insur_thai.bank_Model> obj = new List<MODEL_Insur_thai.bank_Model>();
            if (item.Rows.Count > 0)
            {
                for (var i = 0; i < item.Rows.Count; i++)
                {
                    obj.Add(
                        new MODEL_Insur_thai.bank_Model
                        { 
                            bank_Name = item.Rows[i]["bank_Name"].ToString(),
                            bank_LogoPath = item.Rows[i]["bank_LogoPath"].ToString(), 
                            bank_Id = Convert.ToInt32(item.Rows[i]["bank_Id"].ToString()) 
                        });
                }
            }

            return obj;
        }

        public static bool cUpdateBank(MODEL_Insur_thai.bank_Model data)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.Parameters.AddWithValue("@bank_Id", data.bank_Id); 
            cmd.Parameters.AddWithValue("@bank_Name", data.bank_Name);
            cmd.Parameters.AddWithValue("@bank_LogoPath", data.bank_LogoPath);
            cmd.Parameters.AddWithValue("@status", data.status);
            cmd.Parameters.AddWithValue("@update_user", data.update_user);
             
            string sql = @" 
               if not exists (select * from  bank_info where bank_Id = @bank_Id)
                     begin
                         insert into bank_info(bank_Name,bank_LogoPath,status,create_date,create_user,update_date,update_user)
                         values(@bank_Name,@bank_LogoPath,@status,getdate(),@update_user,getdate(),@update_user)
                     end
                    else
                     begin
                         update bank_info
                         set bank_LogoPath = @bank_LogoPath,
                             bank_Name = @bank_Name, 
                             status = @status,
                             update_date = getdate(),
                             update_user  = @update_user 
                          where bank_Id = @bank_Id

                     end
            ";
            return cSourceData.ExecuteData(sql, cmd);  
        }

        public static MODEL_Insur_thai.bank_Model cLoadBankFormById(MODEL_Insur_thai.bank_Model data)
        {
          SqlCommand cmd = new SqlCommand();
          cmd.Parameters.AddWithValue("@bank_Id", data.bank_Id);
            string sql = @" 
                select * from bank_info
                where bank_Id = @bank_Id
            ";
            var item = cSourceData.GetData(sql, cmd).Tables[0];
             MODEL_Insur_thai.bank_Model obj = new MODEL_Insur_thai.bank_Model() ;
             if (item.Rows.Count > 0)
            {
                  obj = new MODEL_Insur_thai.bank_Model
                        { 
                            bank_Name = item.Rows[0]["bank_Name"].ToString(),
                            bank_LogoPath = item.Rows[0]["bank_LogoPath"].ToString(),
                            bank_Id = Convert.ToInt32(item.Rows[0]["bank_Id"].ToString()),
                            status =  item.Rows[0]["status"].ToString()
                        }; 
            }

            return obj;
        }
    }
}
