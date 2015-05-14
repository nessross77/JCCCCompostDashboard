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
    public partial class Composting : System.Web.UI.Page
    {
        private static string connectionstring = ConfigurationManager.ConnectionStrings["SUSJCCC1ConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                setValues();
            }
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

        //Line Chart
        private string m_chartData;

        public string chartData
        {
            get
            {
                return m_chartData;
            }
            set
            {
                m_chartData = value;
            }
        }

        private string m_chartLabels;

        public string chartLabels
        {
            get
            {
                return m_chartLabels;
            }
            set
            {
                m_chartLabels = value;
            }
        }


        void setValues()
        {
            string[] values = weightsGraph();
            chartData = values[1];
            chartLabels = values[0];
        }


        public static string[] weightsGraph()
        {
            SqlConnection con = new SqlConnection(connectionstring);
            con.Open();
            SqlCommand cmdTotalCompost = new SqlCommand("SELECT [Date],[Total Composted (lbs)] FROM [db4782e67768554c1fa458a46e013cd5da].[dbo].[CompostData] WHERE [Total Composted (lbs)] IS NOT NULL ORDER By [Date]");
            cmdTotalCompost.Connection = con;
            SqlDataReader reader = cmdTotalCompost.ExecuteReader();
            string dates = "[";
            string weights = "";
            while (reader.Read())
            {
                DateTime dt = (DateTime)reader[0];
                dates += dt.Year.ToString();
                weights += reader[1].ToString();
                if (reader.Read() != false)
                {
                    dates += ",";
                    weights += ",";
                }
            }
            dates += "]";
            weights += "";
            reader.Close();
            con.Dispose();
            string[] values = new String[2] { dates, weights };
            return values;
        }
        //End Line Chart

        //Temperature Gauges
        public string temperature
        {
            get
            {
                return "75";
            }
            set { }
        }

        public string temperature2
        {
            get
            {
                return "50";
            }
            set { }
        }

        public string temperature3
        {
            get
            {
                return "15";
            }
            set { }
        }
    }
}