using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BAL_Insur_thai
{
    public class Remark_BAL
    {
        public static bool cUpdateStatus(MODEL_Insur_thai.Remark_Model data)
        {
            return DAL_Insur_thai.Remrk_DAL.cUpdateStatus(data);
        }
        public static bool cUpdateCustomerRemark(MODEL_Insur_thai.Remark_Model data)
        {
            return DAL_Insur_thai.Remrk_DAL.cUpdateCustomerRemark(data);
        }
    }
}
