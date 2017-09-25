using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RecruitmentManagementSystem
{
    public partial class SelectedList : System.Web.UI.Page
    {
        
            //select * from [dbo].[Candidate] where (DATEDIFF(month,[InterviewDate],getdate()))<=3 and Status='Selected'
        
        bool isLoggedIn = (System.Web.HttpContext.Current.User != null) && System.Web.HttpContext.Current.User.Identity.IsAuthenticated;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Name"] != null)
            {
                if (isLoggedIn)
                {
                    ((Site)this.Master).LblUserName = "Hello, " + Session["Name"].ToString();
                }
            }
            else
            {
                //Response.Redirect("Login.aspx");
                //LogoutAction.Redirect("Login.aspx");
                FormsAuthentication.SignOut();


            }
        }
    }
}