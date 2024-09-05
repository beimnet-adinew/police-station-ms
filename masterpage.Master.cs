using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.admin
{
    public partial class masterpage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

         
        }
        protected void button_click2(object sender, EventArgs e)
        {
            
            Response.Redirect("../login/loginform.aspx");
        }
    }
}