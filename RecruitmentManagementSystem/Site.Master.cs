﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RecruitmentManagementSystem
{
    public partial class Site : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        public string LblUserName
        {
            get
            {
                var lblMyLabel = (Label)lvUserInfo.FindControl("lblUserName");
                return lblMyLabel.Text;
            }
            set
            {
                var lblMyLabel = (Label)lvUserInfo.FindControl("lblUserName");
                lblMyLabel.Text = value;
            }
        }

    }
}