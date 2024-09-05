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
    public partial class WebForm3 : Page
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
        }
        protected void button_clicked(object sender, EventArgs e)
        {
           

            string connection = ConfigurationManager.ConnectionStrings["mysql"].ConnectionString;
            MySqlConnection con = new MySqlConnection(connection);
            con.Open();

            string sql = "insert  INTO employee(FirstName,LastName,age,sex,address,Email,Phone,job,password) " +
                       "values(@fname,@lname,@age,@sex,@address,@email,@ephone,@job,@pass)";
            string sql1 = "insert  INTO user(userName,password) " +
                      "values(@uname,@passw)";
            if (roleboo.Text == "Officer")
            {
                MySqlCommand cmd1 = new MySqlCommand(sql1, con);
                MySqlCommand cmd = new MySqlCommand(sql, con);

                MySqlDataAdapter adapter = new MySqlDataAdapter(cmd);
                cmd.Parameters.AddWithValue("@fname", first.Text);
                cmd.Parameters.AddWithValue("@lname", last.Text);
                cmd.Parameters.AddWithValue("@age", ageboo.Text);
                cmd.Parameters.AddWithValue("@sex", genboo.Text);
                cmd.Parameters.AddWithValue("@address", addressboo.Text);
                cmd.Parameters.AddWithValue("@email", exampleInputEmail1.Text);
                cmd.Parameters.AddWithValue("@ephone", phone.Text);
                cmd.Parameters.AddWithValue("@job", roleboo.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@pass", exampleInputPassword1.Text);
                cmd1.Parameters.AddWithValue("@uname", first.Text);
                cmd1.Parameters.AddWithValue("@passw", exampleInputPassword1.Text);
                try
                {
                    int value = cmd.ExecuteNonQuery();
                    cmd1.ExecuteNonQuery();
                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex);
                }


            }
            else
            {
                string sql3 = "insert  INTO employee(FirstName,LastName,age,sex,address,Email,Phone,job,password) " +
                           "values(@fname,@lname,@age,@sex,@address,@email,@ephone,@job,@pass)";
                MySqlCommand cmd3 = new MySqlCommand(sql3, con);

                MySqlDataAdapter adapter = new MySqlDataAdapter(cmd3);
                cmd3.Parameters.AddWithValue("@fname", first.Text);
                cmd3.Parameters.AddWithValue("@lname", last.Text);
                cmd3.Parameters.AddWithValue("@age", ageboo.Text);
                cmd3.Parameters.AddWithValue("@sex", genboo.Text);
                cmd3.Parameters.AddWithValue("@address", addressboo.Text);
                cmd3.Parameters.AddWithValue("@email", exampleInputEmail1.Text);
                cmd3.Parameters.AddWithValue("@ephone", phone.Text);
                cmd3.Parameters.AddWithValue("@job", roleboo.SelectedItem.Text);
                cmd3.Parameters.AddWithValue("@pass", exampleInputPassword1.Text);
                try
                {
                    int value = cmd3.ExecuteNonQuery();
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
}