using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
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

        }
    }
}