using Microsoft.Reporting.Map.WebForms.BingMaps;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
/// <summary>
/// Feed_Reportview 的摘要描述
/// </summary>
public class Feed_Reportview
{
    public Feed_Reportview()
    {
        //
        // TODO: 在這裡新增建構函式邏輯
        //
    }
    private const String COL_1 = "id";
    private const String COL_2 = "datatime";
    private const String COL_3 = "EMS_name";
    private const String COL_4 = "Running_Mode";

    public DataTable Get(string str1)//
    {
        SqlCommand cmd = new SqlCommand(@"SELECT TOP (10) [id],[datatime],[EMS_name],[Running_Mode] FROM [2M_Web_Data].[dbo].[EMS]");
        DataTable Cloud_EWR_items = EMS_DATA.SqlHelper.cmdTable(cmd);

        DataTable dt = new DataTable();
        dt.Columns.Add(new DataColumn(COL_1));
        dt.Columns.Add(new DataColumn(COL_2));
        dt.Columns.Add(new DataColumn(COL_3));
        dt.Columns.Add(new DataColumn(COL_4));
        /**開始加入資料囉**/
        for(int i = 0; i < Cloud_EWR_items.Rows.Count; i++)
        {
            DataRow dr = dt.NewRow();
            dr[COL_1] = Cloud_EWR_items.Rows[i][0];
            dr[COL_2] = Cloud_EWR_items.Rows[i][1];
            dr[COL_3] = Cloud_EWR_items.Rows[i][2];
            dr[COL_4] = Cloud_EWR_items.Rows[i][3];

            dt.Rows.Add(dr);
        }


        return dt;
    }
}

