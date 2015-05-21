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
    public partial class Recycling : System.Web.UI.Page
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


        void setValues()
        {
            string[] values = weightsGraph();
            chartData = values[1];
            chartLabels = values[0];
            string[] valuesB = totalRecGraph();
            chartDataB = valuesB[1];
            chartLabelsB = valuesB[0];
            string[] valuesBT = RCGraph();
            chartDataBT = valuesBT[1];
            chartLabelsBT = valuesBT[0];
            string[] valuesM = MoneyGraph();
            chartDataM = valuesM[1];
            chartLabelsM = valuesM[0];
        }

        //Pie Chart
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


        public static string[] weightsGraph()
        {
            SqlConnection con = new SqlConnection(connectionstring);
            con.Open();
            SqlCommand cmdTotalCompost = new SqlCommand("SELECT distinct classification,SUM([weight ton]) FROM [db49e09001d46d4533a501a49d00c79a11].[dbo].[RecyclingData] where [Weight ton] is not null group by Classification");
            cmdTotalCompost.Connection = con;
            SqlDataReader reader = cmdTotalCompost.ExecuteReader();

            string classm = "[";
            string weights = "";
            while (reader.Read())
            {

                classm += '\'' + reader[0].ToString() + '\'';

                weights += reader[1].ToString();
                //if (reader.Read() != false)
                //{
                if (reader[0] != null)
                {
                    classm += ",";
                    weights += ",";
                    //}
                }
            }
            classm = classm.Remove(classm.Length - 1);
            classm += "]";
            weights = weights.Remove(weights.Length - 1);
            //weights += "]";
            reader.Close();
            con.Dispose();
            string[] values = new String[2] { classm, weights };
            return values;
        }
        //End Pie Chart

        //Total Recycling Bar chart
        private string m_chartDataB;

        public string chartDataB
        {
            get
            {
                return m_chartDataB;
            }
            set
            {
                m_chartDataB = value;
            }
        }

        private string m_chartLabelsB;

        public string chartLabelsB
        {
            get
            {
                return m_chartLabelsB;
            }
            set
            {
                m_chartLabelsB = value;
            }
        }


        public static string[] totalRecGraph()
        {
            SqlConnection con = new SqlConnection(connectionstring);
            con.Open();
            SqlCommand cmdTotalCompost = new SqlCommand("SELECT year([Pickup date]), sum([Weight ton]) FROM [db49e09001d46d4533a501a49d00c79a11].[dbo].[RecyclingData] group by Year([Pickup Date]) having sum([Weight ton]) is not null");
            cmdTotalCompost.Connection = con;
            SqlDataReader reader = cmdTotalCompost.ExecuteReader();

            string classm = "[";
            string weights = "";
            while (reader.Read())
            {

                classm +=  reader[0].ToString() ;

                weights += reader[1].ToString();
                //if (reader.Read() != false)
                //{
                if (reader[0] != null)
                {
                    classm += ",";
                    weights += ",";
                    //}
                }
            }
            classm = classm.Remove(classm.Length - 1);
            classm += "]";
            weights = weights.Remove(weights.Length - 1);
            //weights += "]";
            reader.Close();
            con.Dispose();
            string[] values = new String[2] { classm, weights };
            return values;
        }
        //End Bar Chart

        //Total Recycling vs Trash Bar chart
        private string m_chartDataBT;

        public string chartDataBT
        {
            get
            {
                return m_chartDataBT;
            }
            set
            {
                m_chartDataBT = value;
            }
        }

        private string m_chartLabelsBT;

        public string chartLabelsBT
        {
            get
            {
                return m_chartLabelsBT;
            }
            set
            {
                m_chartLabelsBT = value;
            }
        }


        public static string[] RCGraph()
        {
            SqlConnection con = new SqlConnection(connectionstring);
            con.Open();
            SqlCommand cmdTotalCompost = new SqlCommand("SELECT year([Date]), sum([Tonnage]) FROM [db49e09001d46d4533a501a49d00c79a11].[dbo].[TrashData] group by Year([Date]) having sum([Tonnage]) is not null order by year([Date])");
            cmdTotalCompost.Connection = con;
            SqlDataReader reader = cmdTotalCompost.ExecuteReader();

            string classm = "[";
            string weights = "";
            while (reader.Read())
            {

                classm += reader[0].ToString();

                weights += reader[1].ToString();
                //if (reader.Read() != false)
                //{
                if (reader[0] != null)
                {
                    classm += ",";
                    weights += ",";
                    //}
                }
            }
            classm = classm.Remove(classm.Length - 1);
            classm += "]";
            weights = weights.Remove(weights.Length - 1);
            //weights += "]";
            reader.Close();
            con.Dispose();
            string[] values = new String[2] { classm, weights };
            return values;
        }
        //End Bar Chart

        //Total Money Bar chart
        private string m_chartDataM;

        public string chartDataM
        {
            get
            {
                return m_chartDataM;
            }
            set
            {
                m_chartDataM = value;
            }
        }

        private string m_chartLabelsM;

        public string chartLabelsM
        {
            get
            {
                return m_chartLabelsM;
            }
            set
            {
                m_chartLabelsM = value;
            }
        }


        public static string[] MoneyGraph()
        {
            SqlConnection con = new SqlConnection(connectionstring);
            con.Open();
            SqlCommand cmdTotalCompost = new SqlCommand("SELECT year([Pickup Date]), sum([Payment]) FROM [db49e09001d46d4533a501a49d00c79a11].[dbo].[RecyclingData] group by Year([Pickup date]) having sum([Payment]) is not null ");
            cmdTotalCompost.Connection = con;
            SqlDataReader reader = cmdTotalCompost.ExecuteReader();

            string classm = "[";
            string weights = "";
            while (reader.Read())
            {

                classm += reader[0].ToString();

                weights += reader[1].ToString();
                //if (reader.Read() != false)
                //{
                if (reader[0] != null)
                {
                    classm += ",";
                    weights += ",";
                    //}
                }
            }
            classm = classm.Remove(classm.Length - 1);
            classm += "]";
            weights = weights.Remove(weights.Length - 1);
            //weights += "]";
            reader.Close();
            con.Dispose();
            string[] values = new String[2] { classm, weights };
            return values;
        }
        //End Bar Chart
    }
}