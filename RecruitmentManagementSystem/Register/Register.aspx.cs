using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RecruitmentManagementSystem
{
    public partial class Register : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=SuyPC089;Initial Catalog=RecruitmentManagement;Persist Security Info=True;User ID=sa;Password=Suyati123");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Register_Button_Click(object sender, EventArgs e)
        {
            int check;
            SqlCommand cmd = new SqlCommand("spAddHR", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("name", Name.Text);
            cmd.Parameters.AddWithValue("email", Email.Text);
            cmd.Parameters.AddWithValue("username", Username.Text);
            cmd.Parameters.AddWithValue("password", Password.Text);
            con.Open();
            check=cmd.ExecuteNonQuery();
            if(check==-1)
            {
                Message.ForeColor = System.Drawing.Color.Red;
                Message.Text = "User Already Exist";
            }
            else
            {
                Message.ForeColor = System.Drawing.Color.Green;
                Message.Text = "User Added";
            }
            con.Close();


        }
    }
}