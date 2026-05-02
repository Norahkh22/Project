using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project.User
{
    public partial class reservation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // تحديد التاريخ الحالي كقيمة افتراضية عند التحميل
                calServiceDate.SelectedDate = DateTime.Today;
            }
        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            string selectedDate = calServiceDate.SelectedDate.ToShortDateString();
            string selectedTime = "";

            if (btnTime1.CssClass.Contains("selected"))
                selectedTime = btnTime1.Text;
            else if (btnTime2.CssClass.Contains("selected"))
                selectedTime = btnTime2.Text;
            else if (btnTime3.CssClass.Contains("selected"))
                selectedTime = btnTime3.Text;
            else if (btnTime4.CssClass.Contains("selected"))
                selectedTime = btnTime4.Text;

            // رسالة تأكيد للعملية
            ClientScript.RegisterStartupScript(this.GetType(), "alert",
                $"alert('تم الحجز بنجاح! التاريخ: {selectedDate} | الوقت: {selectedTime}');", true);
        }
    }
}