<%@ Page Title="" Language="C#" MasterPageFile="~/User/User1.Master" AutoEventWireup="true" CodeBehind="reservation.aspx.cs" Inherits="Project.User.reservation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .main-container {
            max-width: 1100px !important;
            width: 100% !important;
            margin: 40px auto !important;
            padding: 0 20px !important;
            box-sizing: border-box !important;
            text-align: center !important;
            
            /* التعديل هنا: استخدام Flexbox لوضع العناصر بجانب بعضها */
            display: flex !important;
            justify-content: space-between !important;
            align-items: flex-start !important;
            gap: 24px !important;
        }

        .card {
            background: #E6C7A3!important;
            padding: 35px !important;
            width: 48% !important; /* عرض 48% لكل حاوية لتأخذ مساحة مناسبة */
            color:white! important;
            box-sizing: border-box !important;
            text-align: left !important;
        }

        .card h2 {
            font-size: 26px !important;
            margin-bottom: 25px !important;
            color: #fff !important;
            font-weight: 400 !important;
        }

        .calendar-style {
            width: 100% !important;
            border: none !important;
            background: transparent !important;
            color: white !important;
            font-size: 14px !important;
        }

        .calendar-style th {
            padding-bottom: 12px !important;
            color: #d1c7bd !important;
            font-weight: normal !important;
        }

        .calendar-style td {
            padding: 10px 0 !important;
            text-align: center !important;
        }

        .calendar-style a {
            color: #fff !important;
            text-decoration: none !important;
        }

        .calendar-style .selected-day {
            background: rgba(200, 160, 130, 0.6) !important;
            padding: 6px 12px !important;
        }

        .time-slots {
            display: flex !important;
            flex-direction: column !important;
            gap: 16px !important;
        }

        .time-btn {
            background: rgba(80, 60, 50, 0.6) !important;
            border: 1px solid rgba(255, 255, 255, 0.1) !important;
            color: #fff !important;
            padding: 16px 24px !important;
            font-size: 16px !important;
            text-align: left !important;
            cursor: pointer !important;
            
            width: 100% !important;
            box-sizing: border-box !important;
        }

        .time-btn:hover {
            background: rgba(120, 90, 75, 0.7) !important;
        }

        .time-btn.selected {
            background: rgba(180, 140, 110, 0.5) !important;
            border: 1px solid rgba(255, 255, 255, 0.4) !important;
            box-shadow: 0 0 10px rgba(255, 255, 255, 0.2) !important;
        }

        .confirm-wrapper {
            max-width: 1100px !important;
            margin: 0 auto !important;
            padding: 0 40px !important;
            display: flex !important;
            justify-content: flex-end !important;
            margin-top: 20px !important;
        }

        .btn-confirm {
            background: rgba(180, 140, 110, 0.4) !important;
            border: 1px solid rgba(255, 255, 255, 0.3) !important;
            color: #fff !important;
            padding: 14px 50px !important;
            font-size: 16px !important;
            cursor: pointer !important;
        }

        .btn-confirm:hover {
            background: rgba(180, 140, 110, 0.7) !important;
        }

        @media (max-width: 768px) {
            .main-container {
                flex-direction: column !important; /* لتصبح الحاويات تحت بعضها في الشاشات الصغيرة */
            }
            .card {
                width: 100% !important;
                margin-bottom: 20px !important;
            }
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main class="main-container">
        <section class="card">
            <h2>Date</h2>
            <asp:Calendar ID="calServiceDate" runat="server" CssClass="calendar-style" 
                DayNameFormat="Shortest" NextMonthText="&gt;" PrevMonthText="&lt;">
                <SelectedDayStyle CssClass="selected-day" />
            </asp:Calendar>
        </section>

        <section class="card">
            <h2>Time</h2>
            <div class="time-slots">
                <asp:Button ID="btnTime1" runat="server" Text="7:00 pm" CssClass="time-btn" />
                <asp:Button ID="btnTime2" runat="server" Text="8:00 pm" CssClass="time-btn" />
                <asp:Button ID="btnTime3" runat="server" Text="9:00 pm" CssClass="time-btn selected" />
                <asp:Button ID="btnTime4" runat="server" Text="10:00 pm" CssClass="time-btn" />
            </div>
        </section>
    </main>

    <div class="confirm-wrapper">
        <asp:Button ID="btnConfirm" runat="server" Text="Confirm" CssClass="btn-confirm" OnClick="btnConfirm_Click" />
    </div>
</asp:Content>