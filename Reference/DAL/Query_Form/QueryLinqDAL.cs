using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;
using System.Data.SqlServerCe;

namespace DAL
{
    public class QueryLinqDAL
    { 

        #region LinqQuery

        public static  string config = cSourceData.GetConnStr(); 
        public static DAL.Linq.QueryLinqDataContext qLinq = new Linq.QueryLinqDataContext(config); 

        public static object cSelectLinq(MODEL.Query obj)
        {
            /*  var Lquery = from a in qLinq.TEST_SYSTEMs
                          where a.SYSTEM_NAME.ToLower() == "linq"
                          select new MODEL.Query
                          {
                               ID =a.ID,
                               NAME = a.NAME,
                               EMAIL = a.EMAIL
                          };
             return Lquery.ToList<MODEL.Query>();
             **/

            string query = "  SELECT ID,NAME,EMAIL from TEST_SYSTEM  where SYSTEM_NAME='linq' ";
             var respon = qLinq.ExecuteQuery<MODEL.Query>(query);
             return respon.ToList();

        }
        public static object cUpdateLinq(MODEL.Query obj)
        {
            bool reUpdate = false; 
          //  qLinq.Connection.Open();
          //  qLinq.Transaction = qLinq.Connection.BeginTransaction();
            try
            {
                var Lquery = (from a in qLinq.TEST_SYSTEMs
                              where  a.ID == obj.ID
                              select a).FirstOrDefault();

                if (Lquery != null) { 
                    Lquery.EMAIL = obj.EMAIL;
                    Lquery.NAME = obj.NAME;
                    qLinq.SubmitChanges();
                    reUpdate = true;
                }  
            }
            catch (Exception)
            {
          //      if (qLinq.Transaction != null)
          //          qLinq.Transaction.Rollback();

                reUpdate = false;
            }
            finally {
           //     qLinq.Transaction.Dispose();
           //     qLinq.Connection.Close();  
            }
            return reUpdate;
        }

        public static object cInsertLinq(MODEL.Query obj)
        {
            bool reUpdate = false;
          //  qLinq.Connection.Open();
          //  qLinq.Transaction = qLinq.Connection.BeginTransaction();
            try
            { 
                // query จาก object linq 
               /* Linq.TEST_SYSTEM objLinq = new Linq.TEST_SYSTEM();
                objLinq.NAME = obj.NAME;
                objLinq.EMAIL = obj.EMAIL;
                objLinq.SYSTEM_NAME = "linq";
                 
                qLinq.TEST_SYSTEMs.InsertOnSubmit(objLinq);
                qLinq.SubmitChanges();*/

                string query = "  INSERT INTO TEST_SYSTEM(NAME,EMAIL,SYSTEM_NAME) values('" + obj.NAME + "','" + obj.EMAIL + "','linq')   ";
                var respon = qLinq.ExecuteQuery<MODEL.Query>(query);

       //         qLinq.Transaction.Commit();


            }
            catch (Exception)
            {
         //      if (qLinq.Transaction != null)
        //            qLinq.Transaction.Rollback();

                reUpdate = false;
            }
            finally
            {
       //         qLinq.Transaction.Dispose();
       //         qLinq.Connection.Close(); 
            }
            return reUpdate;
        }

        public static object cDeleteLinq(MODEL.Query obj)
        {
            bool reUpdate = false;
           // qLinq.Connection.Open();
           // qLinq.Transaction = qLinq.Connection.BeginTransaction();
            try
            { 
                var Lquery = (from a in qLinq.TEST_SYSTEMs
                              where a.ID == obj.ID
                              select a).FirstOrDefault();

                if (Lquery != null)
                { 
                    qLinq.TEST_SYSTEMs.DeleteOnSubmit(Lquery);
                    qLinq.SubmitChanges();  
                }  

             

            }
            catch (Exception)
            {
                if (qLinq.Transaction != null)
                    qLinq.Transaction.Rollback();

                reUpdate = false;
            }
            finally
            {
           //     qLinq.Transaction.Dispose();
          //      qLinq.Connection.Close();
               reUpdate = false;
            }
            return reUpdate;
        }

        #endregion EndLinqQuery

    }
}
