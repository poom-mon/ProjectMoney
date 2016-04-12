using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BAL_Insur_thai
{
    public class Bank_BAL
    {
        public static List<MODEL_Insur_thai.bank_Model> cSearchBank(MODEL_Insur_thai.bank_Model data)
        {
            return DAL_Insur_thai.bank_DAL.cSearchBank(data);
        }
    }
}
