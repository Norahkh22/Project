using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data; // ضرورية عشان قراءة البيانات من الداتابيس لاحقاً

namespace Project.Before_Login
{
    public partial class Services : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            // هذا المكان بيكون مخصص لكود الاتصال بقاعدة البيانات (ADO.NET) متى ما جهزت
            // مثلاً:
            // SqlConnection conn = new SqlConnection("مسار قاعدة بياناتكم");
            // SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Services", conn);
            // DataTable dt = new DataTable();
            // da.Fill(dt);
            // rptServices.DataSource = dt;
            // rptServices.DataBind();
        }


        // هذا الحدث اللي بيربط تصميم الكرت بالبيانات
        protected void rptServices_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                DataRowView drv = (DataRowView)e.Item.DataItem;

                // ربط الأدوات اللي في صفحة التصميم
                Image imgService = (Image)e.Item.FindControl("imgService");
                Label lblName = (Label)e.Item.FindControl("lblName");
                Label lblDescription = (Label)e.Item.FindControl("lblDescription");
                Label lblDuration = (Label)e.Item.FindControl("lblDuration");
                Label lblPrice = (Label)e.Item.FindControl("lblPrice");
                HyperLink hlBook = (HyperLink)e.Item.FindControl("hlBook");

                // سحب البيانات من الأعمدة (الأسماء مطابقة للـ ER)
                imgService.ImageUrl = drv["ServicePhoto"].ToString();
                lblName.Text = drv["ServiceName"].ToString();
                lblDescription.Text = drv["Description"].ToString();
                lblDuration.Text = drv["Duration"].ToString();
                lblPrice.Text = drv["Price"].ToString();

                // توجيه زر الحجز لصفحة الحجز مع رقم الخدمة
                hlBook.NavigateUrl = "Booking.aspx?Service=" + drv["ServiceID"].ToString();
            }
        }
    }
}