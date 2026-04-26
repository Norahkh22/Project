<%@ Page Title="" Language="C#" MasterPageFile="~/Before Login/main.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="Project.Before_Login.welcome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
        }
        .auto-style4 {
            height: 44px;
            width: 331px;
        }
        .auto-style6 {
            width: 331px;
            height: 59px;
        }
        .auto-style7 {
            width: 535px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1" style="margin-top: 80px; width: 100%;">
    <tr>
            <td class="auto-style7" style="padding-top: 50px;" rowspan="2">
                <asp:Label ID="Label2" runat="server" ForeColor="#FFF9F3" Text="Where Relaxation Meets Luxury" Font-Names="Georgia" Font-Size="XX-Large"></asp:Label>
            </td>
            <td class="auto-style6">
<asp:HyperLink ID="linklogin" runat="server" 
    style="display: block; width: 220px; text-align: center; padding: 15px 0px; background-color: #ccb293; border: 1px solid black; color: black; text-decoration: none; font-family: 'Times New Roman', Times, serif; font-weight: bold; margin-bottom: 20px; margin-right: 20%; margin-left: auto;" 
    Font-Names="Times New Roman" NavigateUrl="~/Before Login/Login .aspx">LOG IN</asp:HyperLink>&nbsp;
                </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:HyperLink ID="linkregister" runat="server" 
    style="display: block; width: 220px; text-align: center; padding: 15px 0px; background-color: #ccb293; border: 1px solid black; color: black; text-decoration: none; font-family: 'Times New Roman', Times, serif; font-weight: bold; margin-bottom: 20px; margin-right: 20%; margin-left: auto;" 
    Font-Names="Times New Roman" NavigateUrl="~/Before Login/Register.aspx">REGISTER</asp:HyperLink>
            </td>
        </tr>
        <tr>
           <td class="auto-style3" colspan="2" style="padding-top: 200px; vertical-align: bottom;">
    <asp:Panel ID="Panel1" runat="server" BackColor="#CCB293" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Font-Names="Times New Roman" HorizontalAlign="Left" Width="230px" 
        style="padding: 15px; text-align: center; display: block;">
        
        <asp:Label ID="Label3" runat="server" Text="FOR HELP :" Font-Bold="true"></asp:Label>
        <br />
        <asp:Label ID="Label4" runat="server" Text="+966557516659"></asp:Label>
    </asp:Panel>
</td>
        </tr>
    </table>
</asp:Content>
