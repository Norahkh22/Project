<%@ Page Title="" Language="C#" MasterPageFile="~/Before Login/main.Master" AutoEventWireup="true" CodeBehind="Services.aspx.cs" Inherits="Project.Before_Login.Services" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%; margin: 30px auto; border-spacing: 20px; border-collapse: separate;">
    <tr>
        <asp:Repeater ID="rptServices" runat="server" OnItemDataBound="rptServices_ItemDataBound">
            <ItemTemplate>
                <td style="width: 25%; vertical-align: top;">
                    
                    <div style="background-color: #B68D71; padding: 10px; border: 1px solid #4A3628;">
                        
                        <asp:Image ID="imgService" runat="server" style="width: 100%; height: 200px; object-fit: cover; display: block;" />
                        
                        <div style="padding: 15px; text-align: center;">
                            <h3 style="color: #4A3628; font-family: Arial; font-size: 15px; margin: 10px 0;">
                                <asp:Label ID="lblName" runat="server"></asp:Label>
                            </h3>
                            
                            <p style="color: #333; font-size: 13px; min-height: 50px;">
                                <asp:Label ID="lblDescription" runat="server"></asp:Label>
                            </p>
                            
                            <div style="background-color: #E6C7A3; color: #4A3628; padding: 5px; margin: 5px auto; width: 50%; font-weight: bold; border: 1px solid #4A3628;">
                                <asp:Label ID="lblDuration" runat="server"></asp:Label>
                            </div>
                            
                            <div style="background-color: #E6C7A3; color: #4A3628; padding: 5px; margin: 5px auto 20px auto; width: 50%; font-weight: bold; border: 1px solid #4A3628;">
                                <asp:Label ID="lblPrice" runat="server"></asp:Label> SAR
                            </div>
                            
                            <asp:HyperLink ID="hlBook" runat="server" Text="BOOK NOW" 
                                BackColor="#E6C7A3" ForeColor="#4A3628" Font-Bold="true" 
                                style="display: block; width: 70%; margin: 0 auto; padding: 10px; text-decoration: none; border: 1px solid #4A3628;" />
                        </div>
                    </div>

                </td>
            </ItemTemplate>
        </asp:Repeater>
    </tr>
</table>
    </asp:Content>
