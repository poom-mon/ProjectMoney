using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;

namespace DAL_Insur_thai
{
    public class Authen_DAL
    {

        public static bool checkLogin(MODEL_Insur_thai.Authen_Model.login data)
        { 
              SqlCommand cmd = new SqlCommand();
             cmd.Parameters.AddWithValue("@username", data.username);
             cmd.Parameters.AddWithValue("@password", data.password);
             string sql = @" 
                select * from log_in
                  where username =@username and password=@password
            ";
             return cSourceData.GetData(sql, cmd).Tables[0].Rows.Count > 0 ? true : false ;  
         }


    }
}
