<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="Mser.aspx.cs" Inherits="Project.Admin.Mser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
    /* الصندوق البني الكبير (الخلفية الشفافة) */
    .my-brown-box {
        background-color: rgba(148, 113, 77, 0.7); /* لون #94714d مع شفافية */
        border-radius: 30px; 
        padding: 40px;
        width: 85%;
        margin: 30px auto;
        text-align: center;
        box-shadow: 0 15px 35px rgba(0,0,0,0.3);
    }

    /* الليبل (Appointment Management) - شكل الكبسولة */
    .appointment-title {
        background-color: #94714d; /* اللون اللي طلبتيه */
        color: #000000;
        padding: 10px 35px;
        border-radius: 25px;
        display: inline-block;
        font-weight: bold;
        font-size: 18px;
        margin-bottom: 30px;
        box-shadow: 0 4px 10px rgba(0,0,0,0.2);
    }

    /* لون الجدول الأساسي (البيج الفاتح من كانفا) */
    .custom-grid {
        background-color: #e5d1b8 !important; /* لون البيج الفاتح الخلفية */
        border-radius: 15px;
        overflow: hidden;
        width: 100% !important;
        border: none !important;
    }

    /* تنسيق رؤوس الجدول (User, Service...) */
    .custom-grid th {
        background-color: #d1b89d !important; /* لون أغمق قليلاً للرأس */
        color: #333;
        padding: 15px;
    }

    /* أزرار الأكشن (Approve / Cancel) بجانب بعضها */
    .grid-btn {
        background-color: transparent !important;
        color: #94714d !important;
        border: 1px solid #94714d !important;
        padding: 3px 8px;
        border-radius: 12px;
        font-size: 12px;
        cursor: pointer;
        transition: 0.3s;
        display: inline-block !important; /* يضمن بقاءهم بجانب بعض */
        margin: 0 3px;
    }

    .grid-btn:hover {
        background-color: #94714d !important;
        color: white !important;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    

<div style="text-align: center;">
    <asp:Label ID="Label3" runat="server" Text="Appointment Management" CssClass="appointment-title"></asp:Label>
</div>    
       <asp:Panel ID="Panel1" runat="server" CssClass="my-brown-box">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="10" Height="206px" HorizontalAlign="Center" Width="438px" CellSpacing="2" style="margin-right: 96px" ShowHeaderWhenEmpty="True">
            <Columns>
                <asp:BoundField HeaderText="User" />
                <asp:BoundField HeaderText="Service" />
                <asp:BoundField HeaderText="Date" />
                <asp:BoundField HeaderText="Time" />
                <asp:TemplateField HeaderText="Action">
                    <ItemTemplate>
                        <asp:Button ID="Button3" runat="server" CssClass="grid-btn" Text="approve" />
                        <asp:Button ID="Button4" runat="server" CssClass="grid-btn" Text="cancel" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </asp:Panel>
    <p>
        &nbsp;</p>
</asp:Content>
