using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab1_grupaV_IT
{
    public partial class UspeshnoGlasanje : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                if (Session["Email"] !=null)
                {
                    email.Text = (string)(Session["Email"]);
                }
            }
        }
    }
}