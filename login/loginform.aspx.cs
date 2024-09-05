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

namespace WebApplication1.login
{
    public partial class loginform : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

           
        }
        protected void button_clickl(object sender, EventArgs e)
        {

            string connection = ConfigurationManager.ConnectionStrings["mysql"].ConnectionString;
            MySqlConnection con = new MySqlConnection(connection);

            con.Open();


            string sql = "select userName,password from user where userName='" + user.Text + "' and password='" + password.Text + "'";
            MySqlCommand cmd = new MySqlCommand(sql, con);
            MySqlDataAdapter adapter = new MySqlDataAdapter(cmd);
            cmd.Parameters.AddWithValue("@fname", user.Text);
            cmd.Parameters.AddWithValue("@lname", password.Text);
            DataTable dt = new DataTable();
            DataSet ds = new DataSet();

            adapter.Fill(ds);

            if (ds.Tables[0].Rows.Count > 0)
            {
                
                Session["userName"] = ds.Tables[0].Rows[0]["userName"].ToString();
                if (rolebox.SelectedIndex == 0)
                {
                   
                    Response.Redirect("../admin/dash.aspx");

                }
                else if (rolebox.SelectedIndex == 1 && user.Text!="Admin")
                {
                    Session["profile"] = user.Text;
                    Response.Redirect("../officer/officer.aspx");
                }
                else
                {
                    Console.WriteLine("select role");
                }


            }
            else
            {
                Console.WriteLine("select role");
            }

            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}