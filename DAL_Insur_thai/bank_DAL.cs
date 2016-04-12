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
    }
}
