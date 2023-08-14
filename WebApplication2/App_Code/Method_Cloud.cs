using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;

/// <summary>
/// Method_Fish 的摘要描述
/// </summary>
public class Method_Cloud
{
    string web_sql = WebConfigurationManager.ConnectionStrings["EMS_DATA"].ConnectionString;
    SqlConnection conn;
    public Method_Cloud()
    {
        conn = new SqlConnection(web_sql);
    }

}