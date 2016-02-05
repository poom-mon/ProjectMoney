using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BAL 
{
    public class QueryEntityBAL
    {

        #region LinqQuery
        public static object cSelectEntity(string data)
        {
            MODEL.Query obj = cHelper.Deserialize<MODEL.Query>(data);
            return DAL.QueryEntityDAL.cSelectEntity(obj);
        }

        public static object cInsertEntity(string data)
        {
            MODEL.Query obj = cHelper.Deserialize<MODEL.Query>(data);
            return DAL.QueryEntityDAL.cInsertEntity(obj);
        }

        public static object cUpdateEntity(string data)
        {
            MODEL.Query obj = cHelper.Deserialize<MODEL.Query>(data);
            return DAL.QueryEntityDAL.cUpdateEntity(obj);
        }

        public static object cDeleteEntity(string data)
        {
            MODEL.Query obj = cHelper.Deserialize<MODEL.Query>(data);
            return DAL.QueryEntityDAL.cDeleteEntity(obj);
        }
        #endregion

         
    }
}
