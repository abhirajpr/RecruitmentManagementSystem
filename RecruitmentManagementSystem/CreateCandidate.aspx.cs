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
    public partial class CreateCandidate : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=SuyPC089;Initial Catalog=RecruitmentManagement;Persist Security Info=True;User ID=sa;Password=Suyati123");
         
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //protected void imgbutton_Click(object sender, ImageClickEventArgs e)
        //{
        //    Calender1.Visible = !Calender1.Visible;
            
        //}



        //protected void Calendar1_SelectionChanged1(object sender, EventArgs e)
        //{

        //    Interview_date.Text = Calender1.SelectedDate.ToString("MM-dd-yyyy");
        //    Calender1.Visible = false;
        //}

        protected void Create_Click(object sender, EventArgs e)
        {
            //int check;
            SqlCommand cmd = new SqlCommand("spAddCandidate", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("name", Candidate_Name.Text);
            cmd.Parameters.AddWithValue("pan", PAN.Text);
            cmd.Parameters.AddWithValue("idate", Interview_date.Text);
            cmd.Parameters.AddWithValue("level", Candidate_Level.Text);
            cmd.Parameters.AddWithValue("status", Status.Text);
            con.Open();
            int check =cmd.ExecuteNonQuery();
            if (check == -1)
            {
                Message.ForeColor = System.Drawing.Color.Red;
                Message.Text = "Candidate Already Exist";
            }
            else
            {
                Message.ForeColor = System.Drawing.Color.Green;
                Message.Text = "Candidate Created";
            }
            con.Close();
        }
    }
}