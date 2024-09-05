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
    public partial class WebForm4 : System.Web.UI.Page
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
            string connection = ConfigurationManager.ConnectionStrings["mysql"].ConnectionString;
            MySqlConnection con = new MySqlConnection(connection);
            con.Open();
            string sql = "select * from prisoners";
            //order by logintime desc
            MySqlCommand cmd = new MySqlCommand(sql, con);

            MySqlDataReader read = null;
            read = cmd.ExecuteReader();
            string datalist = "";
            int i = 0;
            if (read.HasRows)
            {
                while (read.Read())
                {
                    datalist += "<tr>";
                    datalist += "<td></td>";
                    datalist += "<td class=\"center\">" + read["FirstName"] + "</td>";
                    datalist += "<td class=\"center\">" + read["LastName"] + "</td>";
                    datalist += "<td class=\"center\">" + read["cell"] + "</td>";
                    datalist += "<td class=\"center\">" + read["crime_committed"] + "</td>";
                    datalist += "<td class=\"center\">" + read["age"] + "</td>";
                    datalist += "<td class=\"center\">" + read["address"] + "</td>";
                    datalist += "<td class=\"center\">" + read["sex"] + "</td>";
                    datalist += "<td class=\"center\">";
                    //datalist += " <a class=\"btn btn-info\" href=\"edituser?edituserid=" + read["id"] + "\">";
                    //datalist += "   <i class=\"fa fa-edit\"> </i>";
                    //datalist += " Edit";
                    //datalist += "</a>";
                    //datalist += " <a class=\"btn btn-danger\" href=\"deleteuser?deleteuserid=" + read["id"] + "\">";
                    //datalist += "   <i class=\"fa fa-close\"> </i>";
                    //datalist += " Delete";
                    //datalist += "</a>";

                    datalist += "</td>";



                    datalist += "</tr>";
                    Tbody1.InnerHtml = datalist;

                    i++;
                }

                con.Close();
            }
        }
    }
}