<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="report_test.aspx.cs"%>

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
            <rsweb:ReportViewer ID="ReportViewer1" runat="server" Height="900px" Width="100%" BackColor="" InternalBorderStyle="Solid" InternalBorderColor="204, 204, 204" InternalBorderWidth="1px" ToolBarItemBorderStyle="Solid" ToolbarDividerColor="" ToolBarItemBorderColor="" ToolBarItemBorderWidth="1px" ToolBarItemPressedBorderStyle="Solid" ToolBarItemPressedBorderColor="51, 102, 153" ToolBarItemPressedBorderWidth="1px" ToolbarHoverBackgroundColor="" ToolBarItemHoverBackColor="" HighlightBackgroundColor="" ToolBarItemPressedHoverBackColor="153, 187, 226" SplitterBackColor="" ToolbarForegroundDisabledColor="" LinkDisabledColor="" ToolbarForegroundColor="" LinkActiveColor="" ToolbarHoverForegroundColor="" LinkActiveHoverColor="" PrimaryButtonBackgroundColor="" PrimaryButtonForegroundColor="" PrimaryButtonHoverBackgroundColor="" PrimaryButtonHoverForegroundColor="" SecondaryButtonBackgroundColor="" SecondaryButtonForegroundColor="" SecondaryButtonHoverBackgroundColor="" SecondaryButtonHoverForegroundColor="" ClientIDMode="AutoID">
                <LocalReport ReportPath="Report2.rdlc">
                    <DataSources>
                        <rsweb:ReportDataSource Name="MyDataSet" DataSourceId="Feed_Reportview" />
                    </DataSources>
                </LocalReport>
            </rsweb:ReportViewer>
            <asp:ObjectDataSource runat="server" ID="Feed_Reportview" SelectMethod="Get" TypeName="Feed_Reportview">
                <SelectParameters>
                    <asp:CookieParameter CookieName="test_data" Name="str1" Type="String" />
                </SelectParameters>
            </asp:ObjectDataSource>
        </div>
    </form>
</body>
</html>
