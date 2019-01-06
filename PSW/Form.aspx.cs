using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PSW
{
    public partial class Form : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                uploadedLabel.Visible = true;
                uploadedLabel.Text = "<p><h3>Przesłano następujące dane: </h3></p>" + "<p>Imię i nazwisko: " + inputName.Text + " " + inputSurname.Text + "</p>"
                    + "<p>E-mail: " + inputEmail.Text + "</p>" + "<p>Adres: " + inputStreet.Text + " " + inputPostcode.Text + " " + inputCity.Text + "</p>"
                    + "<p>Telefon: " + inputPhone.Text + "</p>";
            }

        }
    }
}