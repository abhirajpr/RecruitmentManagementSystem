using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RecruitmentManagementSystem
{

    public partial class Dashboard : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=SuyPC089;Initial Catalog=RecruitmentManagement;Persist Security Info=True;User ID=sa;Password=Suyati123");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {
                string id = GridView1.DataKeys[e.RowIndex].Values["Id"].ToString();
                string name = e.NewValues[0].ToString();
                string pan = e.NewValues[1].ToString();
                DateTime date = Convert.ToDateTime(e.NewValues[2]);
                int level= Convert.ToInt32(e.NewValues[3]);
                string status= e.NewValues[4].ToString();
                con.Open();
                string sql = "update Candidate set Name='" + name + "',PANNumber = '" + pan + "',InterviewDate = '" + date + "', CandidateLevel = '" + level + "', Status = '" + status + "' where Id='" + id + "'";
                SqlCommand cmd = new SqlCommand(sql, con);
                cmd.ExecuteNonQuery();
                con.Close();
            }
            catch (Exception ex)
            {
            }
            finally
            {
                Response.Redirect("Dashboard.aspx");
            }
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
        }
    }
}