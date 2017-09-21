using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RecruitmentManagementSystem
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=SuyPC089;Initial Catalog=RecruitmentManagement;Persist Security Info=True;User ID=sa;Password=Suyati123");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login_Button_Click(object sender, EventArgs e)
        {
            Int32 verify;
            string name1 = null;
            string query1 = "Select count(*) from HR where UserName='" + Username.Text + "' and Password='" + Password.Text + "' ";
            SqlCommand cmd1 = new SqlCommand(query1, con);
            string query2 = "Select * from HR where UserName='" + Username.Text + "' and Password='" + Password.Text + "' ";
            SqlCommand cmd2 = new SqlCommand(query2, con);
            con.Open();
            SqlDataReader rd = cmd2.ExecuteReader();
            while (rd.Read())
            {
                var name = rd["Name"];
                name1 = name.ToString();
                Session["Name"] = name;
            }
            rd.Close();
            verify = Convert.ToInt32(cmd1.ExecuteScalar());
            con.Close();
            if (verify > 0)
            {
                //Response.Redirect("~/Dashboard.aspx");
                FormsAuthentication.RedirectFromLoginPage(name1, true);

            }
            else
            {
                Message.ForeColor = System.Drawing.Color.Red;
                Message.Text = "Invalid Username and Password";
            }

        }
    }
}