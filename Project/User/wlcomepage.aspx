<%@ Page Title="" Language="C#" MasterPageFile="~/User/User1.Master" AutoEventWireup="true" CodeBehind="wlcomepage.aspx.cs" Inherits="Project.wlcomepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .welcomebox {
             width: 500px;
    margin: 120px auto; /* يخليه بالنص */
    padding: 30px;

    background: rgba(139, 94, 60, 0.6); /* بني شفاف */
    border-radius: 20px;

    text-align: center;
    color: white;
        }
        .welcome-box h1 {
    font-size: 40px;
    margin-bottom: 10px;
}

.welcome-box p {
    font-size: 28px;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" BorderColor="#745234" CssClass="welcomebox" HorizontalAlign="Center" Width="500px">
        <h1>
            <asp:Label ID="Label2" runat="server" ForeColor="#ECD8B0" style="font-size: xx-large" Text="Welcom!"></asp:Label>
            &nbsp;</h1>
    </asp:Panel>
</asp:Content>
