using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MainWebProject.Login
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string email;
        string pwd;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                email = Request.Form["email"];
                pwd = Request.Form["password"];

                SqlConnection con = new SqlConnection();
                con.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\liors\Desktop\MainWebProject\MainWebProject\App_Data\Database1.mdf;Integrated Security=True";
                con.Open();

                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "SELECT id, name FROM Users WHERE email='" + email + "' AND pwd='" + pwd + "'";

                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.Read())
                {
                    object userId = reader["id"];
                    string userName = reader["name"].ToString();

                    reader.Close();
                    con.Close();

                    Session["name"] = userName;
                    Session["id"] = userId;

                    Response.Redirect("../HomePage/WebForm1.aspx");
                }
                else
                {
                    reader.Close();
                    con.Close();
                }
            }
        }
    }
}