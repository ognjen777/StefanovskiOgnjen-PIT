using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prijava
{
    public partial class izvestaj : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (PreviousPage != null)
                lblizvestaj.Text = PreviousPage.imeprez + " (" + PreviousPage.mail + "), rođen " + PreviousPage.god + ". godine, učenik "
         + PreviousPage.raz + ". razreda, uspešno je popunio obrazac za prijavu.";
        }
        protected void btn_btn2(object sender, EventArgs e)
        {
            Response.Redirect("~/prijava.aspx");
        }
    }
}