using Microsoft.Reporting.WebForms;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

    public partial class report_test : System.Web.UI.Page
    {
    protected void Page_Load(object sender, EventArgs e)
    {
        string[] str2 = null;
        str2 = Request.Path.Split('/');
        Console.WriteLine(str2);

        HttpCookie cookie = new HttpCookie("test_cookie");    //定義cookie對象以及名為Info的項
        HttpCookie cookie2 = new HttpCookie("report_title");    //定義cookie對象以及名為Info的項
        cookie.Value = str2[2];
        cookie2.Value = str2[3];
        //Console.WriteLine(cookie);
        Response.Cookies.Add(cookie);
        Response.Cookies.Add(cookie2);
        if (!IsPostBack)
        {
            string RPP = str2[2];
            string RPP2 = str2[3];
            ReportParameter RP1 = new ReportParameter("title", RPP);
            ReportParameter RP2 = new ReportParameter("date", RPP2);
            ReportViewer1.LocalReport.SetParameters(new ReportParameter[] { RP1, RP2 });
            this.ReportViewer1.LocalReport.Refresh();//重整
        }
        this.ReportViewer1.LocalReport.Refresh();//重整    
    }
    }