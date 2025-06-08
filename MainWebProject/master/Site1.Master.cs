using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MainWebProject.master
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // בודק אם המשתמש מחובר על ידי בדיקת הסשן
            if (Session["name"] != null)
            {
                // שולף את שם המשתמש מהסשן
                string username = Session["name"].ToString();

                // מציג את הפאנל של המשתמש המחובר ומסתיר את הפאנל של האורח
                pnlGuestUser.Visible = false;
                pnlLoggedInUser.Visible = true;

                // מעדכן את שם המשתמש בלייבל בנאבבר
                lblUsername.Text = username;

                // מציג את פאנל המשתמש בפוטר ומעדכן את שם המשתמש
                pnlFooterUserSection.Visible = true;
                lblFooterUsername.Text = username;
            }
            else
            {
                // אם המשתמש לא מחובר, מציג את הפאנל של האורח
                pnlGuestUser.Visible = true;
                pnlLoggedInUser.Visible = false;

                // מסתיר את פאנל המשתמש בפוטר
                pnlFooterUserSection.Visible = false;
            }
        }

        // פעולה שמתבצעת בלחיצה על כפתור היציאה
        protected void btn_logOff_Click(object sender, EventArgs e)
        {
            // מנקה את הסשן
            Session.Clear();
            Session.Abandon();
            // מעביר למסך התחברות
            Response.Redirect("../Login/WebForm1.aspx");
        }

        // פעולה שמתבצעת בלחיצה על כפתור מחיקת החשבון
        protected void btn_deleteAccount_Click(object sender, EventArgs e)
        {
            if (Session["id"] != null)
            {
                SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\liors\Desktop\MainWebProject\MainWebProject\App_Data\Database1.mdf;Integrated Security=True");
                con.Open();
                string s = "delete from users where id=" + int.Parse(Session["id"].ToString()) + "";
                SqlDataAdapter da = new SqlDataAdapter(s, con);
                DataSet ds = new DataSet();
                da.Fill(ds);
                con.Close();
                Session.Clear();
                Session.Abandon();
                Response.Redirect("../SignUp/WebForm1.aspx"); // Changed from Register.aspx to match your structure
            }
        }
    }
}