using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using MySql.Data.MySqlClient;

namespace WebApplication1
{
    public partial class WebForm1 : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["userName"] == null)
            {
                Response.Redirect("../login/loginform.aspx");
            }
            else
            {

            }
            //Session.RemoveAll();
            //Session.Abandon();


            string connection = ConfigurationManager.ConnectionStrings["mysql"].ConnectionString;
            MySqlConnection con = new MySqlConnection(connection);

            con.Open();
            string notify = " select count(*) as myCount from prisoners";
            MySqlCommand cmdnotify = new MySqlCommand(notify, con);
            double total = int.Parse(cmdnotify.ExecuteScalar().ToString());
            if (total > 0)
            {
                prisonno.Text = total.ToString();

            }
            else
            {

            }

            string notify2 = " select count(*) from employee";
            MySqlCommand cmdnotify2 = new MySqlCommand(notify2, con);
            double total2 = int.Parse(cmdnotify2.ExecuteScalar().ToString());
            if (total2 > 0)
            {
                employeno.Text = total2.ToString();

            }
            else
            {

            }
            int totalCells = 500;
            string notify3 = " select count(*) from prisoners";
            MySqlCommand cmdnotify3 = new MySqlCommand(notify3, con);

            double total3 = int.Parse(cmdnotify3.ExecuteScalar().ToString());
            if (total3 > 0)
            {
                double av = totalCells - total3;
                cellno.Text = av.ToString();

            }
            else
            {

            }

            con.Close();
        }
  
    }
}