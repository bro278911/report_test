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
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <rsweb:ReportViewer ID="ReportViewer1" runat="server" Height="698px" Width="1376px">

            </rsweb:ReportViewer>
            <asp:ObjectDataSource runat="server" SelectMethod="GetData" TypeName="WebApplication2.EMS_DATATableAdapters.EMSTableAdapter" ID="ObjectDataSource1"></asp:ObjectDataSource>
            
            
            
            

        </div>
    </form>
</body>
</html>
