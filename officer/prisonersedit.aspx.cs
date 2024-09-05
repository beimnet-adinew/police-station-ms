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
    public partial class WebForm9 : Page
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
        }
        protected void search_clicked(object sender, EventArgs e)
        {
            string connection = ConfigurationManager.ConnectionStrings["mysql"].ConnectionString;
            MySqlConnection con = new MySqlConnection(connection);
            con.Open();
            string sql = "select FirstName, LastName,age,sex,cell,address,Emergency_Person,Emergency_Phone,crime_committed from prisoners where FirstName='" + name.Text + "'";

            MySqlCommand cmd = new MySqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@name", name.Text);
            MySqlDataReader reader1;
            reader1 = cmd.ExecuteReader();
            if (reader1.Read())
            {
                first.Text = reader1["FirstName"].ToString();
                last.Text = reader1["LastName"].ToString();
                ageboo.Text = reader1["age"].ToString();
                genboo.Text = reader1["sex"].ToString();
                cellboo.Text = reader1["cell"].ToString();
                addressboo.Text = reader1["address"].ToString();
                emergencyboo.Text = reader1["Emergency_Person"].ToString();
                emerphone.Text = reader1["Emergency_Phone"].ToString();
                crimeboo.Text = reader1["crime_committed"].ToString();
                
            }
            else
            {
                Console.WriteLine("data not found");
            }
            con.Close();
        }
        protected void Edit_clicked(object sender, EventArgs e)
        {
            first.ReadOnly = false;
            last.ReadOnly = false;
            ageboo.ReadOnly = false;
            genboo.ReadOnly = false;
            addressboo.ReadOnly = false;
            emergencyboo.ReadOnly = false;
            emerphone.ReadOnly = false;
            cellboo.ReadOnly = false;
            crimeboo.ReadOnly = false;
        }
        protected void Save_clicked(object sender, EventArgs e)
        {
            string connection = ConfigurationManager.ConnectionStrings["mysql"].ConnectionString;
            MySqlConnection conn = new MySqlConnection(connection);
            conn.Open();
            string sqll = "Update prisoners set FirstName='" + first.Text + "',LastName='" + last.Text + "',age='" + ageboo.Text + "',sex='" + genboo.Text + "',address='" + addressboo.Text + "',Emergency_Person='" + emergencyboo.Text + "',Emergency_Phone='" + emerphone.Text + "',crime_committed='" + crimeboo.Text + "' where FirstName=@name";
            MySqlCommand cmdd = new MySqlCommand(sqll, conn);
            cmdd.Parameters.AddWithValue("@name", name.Text);
            cmdd.Parameters.AddWithValue("@fname", first.Text);
            cmdd.Parameters.AddWithValue("@lname", last.Text);
            cmdd.Parameters.AddWithValue("@age", ageboo.Text);
            cmdd.Parameters.AddWithValue("@sex", genboo.Text);
            cmdd.Parameters.AddWithValue("@cell",cellboo.Text);
            cmdd.Parameters.AddWithValue("@address", addressboo.Text);
            cmdd.Parameters.AddWithValue("@emergency",emergencyboo.Text);
            cmdd.Parameters.AddWithValue("@ephone", emerphone.Text);
            cmdd.Parameters.AddWithValue("@crime", crimeboo.Text);
            
            try
            {

                int value = cmdd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex);
            }
            finally
            {
                conn.Close();
            }
        }
    }
}