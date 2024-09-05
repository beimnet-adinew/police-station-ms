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
    public partial class WebForm8 : Page
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
            //    string connection = ConfigurationManager.ConnectionStrings["mysql"].ConnectionString;
            //    MySqlConnection con = new MySqlConnection(connection);
            //    con.Open();
            //    string sql = "select FirstName, LastName,age,sex,address,email,phone,job,password from employee where FirstName=@name";

            //    MySqlCommand cmd = new MySqlCommand(sql, con);
            //    //cmd.Parameters.AddWithValue("@name", nameb.Text);
            //    MySqlDataReader reader1;
            //    reader1 = cmd.ExecuteReader();
            //    if (reader1.Read())
            //    {
            //        first.Text = reader1["FirstName"].ToString();
            //        last.Text = reader1["LastName"].ToString();
            //        ageboo.Text = reader1["age"].ToString();
            //        genboo.Text = reader1["sex"].ToString();
            //        addressboo.Text = reader1["address"].ToString();
            //        exampleInputEmail1.Text = reader1["email"].ToString();
            //        phone.Text = reader1["phone"].ToString();
            //        roleboo.Text = reader1["job"].ToString();
            //        exampleInputPassword1.Text = reader1["password"].ToString();
            //    }
            //    else
            //    {
            //        Console.WriteLine("data not found");
            //    }
            //    con.Close();
        }

        protected void search_clicked(object sender, EventArgs e)
        {
            string connection = ConfigurationManager.ConnectionStrings["mysql"].ConnectionString;
            MySqlConnection con = new MySqlConnection(connection);
            con.Open();
            string sql = "select FirstName, LastName,age,sex,address,email,phone,job,password from employee where FirstName='"+name.Text+"'";

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
                addressboo.Text = reader1["address"].ToString();
                exampleInputEmail1.Text = reader1["email"].ToString();
                phone.Text = reader1["phone"].ToString();
                rolebooo.Text = reader1["job"].ToString();
                exampleInputPassword1.Text = reader1["password"].ToString();
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
            exampleInputEmail1.ReadOnly = false;
            phone.ReadOnly = false;
            rolebooo.ReadOnly = false;
            exampleInputPassword1.ReadOnly = false;
        }
        protected void Save_clicked(object sender, EventArgs e)
        {
            string connection = ConfigurationManager.ConnectionStrings["mysql"].ConnectionString;
            MySqlConnection conn = new MySqlConnection(connection);
            conn.Open();
            string sqll = "Update employee set FirstName='"+ first.Text + "',LastName='"+last.Text+"',age='"+ ageboo.Text + "',sex='"+ genboo.Text + "',address='"+ addressboo.Text + "',email='"+ exampleInputEmail1.Text + "',phone='"+ phone.Text + "',job='"+ rolebooo.Text + "',password='"+ exampleInputPassword1.Text + "' where FirstName=@name";
            MySqlCommand cmdd = new MySqlCommand(sqll, conn);
            cmdd.Parameters.AddWithValue("@name", name.Text);
            cmdd.Parameters.AddWithValue("@fname", first.Text);
            cmdd.Parameters.AddWithValue("@lname", last.Text);
            cmdd.Parameters.AddWithValue("@age", ageboo.Text);
            cmdd.Parameters.AddWithValue("@sex",genboo.Text);
            cmdd.Parameters.AddWithValue("@address", addressboo.Text);
            cmdd.Parameters.AddWithValue("@email", exampleInputEmail1.Text);
            cmdd.Parameters.AddWithValue("@ephone", phone.Text);
            cmdd.Parameters.AddWithValue("@job", rolebooo.Text);
            cmdd.Parameters.AddWithValue("@pass", exampleInputPassword1.Text);
            try
            {

                int value = cmdd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex);
            }
            finally {
                conn.Close();
            }
        }
    }
}