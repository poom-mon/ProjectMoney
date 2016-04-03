using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;

namespace DAL_Insur_thai
{
    public class Remrk_DAL
    {
        public static bool cUpdateStatus(MODEL_Insur_thai.Remark_Model data)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.Parameters.AddWithValue("@status", data.status);
            cmd.Parameters.AddWithValue("@reply_message", data.reply_message);
            cmd.Parameters.AddWithValue("@reply_username", data.reply_username);
            cmd.Parameters.AddWithValue("@remark_id", data.remark_id);
            
            string sql = @" 
                update log_in
                set status =@status,
                    reply_message =@reply_message,
                    reply_username= @reply_username 
                  where remark_id =@remark_id
            ";
            return cSourceData.ExecuteData(sql, cmd);  
         

        }

        public static bool cUpdateCustomerRemark(MODEL_Insur_thai.Remark_Model data)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.Parameters.AddWithValue("@remark_name", data.remark_name);
            cmd.Parameters.AddWithValue("@remark_email", data.remark_email); 
            cmd.Parameters.AddWithValue("@remark_message", data.remark_message); 

            string sql = @"  
                INSERT INTO remark_info(remark_name,remark_email,remark_message,create_date,status)
                VALUES (@remark_name,@remark_email,@remark_message,getdate(),'A') 
          ";
             

            return cSourceData.ExecuteData(sql, cmd);  
        }

    }
}
