using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab1_grupaV_IT
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Najava_Click(object sender, EventArgs e)
        {
            string email_input = Email.Text;
            if (Session["Email"] == null)
            {
                Session["Email"] = email_input;
            }
            Response.Redirect("Glasaj.aspx");
        }
    }
}