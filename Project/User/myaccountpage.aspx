<%@ Page Title="" Language="C#" MasterPageFile="~/User/User1.Master" AutoEventWireup="true" CodeBehind="myaccountpage.aspx.cs" Inherits="Project.myaccountpage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
       <style>

    .box {
        width: 500px;
        margin: 120px auto;
        padding: 30px;
        background: rgba(139, 94, 60, 0.6);
        border-radius: 20px;
        text-align: center;
    }

    .title {
        font-size: 36px;
        font-weight: bold;
        color: white;
        margin-bottom: 30px;
    }

    .btn {
        display: block;
        width: 250px;
        margin: 10px auto;
        padding: 12px;
        background-color: #8B5E3C;
        color: white;
        border: none;
        border-radius: 10px;
        font-size: 16px;
        cursor: pointer;
    }

    </style>
    <div class="box">

    <asp:Label ID="Label1" runat="server" Text="My Account" CssClass="title"></asp:Label>

    <asp:HyperLink ID="linkApp" runat="server" 
        NavigateUrl="~/User/appointments.aspx" 
        CssClass="btn">
        My Appointment
    </asp:HyperLink>

    <asp:HyperLink ID="linkUpdate" runat="server" 
        NavigateUrl="~/User/updateaccount.aspx" 
        CssClass="btn">
        Update My Account
    </asp:HyperLink>

</div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
