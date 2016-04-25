using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;

namespace DAL_Insur_thai
{
    public class Authen_DAL
    {

        public static List<MODEL_Insur_thai.Authen_Model.login> checkLogin(MODEL_Insur_thai.Authen_Model.login data)
        { 
              SqlCommand cmd = new SqlCommand();
             cmd.Parameters.AddWithValue("@username", data.username);
             cmd.Parameters.AddWithValue("@password", data.password);
             string sql = @" 
                select * from log_in
                  where username =@username and password=@password
            ";
            // return cSourceData.GetData(sql, cmd).Tables[0].Rows.Count > 0 ? true : false ;
             List<MODEL_Insur_thai.Authen_Model.login> ob = new List<MODEL_Insur_thai.Authen_Model.login>(); 
            System.Data.DataTable dt = cSourceData.GetData(sql, cmd).Tables[0];
             if (dt.Rows.Count > 0) {
                 ob.Add(new MODEL_Insur_thai.Authen_Model.login() {
                     username = dt.Rows[0]["username"].ToString(),
                     password = dt.Rows[0]["password"].ToString(),
                     logid = dt.Rows[0]["logId"].ToString() 
                 });
             }
             return ob;
         }


    }
}
