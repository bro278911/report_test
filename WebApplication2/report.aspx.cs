using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Reporting.WebForms;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;

public partial class report : System.Web.UI.Page
{
    #region 報表載入
    protected void Page_Load(object sender, EventArgs e)
    {
        string str1 = "";
        string[] str2 = null;
        str2 = Request.PathInfo.Split('/');
        foreach (string i in str2)
        {
            str1 = i.ToString();
        }
        HttpCookie cookie = new HttpCookie("EMS_DATA");    //定義cookie對象以及名為Info的項
        cookie.Value = str1;
        DateTime dtNow = DateTime.Now;
        TimeSpan tsMinute = new TimeSpan(0, 0, 3, 0);
        cookie.Expires = dtNow + tsMinute;
        Response.Cookies.Add(cookie);
        if (!IsPostBack)
        {
            string RPP = str1;
            ReportParameter RP1 = new ReportParameter("Feed_Time", RPP);
            EMS_DATA_reportviewer.LocalReport.SetParameters(new ReportParameter[] { RP1 });
            this.EMS_DATA_reportviewer.LocalReport.Refresh();//重整
        }
        this.EMS_DATA_reportviewer.LocalReport.Refresh();//重整      
    }
    #endregion
}