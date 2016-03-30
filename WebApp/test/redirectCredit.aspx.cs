using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class test_redirectCredit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Redirect("http://www.silkspan.com/banner/log_cbanner_counter.asp?fname=http://www.silkspan.com/silkspan_ssl/revole/detail_rl_ktc_type1.asp&typedealer=creditshop");
    }
}