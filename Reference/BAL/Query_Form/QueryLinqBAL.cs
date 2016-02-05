using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BAL
{
    public class QueryLinqBAL
    { 
        #region LinqQuery
        public static object cSelectLinq(string data)
        {
            MODEL.Query obj = cHelper.Deserialize<MODEL.Query>(data);
            return DAL.QueryLinqDAL.cSelectLinq(obj);
        }

        public static object cInsertLinq(string data)
        {
            MODEL.Query obj = cHelper.Deserialize<MODEL.Query>(data);
            return DAL.QueryLinqDAL.cInsertLinq(obj);
        }

        public static object cUpdateLinq(string data)
        {
            MODEL.Query obj = cHelper.Deserialize<MODEL.Query>(data);
            return DAL.QueryLinqDAL.cUpdateLinq(obj);
        }

        public static object cDeleteLinq(string data)
        {
            MODEL.Query obj = cHelper.Deserialize<MODEL.Query>(data);
            return DAL.QueryLinqDAL.cDeleteLinq(obj);
        }
         #endregion

    }
}
