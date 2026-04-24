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
            linkHome.Font.Bold = false;
            linkServices.Font.Bold = false;
            linkAbout.Font.Bold = false;

            string activePage = Request.RawUrl.ToLower();

            if (activePage.Contains("login.aspx"))
            {
                linkHome.Font.Bold = true;
            }
            else if (activePage.Contains("services.aspx"))
            {
                linkServices.Font.Bold = true;
            }
            else if (activePage.Contains("aboutus.aspx"))
            {
                linkAbout.Font.Bold = true;
            }

        }
    }
}