using Master1.csClasses;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Master1.WebForms
{
    public partial class UserRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddUser_Click(object sender, EventArgs e)
        {
            string username = Textbox1.Text;
            string password = Textbox2.Text;
            bool result = NewUserRegistration.AddUser(username, password);
            Response.Redirect("UserRegistration.aspx");
        }
    }
}