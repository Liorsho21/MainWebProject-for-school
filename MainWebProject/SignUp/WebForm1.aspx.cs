using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace MainWebProject.SignUp
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        // הגדרת המשתנים ברמת המחלקה
        string name;
        string email;
        string pwd;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                name = Request.Form["name"];
                email = Request.Form["email"];
                pwd = Request.Form["password"];

                SqlConnection con = new SqlConnection();
                con.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\liors\Desktop\MainWebProject\MainWebProject\App_Data\Database1.mdf;Integrated Security=True";
                con.Open();

                string s = "insert into Users(name,email,pwd) values('" + name + "','" + email + "','" + pwd + "')";

                SqlDataAdapter da = new SqlDataAdapter(s, con);
                DataSet ds = new DataSet();
                da.Fill(ds);

                //שאילתה ששולפת את המזהה של המשתמש ושומרת אותו בסשן
                SqlCommand cmd2 = new SqlCommand();
                cmd2.Connection = con;
                cmd2.CommandType = CommandType.Text;
                cmd2.CommandText = "SELECT id from users WHERE name='" + name + "'AND pwd='" + pwd + "'";
                object obj = cmd2.ExecuteScalar();
                con.Close();

                if (obj != null)
                {
                    Session["name"] = name;
                    Response.Redirect("../Login/WebForm1.aspx");
                }
            }

            

        }
    }
}
