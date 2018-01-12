using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Styles_OrderConfirmation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        summaryLabel.Text = "Dziękujemy za złożenie zamówienia! Wartść Twojego zamowienia to " +
            (Session["Order"] == null ? "0" : ((Order)Session["Order"]).inclusivePrice().ToString()) + " zł.";
        Session.Abandon();
    }


    protected void orderButton_Click(object sender, EventArgs e)
    {
    }
}