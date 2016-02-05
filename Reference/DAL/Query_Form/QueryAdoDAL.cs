using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;
using System.Data.SqlServerCe;

namespace DAL
{
    public class QueryAdoDAL
    {
        #region AdoQuery
        public static object cSelectAdo(MODEL.QueryModel obj)
        { 
              SqlCommand cmd = new SqlCommand();
             cmd.Parameters.AddWithValue("@id", obj.ID);
             string sql = @" 
                select ID,isnull(NAME,'') NAME ,isnull(EMAIL,'') EMAIL  from test_system where SYSTEM_NAME ='ado'
            ";
            return cConverter.ConvertDataTable<MODEL.QueryModel>(cSourceData.GetData(sql, cmd).Tables[0]);  

        } 
        public static object cUpdateAdo(MODEL.QueryModel obj)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.Parameters.AddWithValue("@id", obj.ID);
            cmd.Parameters.AddWithValue("@name", obj.NAME);
            cmd.Parameters.AddWithValue("@email", obj.EMAIL);
             string sql = @" 
                update test_system
                set name = @name,
                    email = @email ,
                    SYSTEM_NAME ='ado'
                where id=@id
                
            ";
            return cSourceData.ExecuteData(sql, cmd);  
        }

        public static object cInsertAdo(MODEL.QueryModel obj)
        {
            SqlCommand cmd = new SqlCommand(); 
            cmd.Parameters.AddWithValue("@name", obj.NAME);
            cmd.Parameters.AddWithValue("@email", obj.EMAIL);
            string sql = @"  
               insert into test_system(name,email,SYSTEM_NAME)values(@name,@email,'ado')  
             ";
             return cSourceData.ExecuteData(sql, cmd); 
        }

        public static object cDeleteAdo(MODEL.QueryModel obj)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.Parameters.AddWithValue("@id", obj.ID); 
            string sql = @"  
                  delete from test_system where id = @id  
             ";
            return cSourceData.ExecuteData(sql, cmd);
        }

        #endregion EndAdoQuery

         

    }
}
