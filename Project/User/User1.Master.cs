using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project.User
{
    public partial class Site2 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string currentPage = Request.AppRelativeCurrentExecutionFilePath;

            Response.Write(currentPage);

            if (currentPage.Contains("myaccountpage.aspx"))
            {
                linkMyAccount.Font.Bold = true;
            }
        }
    }
}