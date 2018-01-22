using System;
using System.Data.SqlClient;
using System.Web.Security;

public partial class LogIn : System.Web.UI.Page
{ 
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void Validate(object sender, EventArgs e)
    {
        var name = LoginUser.UserName;
        var pass = LoginUser.Password;
        var connectionString = @"Server=localhost\SQLEXPRESS;Database=CookBook;Trusted_Connection=True;";
        SqlConnection con = new SqlConnection(connectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("Select Id from [CookBook].[dbo].[User] where UserName=@name and Password=@pass", con);
        cmd.Parameters.AddWithValue("@name", name);
        cmd.Parameters.AddWithValue("@pass", pass);

        using (SqlDataReader reader = cmd.ExecuteReader())
        {
            if (reader.Read())
            {
                Console.WriteLine(String.Format("{0}", reader["id"]));
                FormsAuthentication.RedirectFromLoginPage(LoginUser.UserName, LoginUser.RememberMeSet);
            }
            else
            {
                LoginUser.FailureText = "Podano nieprawidłowe dane";
                cos.Text= "Podano nieprawidłowe dane";
            }
        }

    }

}