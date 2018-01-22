using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ProtectedContent_Special : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.Page.User.Identity.IsAuthenticated)
        {
            FormsAuthentication.RedirectToLoginPage();
        }

    }

    protected void AddComments(object sender, EventArgs e)
    {
        string com = CommentInput.Text;
        var connectionString = @"Server=localhost\SQLEXPRESS;Database=CookBook;Trusted_Connection=True;";
        SqlConnection con = new SqlConnection(connectionString);
        con.Open();

        SqlCommand cmd = new SqlCommand("Select Id from [CookBook].[dbo].[User] where UserName=@name", con);
        cmd.Parameters.AddWithValue("@name", User.Identity.Name);

        string userId = null;
        using (SqlDataReader reader = cmd.ExecuteReader())
        {
            if (reader.Read())
            {
                userId = reader["id"].ToString();
                var temp = Int32.Parse(userId);
                userId = temp.ToString();
            }  
        }


        SqlCommand cmd2 = new SqlCommand("INSERT INTO [CookBook].[dbo].[Comm] (UserId, Comment, Login) VALUES( @p1, @p2, @p3)", con);
        cmd2.Parameters.AddWithValue("@p1", userId);
        cmd2.Parameters.AddWithValue("@p2", com);
        cmd2.Parameters.AddWithValue("@p3", User.Identity.Name);
        cmd2.ExecuteNonQuery();
        Response.Redirect(Request.RawUrl);
    }

    //private void ActiveButton()
    //{
    //    Button button = new Button();
    //    button.Visible = true;
    //    button.Text = "Edytuj komentarz";
    //    button.OnClientClick = "EditLastComment";
    //    PlaceHolder1.Controls.Add(button);
    //}

    protected void EditLastComment(object sender, EventArgs e)
    {
        string com = CommentInput.Text;
        var connectionString = @"Server=localhost\SQLEXPRESS;Database=CookBook;Trusted_Connection=True;";
        SqlConnection con = new SqlConnection(connectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("SELECT TOP 1 Comment, Id from [CookBook].[dbo].[Comm] WHERE Login=@user ORDER BY Id DESC", con);
        cmd.Parameters.AddWithValue("user", User.Identity.Name);
        string comment = null;
        string id = null;
        using (SqlDataReader reader = cmd.ExecuteReader())
        {
            if (reader.Read())
            {
                comment = reader["Comment"].ToString();
                id = reader["Id"].ToString();
            }
        }
        CommentInput.Text = comment;
        SqlCommand cmd2 = new SqlCommand("DELETE from [CookBook].[dbo].[Comm] WHERE Id=@id", con);
        cmd2.Parameters.AddWithValue("@id", id);
        cmd2.ExecuteNonQuery();
    }

    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }

    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
  
}