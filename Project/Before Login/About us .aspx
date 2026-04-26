<%@ Page Title="" Language="C#" MasterPageFile="~/Before Login/main.Master" AutoEventWireup="true" CodeBehind="About us .aspx.cs" Inherits="Project.Before_Login.About_us" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            height: 59px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 750px; margin: 40px auto; background-color: #ccb293; padding: 40px; text-align: center; border: 2px solid #94714d;">
    <tr>
        <td style="font-size: 32px; font-weight: bold; padding-bottom: 20px; font-family: 'Times New Roman'; color: black;" class="auto-style3">
            Our Story
        </td>
    </tr>
    <tr>
        <td style="font-size: 20px; line-height: 1.8; font-family: 'Arial'; color:black;">
            Every journey to wellness begins with a single moment of pause. We created 
            this sanctuary with a simple vision: to offer a refined, peaceful escape where 
            you can truly unwind. <br /><br />
            Driven by a passion for genuine care, we’ve thoughtfully designed every detail 
            from the calming ambiance to our expert therapists to ensure your complete 
            comfort and privacy. Here, relaxation isn't just a service; it's a personalized 
            experience crafted entirely around you. <br />
            Step into tranquility, and let us take care of the rest.
        </td>
    </tr>
    <tr>
        <td>
            <asp:HyperLink ID="linkBook" runat="server" NavigateUrl="~/Before Login/home.aspx" 
                style="font-size: 24px; font-weight: bold; color: black; text-decoration: underline;" ForeColor="Black">
                Book Your Experience
            </asp:HyperLink>
        </td>
    </tr>
</table>
    <h2 style="color: white; font-style: italic; margin-left: 50px;">TO CONTACT</h2>
<table style="width: 100%; border-collapse: collapse; background-color: #ccb293;">
    <tr>
        <td style="padding: 10px; border-right: 1px solid #666; text-align: center;">
            <i class="fas fa-phone"></i> +966555127758
        </td>

        <td style="padding: 10px; border-right: 1px solid #666; text-align: center;">
            <i class="fab fa-instagram"></i> White_jasmine
        </td>

        <td style="padding: 10px; border-right: 1px solid #666; text-align: center;">
            <i class="fab fa-x-twitter"></i> White_jasmine
        </td>

        <td style="padding: 10px; border-right: 1px solid #666; text-align: center;">
            <i class="fas fa-location-dot"></i> Google.map
        </td>

        <td style="padding: 10px; text-align: center;">
            <i class="fas fa-envelope"></i> White_jasmine@gmail.com
        </td>
    </tr>
</table>
</asp:Content>
