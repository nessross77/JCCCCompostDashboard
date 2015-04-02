using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace jccc_sustainability1.WebForms
{
    public partial class ContactUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Home_Click(object sender, EventArgs e)
        {
            Response.Redirect("../Default.aspx");
        }

        protected void Composting_Click(object sender, EventArgs e)
        {
            Response.Redirect("Composting.aspx");
        }

        protected void Recycling_Click(object sender, EventArgs e)
        {
            Response.Redirect("Recycling.aspx");
        }

        protected void Data_Click(object sender, EventArgs e)
        {
            Response.Redirect("Data.aspx");
        }

        protected void About_Click(object sender, EventArgs e)
        {
            Response.Redirect("About.aspx");
        }

        protected void ContactUs_Click(object sender, EventArgs e)
        {
            Response.Redirect("ContactUs.aspx");
        }

        protected void Login_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

    }
}