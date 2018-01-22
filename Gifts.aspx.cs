using System;

public partial class Gifts : System.Web.UI.Page
{
    
   
    protected void Page_Load(object sender, EventArgs e)
    {
        Button2.Click += new EventHandler(this.OpenExtraFields);
        if (IsPostBack)
        {
            Validate();
            if (IsValid)
            {
                FillOutputLabel();
            }
        }
    }

    private void FillOutputLabel()
    {
       
        string name = Name.Text;
        string lastName = LastNameInput.Text;
        string email = EmailLabel.Text;
        string tel = TelLabel.Text;
        string age = Age.Text;
        string birthPlace = BirthPlace.Text;
        string livePlace = LivePlace.Text;

        outputLabel.Text = " Dziekujemy za wypełnienie formularza " + name + " " + lastName+". " ;
        outputLabel.Text += "Skontaktujemy sie z tobą na adres: " + email + " lub telefonicznie na nr: " + tel;
        outputLabel.Visible = true;
    }

    protected void Age_TextChanged(object sender, EventArgs e)
    {

    }
    protected void OpenExtraFields(object sender, EventArgs e)
    {
        BirthPlace.Visible = true;
        LivePlace.Visible = true;
    }
    protected void CleanFields(object sender, EventArgs e)
    {
        Name.Text = "";
        LastNameInput.Text = "";
        EmailLabel.Text = "";
        TelLabel.Text = "";
        Age.Text = "";
        BirthPlace.Text = "";
        LivePlace.Text = "";
        outputLabel.Text = "";
    }
   


}