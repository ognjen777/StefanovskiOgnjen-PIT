using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prijava
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        public string imeprez
        {
            get { return tbimeprezime.Text; }
        }
        public string mail
        {
            get { return tbemail.Text; }
        }
        public string god
        {
            get { return tbgodina.Text; }
        }
        public string raz
        {
            get { return razred.Text; }
        }


        protected void btnprijava_Click(object sender, EventArgs e)
        {
            if (tbimeprezimevalidator.IsValid &&
                tbemailvalidator.IsValid &&
                emailformatvalidator.IsValid &&
                potvrdavalidator.IsValid &&
                potvrdacomparevalidator.IsValid &&
                godinavalidator.IsValid &&
                godinaopsegvalidator.IsValid &&
                razredvalidator.IsValid)
            {
                btnprijava.PostBackUrl = "~/izvestaj.aspx";
                lbl.Text = String.Empty;
            }

            else
                lbl.Text = "Niste uspešno popunili prijavu";
        }
        
    }
}