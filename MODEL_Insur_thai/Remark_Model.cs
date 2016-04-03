using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MODEL_Insur_thai
{
    public class Remark_Model
    {

        public int? remark_id { get; set; }
        public string remark_name { get; set; }
        public string remark_email { get; set; }
        public string remark_message { get; set; }
        public string create_date { get; set; }
        public string create_user { get; set; }
        public string status { get; set; }
        public string reply_message { get; set; }
        public string reply_username { get; set; }
    }
}
