

<%@ Page Title="" Language="C#" MasterPageFile="~/User/User1.Master" AutoEventWireup="true" CodeBehind="Confirmation.aspx.cs" Inherits="Project.User.Confirmation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .confirmation-container {
            display: flex !important;
            justify-content: center !important;
            align-items: center !important;
            min-height: 70vh !important;
            margin: 40px auto !important;
            padding: 0 20px !important;
            box-sizing: border-box !important;
        }

        .confirmation-box {
            /* لون خلفية غير شفاف متناسق مع التصميم */
            background-color: #C19A6B !important; 
            /* زوايا حادة غير دائرية */
            border-radius: 0 !important; 
            padding: 60px 40px !important;
            width: 100% !important;
            max-width: 650px !important;
            text-align: center !important;
            color: #fff !important;
            box-shadow: 0 8px 24px rgba(0, 0, 0, 0.3) !important;
            box-sizing: border-box !important;
        }

        .confirmation-box h1 {
            font-size: 32px !important;
            margin-bottom: 30px !important;
            font-weight: 400 !important;
            color: #fff !important;
        }

        .meditation-icon {
            margin: 20px auto 30px !important;
            display: flex !important;
            justify-content: center !important;
        }

        .meditation-icon svg {
            width: 75px !important;
            height: 75px !important;
            fill: #fff !important;
        }

        .confirmation-text {
            font-size: 20px !important;
            color: #fff !important;
            font-weight: 300 !important;
            opacity: 0.9 !important;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main class="confirmation-container">
        <div class="confirmation-box">
            <h1>Reservation Confirmed!</h1>
            
            <div class="meditation-icon">
                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                    <path d="M12 2c1.1 0 2 .9 2 2s-.9 2-2 2-2-.9-2-2 .9-2 2-2zm9 7h-6v12h-2v-6h-2v6H9V9H3V7h18v2z"/>
                </svg>
            </div>

            <div class="confirmation-text">
                We are waiting for you
            </div>
        </div>
    </main>
</asp:Content>