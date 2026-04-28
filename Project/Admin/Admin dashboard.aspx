<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="Admin dashboard.aspx.cs" Inherits="Project.Admin.Admin_dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%; border-spacing: 30px; border-collapse: separate;">
        <tr>
            <td style="width: 33.33%; background-color: #A67B5B; border-radius: 20px; height: 400px; text-align: center; vertical-align: middle; box-shadow: 2px 2px 5px rgba(0,0,0,0.2);">
                <asp:HyperLink ID="hlManageUsers" runat="server" NavigateUrl="~/Admin/Muser.aspx"
                    style="background-color: #E6C7A3; color: black; padding: 15px 20px; text-decoration: none; font-size: 18px; display: inline-block; width: 60%;" Font-Names="Georgia">
                    Manage users
                </asp:HyperLink>
            </td>

            <td style="width: 33.33%; background-color: #A67B5B; border-radius: 20px; height: 400px; text-align: center; vertical-align: middle; box-shadow: 2px 2px 5px rgba(0,0,0,0.2);">
                <asp:HyperLink ID="hlManageAppts" runat="server" NavigateUrl="~/Admin/Mapp.aspx"
                    style="background-color: #E6C7A3; color: black; padding: 15px 20px; text-decoration: none;  font-size: 18px; display: inline-block; width: 60%; line-height: 1.5;" Font-Names="Georgia">
                    Manage<br />appointment
                </asp:HyperLink>
            </td>

            <td style="width: 33.33%; background-color: #A67B5B; border-radius: 20px; height: 400px; text-align: center; vertical-align: middle; box-shadow: 2px 2px 5px rgba(0,0,0,0.2);">
                <asp:HyperLink ID="hlManageServices" runat="server" NavigateUrl="~/Admin/Mser.aspx"
                    style="background-color: #E6C7A3; color: black; padding: 15px 20px; text-decoration: none; font-size: 18px; display: inline-block; width: 60%;" Font-Names="Georgia">
                    Manage services
                </asp:HyperLink>
            </td>
        </tr>
    </table>
    
</div>
</asp:Content>
