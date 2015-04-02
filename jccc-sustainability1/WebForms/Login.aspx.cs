using Master1.csClasses;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace jccc_sustainability1.WebForms
{
    public partial class Login : System.Web.UI.Page
    {
        private static string connectionstring = ConfigurationManager.ConnectionStrings["SUSJCCC1ConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        
        protected void Button1_Click(object sender, EventArgs e)
        {
            int userId = CheckCredentials(TextBox1.Text, TextBox2.Text);
            if (userId > 0)
            {

                Response.Redirect("MasterPage.aspx");
            }
        }

        public static int CheckCredentials(string username, string password)
        {
            int userId = 0;

            SqlConnection con = new SqlConnection(connectionstring);
            using (SqlCommand cmd = new SqlCommand("SELECT UserId, Passwords, Guids FROM dbo.Users WHERE username=@username", con))
            {
                cmd.Parameters.AddWithValue("@username", username);
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                
                while (dr.Read())
                {
                    int dbUserId = Convert.ToInt32(dr["UserId"]);
                    string dbPassword = Convert.ToString(dr["Passwords"]);
                    string dbUserGuid = Convert.ToString(dr["Guids"]);
                    String s = password + dbUserGuid;
                    string hashedPassword = NewUserRegistration.HashPass(s);

                    if (dbPassword == hashedPassword)
                    {
                        userId = dbUserId;
                    }
                }
                con.Close();
            }
            return userId;
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