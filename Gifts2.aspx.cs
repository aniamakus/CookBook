using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Gifts2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            Validate();
            if (IsValid)
            {
                displaySendedDataLabel.Text = "Przesłane dane:<br/>" +
                    String.Format("Nazwisko: {1}{0}E-mail:{2}{0}Telefon:{3}{0}Wiek:{4}{0}Data urodzenia:{5}{0} ",
                    "<br/>", surnameTextBox.Text, mailTextBox.Text, phoneTextBox.Text, ageTextBox.Text, compareTextBox.Text);
                displaySendedDataLabel.Visible = true;
            }
        }
    }
}