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
    public partial class WebForm7 : System.Web.UI.Page
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
            Session.RemoveAll();
            Session.Abandon();
        }
        protected void button_clicked(object sender, EventArgs e)
        {
            string connection = ConfigurationManager.ConnectionStrings["mysql"].ConnectionString;
            MySqlConnection con = new MySqlConnection(connection);
            con.Open();

            string sql = "insert  INTO prisoners(FirstName,LastName,age,sex,cell,address,Emergency_Person,Emergency_Phone,crime_committed) " +
                       "values(@fname,@lname,@age,@sex,@cell,@address,@emergency,@ephone,@crime)";
            MySqlCommand cmd = new MySqlCommand(sql, con);

            MySqlDataAdapter adapter = new MySqlDataAdapter(cmd);
            cmd.Parameters.AddWithValue("@fname", first.Text);
            cmd.Parameters.AddWithValue("@lname", last.Text);
            cmd.Parameters.AddWithValue("@age", ageboo.Text);
            cmd.Parameters.AddWithValue("@sex", genboo.Text);
            cmd.Parameters.AddWithValue("@cell", cell.Text);
            cmd.Parameters.AddWithValue("@address", addressboo.Text);
            cmd.Parameters.AddWithValue("@emergency", emergency.Text);
            cmd.Parameters.AddWithValue("@ephone", phone.Text);
            cmd.Parameters.AddWithValue("@crime", crime.Text);


            try
            {

                int value = cmd.ExecuteNonQuery();
                /*f1name.Value = "succesfull";*/
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex);
            }
            finally
            {
                con.Close();
            }

        }

    }
}