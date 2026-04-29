<%@ Page Title="" Language="C#" MasterPageFile="~/Before Login/main.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Project.Before_Login.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            height: 44px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"><table style="width: 650px; margin: 40px auto; border-spacing: 0 15px; background-color: #94714d; padding: 20px; border: 1px solid #000;">
    <tr>
        <td colspan="3" style="text-align: center;">
            <asp:Label ID="lblRegHeader" runat="server" BackColor="#694E41" ForeColor="Black" Font-Bold="True" Font-Names="Arial" Text="Register"></asp:Label>
        </td>
    </tr>

    <tr>
        <td style="vertical-align: middle; text-align: right; width: 25%;">
            <asp:Label ID="lblFName" runat="server" Font-Names="Arial" Text="NAME"></asp:Label>
        </td>
        <td style="vertical-align: middle; width: 40%;">
            <asp:TextBox ID="txtFName" runat="server" BackColor="#CCB293" Width="250px" BorderStyle="None"></asp:TextBox>
        </td>
        <td style="vertical-align: middle; width: 35%;">
            <asp:RequiredFieldValidator ID="rfvFName" runat="server" ControlToValidate="txtFName" ErrorMessage="Name is required" ForeColor="#B50000" Display="Dynamic" Font-Names="Arial"></asp:RequiredFieldValidator>
        </td>
    </tr>

    <tr>
        <td style="vertical-align: middle; text-align: right; direction: rtl;" class="auto-style3">
            <asp:Label ID="Label2" runat="server" Font-Names="Arial" Text="PHONE"></asp:Label>
        </td>
        <td class="auto-style3">
            <asp:TextBox ID="txtPhone" runat="server" BackColor="#CCB293" Width="250px" BorderStyle="None" placeholder="05xxxxxxxx"></asp:TextBox>
        </td>
        <td class="auto-style3">
            <asp:RequiredFieldValidator ID="rfvPhone" runat="server" ControlToValidate="txtPhone" ErrorMessage="Required" ForeColor="#B50000" Display="Dynamic" Font-Names="Arial"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revPhone" runat="server" 
    ControlToValidate="txtPhone" 
    ErrorMessage="05xxxxxxxx" 
    ValidationExpression="^05\d{8}$" 
    ForeColor="#B50000" Display="Dynamic"></asp:RegularExpressionValidator>
        </td>
    </tr>

    <tr>
        <td style="vertical-align: middle; text-align: right;">
            <asp:Label ID="lblEmailReg" runat="server" Font-Names="Arial" Text="EMAIL"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtEmailReg" runat="server" BackColor="#CCB293" Width="250px" BorderStyle="None"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="rfvEmailReg" runat="server" ControlToValidate="txtEmailReg" ErrorMessage="Email required" ForeColor="#B50000" Display="Dynamic" Font-Names="Arial"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmailReg" ErrorMessage="Invalid Format" ForeColor="#B50000" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Font-Names="Arial"></asp:RegularExpressionValidator>
        </td>
    </tr>

    <tr>
        <td style="vertical-align: middle; text-align: right;">
            <asp:Label ID="lblPassReg" runat="server" Font-Names="Arial" Text="PASSWORD"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtPassReg" runat="server" BackColor="#CCB293" TextMode="Password" Width="250px" BorderStyle="None"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="rfvPassReg" runat="server" ControlToValidate="txtPassReg" ErrorMessage="Password required" ForeColor="#B50000" Display="Dynamic" Font-Names="Arial"></asp:RequiredFieldValidator>
        </td>
    </tr>

    <tr>
        <td style="vertical-align: middle; text-align: right;">
            <asp:Label ID="lblConfirm" runat="server" Font-Names="Arial" Text="CONFIRM"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtConfirm" runat="server" BackColor="#CCB293" TextMode="Password" Width="250px" BorderStyle="None"></asp:TextBox>
        </td>
        <td style="vertical-align: middle; text-align: left;">
    <asp:RequiredFieldValidator ID="rfvConfirm" runat="server" 
        ControlToValidate="txtConfirm" 
        ErrorMessage="Please confirm your password" 
        ForeColor="#B50000" Display="Dynamic" Font-Names="Arial">
    </asp:RequiredFieldValidator>

    <asp:CompareValidator ID="cvPass" runat="server" 
        ControlToValidate="txtConfirm" 
        ControlToCompare="txtPassReg" 
        ErrorMessage="Passwords do not match" 
        ForeColor="#B50000" Display="Dynamic" Font-Names="Arial">
    </asp:CompareValidator>
</td>
    </tr>

    <tr>
        <td colspan="3" style="text-align: center; padding-top: 20px;">
            <asp:Button ID="btnRegister" runat="server" BackColor="#694E41" ForeColor="Black" Font-Bold="True" Text="SIGN UP" BorderStyle="None" style="padding: 10px 40px;" />
        </td>
    </tr>
</table>
    <div style="margin-top: 30px; text-align: left;">
    <asp:Panel ID="PanelHelp" runat="server" BackColor="#CCB293" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Font-Names="Times New Roman" Width="230px" 
        style="padding: 15px; text-align: center;">
        
        <asp:Label ID="lblHelpTitle" runat="server" Text="FOR HELP :" Font-Bold="true"></asp:Label>
        <br />
        <asp:Label ID="lblPhone" runat="server" Text="+966557516659"></asp:Label>
    </asp:Panel>
</div>
</asp:Content>

