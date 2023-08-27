<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication2.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        帳號:<asp:TextBox runat="server"  ID="txtUserID"/><br />
        <asp:Button Text="登入" ID="btnLogin" runat="server" OnClick="btnLogin_Click" />

</asp:Content>
