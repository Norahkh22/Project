using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project
{
    public partial class Site2 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string currentPage = System.IO.Path.GetFileName(Request.Url.AbsolutePath).ToLower();

            // 2. تصفير الـ Bold لجميع الروابط (عشان ما يبقى أحد بولد بالخطأ)
            linkHome.Font.Bold = false;
            linkAbout.Font.Bold = false;
            linkServices.Font.Bold = false;

            // 3. تفعيل الـ Bold للرابط الذي يطابق الصفحة الحالية
            if (currentPage == "home.aspx" || currentPage == "")
            {
                linkHome.Font.Bold = true;
            }
            else if (currentPage == "about.aspx")
            {
                linkAbout.Font.Bold = true;
            }
            else if (currentPage == "services.aspx")
            {
                linkServices.Font.Bold = true;
            }

        }
    }
}