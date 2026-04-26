<%@ Page Title="" Language="C#" MasterPageFile="~/Before Login/main.Master" AutoEventWireup="true" CodeBehind="Login .aspx.cs" Inherits="Project.Before_Login.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            height: 30px;
        }
        .auto-style4 {
            height: 41px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<table style="width: 600px; margin: 40px auto; border-spacing: 0 20px; background-color: #94714d; padding: 20px; border: 1px solid #666;">    <tr>
        <td colspan="3" style="text-align: center;" class="auto-style3">

<asp:Label ID="Label2" runat="server" BackColor="#694E41" Font-Bold="True" Font-Names="Arial" Text="LOG IN" ></asp:Label>

        </td>
    </tr>

    <tr>
        <td style="vertical-align: middle; text-align: right; width: 150px;">
            <asp:Label ID="Label3" runat="server" Font-Names="Arial" Text="EMAIL"></asp:Label>
        </td>
        <td style="vertical-align: middle; width: 330px;">
            <asp:TextBox ID="txtEmail" runat="server" BackColor="#CCB293" Width="322px" BorderStyle="None"></asp:TextBox>
        </td>
        <td style="vertical-align: middle; text-align: left; white-space: nowrap;">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is Required" Font-Names="Arial" ForeColor="#B50000" Display="Dynamic" Font-Size="Medium"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="The email format is incorrect" ForeColor="#B50000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Font-Names="Arial" Font-Size="Medium"></asp:RegularExpressionValidator>
        </td>
    </tr>

    <tr>
        <td style="vertical-align: middle; text-align: right;">
            <asp:Label ID="Label4" runat="server" Font-Names="Arial" Text="PASSWORD"></asp:Label>
        </td>
        <td style="vertical-align: middle;">
            <asp:TextBox ID="txtPass" runat="server" BackColor="#CCB293" TextMode="Password" Width="322px" BorderStyle="None"></asp:TextBox>
        </td>
        <td style="vertical-align: middle; text-align: left;">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPass" Display="Dynamic" ErrorMessage="Incorrect password" Font-Names="Arial" ForeColor="#B50000" Font-Size="Medium"></asp:RequiredFieldValidator>
        </td>
    </tr>

    <tr>
        <td colspan="3" style="text-align: center; padding: 10px;" class="auto-style4">
            <asp:Button ID="Button1" runat="server" BackColor="#694E41" ForeColor="Black" Font-Bold="True" Text="LOG IN" BorderStyle="None" style="padding: 10px 30px; cursor: pointer;" Height="52px" Width="138px" Font-Names="Arial" />
        </td>
    </tr>

    <tr>
        <td colspan="3" style="text-align: center; padding-top: 30px;">
            <hr style="border: 0; border-top: 1px solid #666; margin-bottom: 20px;" />
            <div style="font-size: 25px; font-family: 'Times New Roman';">
                <span style="color: black;">You don't have an account? </span>
                <asp:HyperLink ID="linkRegister" runat="server" NavigateUrl="~/Before Login/Register.aspx" 
                    style="color: black; text-decoration: underline; ">
                    Register now
                </asp:HyperLink>
            </div>
        </td>
    </tr>
</table>
    <asp:Panel ID="Panel1" runat="server" BackColor="#CCB293" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Font-Names="Times New Roman" Width="230px" style="padding: 15px; text-align: center;">
        <asp:Label ID="Label5" runat="server" Text="FOR HELP :" Font-Bold="true"></asp:Label>
        <br />
        <asp:Label ID="Label6" runat="server" Text="+966557516659"></asp:Label>
    </asp:Panel>
</asp:Content>
