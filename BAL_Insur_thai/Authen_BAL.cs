using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BAL_Insur_thai
{
    public class Authen_BAL
    {

        public static bool checkLogin(MODEL_Insur_thai.Authen_Model.login data)
        {
            return DAL_Insur_thai.Authen_DAL.checkLogin(data);
        }
         
    }
}
