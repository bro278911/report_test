<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="report.aspx.cs" Inherits="WebApplication2.report" %>

<%@ Register TagPrefix="rsweb" Namespace="Microsoft.Reporting.WebForms" Assembly="Microsoft.ReportViewer.WebForms" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>

<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager runat="server"></asp:ScriptManager>
            <rsweb:ReportViewer ID="EMS_DATA_reportviewer" runat="server"  Height="698px" Width="1376px">
                <LocalReport ReportPath="Report1.rdlc">
                    <DataSources>
                        <rsweb:ReportDataSource DataSourceId="EMS_DATA" Name="EMS_DATA" />
                    </DataSources>
                </LocalReport>
            </rsweb:ReportViewer>
            <asp:ObjectDataSource ID="EMS_DATA" runat="server" SelectMethod="Get" TypeName="Feed_Reportview">
                <SelectParameters>
                    <asp:CookieParameter CookieName="EMS_DATA" Name="str1" Type="String" />
                </SelectParameters>
            </asp:ObjectDataSource>

        </div>
    </form>
</body>
</html>
