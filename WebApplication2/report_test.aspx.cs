using Microsoft.Reporting.WebForms;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace WebApplication2
{
    
    public partial class report_test : System.Web.UI.Page
    {
        private Microsoft.Reporting.WebForms.ReportViewer ReportViewer1;
        protected void Page_Load(object sender, EventArgs e)
        {
            string conn_string = @"Data Source=LAPTOP-LI1PKLM3;Initial Catalog=2M_Web_Data;Persist Security Info=True;User ID=sa;Password=teco11332202";
            string query = @"SELECT TOP (10) [id],[datatime],[EMS_name],[Running_Mode] FROM [2M_Web_Data].[dbo].[EMS]";
            SqlConnection conn = new SqlConnection(conn_string);
            SqlDataAdapter adptr = new SqlDataAdapter(query, conn);
            //adptr.Fill();
            ReportDataSource rds = new ReportDataSource("test","123456");
            this.ReportViewer1.LocalReport.DataSources.Clear();
            this.ReportViewer1.LocalReport.DataSources.Add(rds);
            this.ReportViewer1.LocalReport.Refresh();
        }
    }
}