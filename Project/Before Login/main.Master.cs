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

            linkHome.Font.Bold = false;
            linkAbout.Font.Bold = false;
            linkServices.Font.Bold = false;

            if (currentPage == "home.aspx" || string.IsNullOrEmpty(currentPage) || currentPage == "default.aspx")
            {
                linkHome.Font.Bold = true;
            }
            else if (currentPage.Contains("about") && currentPage.Contains("us"))
            {
                linkAbout.Font.Bold = true;
            }
            else if (currentPage.Contains("services"))
            {
                linkServices.Font.Bold = true;
            }

        }
    }
}