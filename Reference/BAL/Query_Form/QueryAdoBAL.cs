using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BAL
{
    public class QueryAdoBAL
    {
        #region AdoQuery
        public static object cSelectAdo(string data)
        {
             MODEL.QueryModel obj = cHelper.Deserialize<MODEL.QueryModel>(data);
             return  DAL.QueryAdoDAL.cSelectAdo(obj) ;
        }

        public static object cInsertAdo(string data)
        {
            MODEL.QueryModel obj = cHelper.Deserialize<MODEL.QueryModel>(data);
            return DAL.QueryAdoDAL.cInsertAdo(obj);
        }

        public static object cUpdateAdo(string data)
        {
            MODEL.QueryModel obj = cHelper.Deserialize<MODEL.QueryModel>(data);
            return DAL.QueryAdoDAL.cUpdateAdo(obj);
        }

        public static object cDeleteAdo(string data)
        {
            MODEL.QueryModel obj = cHelper.Deserialize<MODEL.QueryModel>(data);
            return DAL.QueryAdoDAL.cDeleteAdo(obj);
        }
        #endregion



        public static object cSelectAdo(MODEL.QueryModel data)
        {
            return DAL.QueryAdoDAL.cSelectAdo(data);
        }

        public static object cInsertAdo(MODEL.QueryModel data)
        {
            return DAL.QueryAdoDAL.cInsertAdo(data);
        }
        public static object cUpdateAdo(MODEL.QueryModel   data)
        {
            return DAL.QueryAdoDAL.cUpdateAdo(data);
        }
        public static object cDeleteAdo(MODEL.QueryModel data)
        {
            return DAL.QueryAdoDAL.cDeleteAdo(data);
        }
    }
}
