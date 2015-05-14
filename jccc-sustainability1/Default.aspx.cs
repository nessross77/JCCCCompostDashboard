using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace jccc_sustainability1
{
    public partial class Default : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Home_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        protected void Composting_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForms/Composting.aspx");
        }

        protected void Recycling_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForms/Recycling.aspx");
        }

        protected void Data_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForms/Data.aspx");
        }

        protected void About_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForms/About.aspx");
        }

        protected void ContactUs_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForms/ContactUs.aspx");
        }

        protected void Login_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForms/Login.aspx");
        }


        
    }
}

