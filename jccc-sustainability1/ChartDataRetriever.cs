using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace jccc_sustainability1
{
    public class ChartDataRetriever
    {
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
            chartData = "[80, 45, 133, 166, 84, 259, 266, 960, 219, 311, 67, 89]";
            chartLabels = "['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']";
        }
    }
}