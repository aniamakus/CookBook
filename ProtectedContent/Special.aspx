<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Special.aspx.cs" Inherits="ProtectedContent_Special" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    Prywatne
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentBody" Runat="Server">
    <style>
        .login{
            font-size:large;
            color:blue;
            float:left;
}
        .comm{
            float:left;
            font-style:italic;
        }
    </style>
    <h3>Komentarze użytkowników:</h3>
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" Width="404px" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
        <ItemTemplate>
            <p class="login">Użytkownik <asp:Label ID="LoginLabel" runat="server" Text='<%# Eval("Login") %>'/> napisał/a:</p>
            <br />
            <p class="comm"><asp:Label ID="CommentLabel" runat="server" Text='<%# Eval("Comment") %>' /></p>
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CookBookDb %>" SelectCommand="SELECT [Comment], [Login] FROM [Comm]" OnSelecting="SqlDataSource1_Selecting"></asp:SqlDataSource>

    <asp:Label ID="Label1" runat="server" Text="Podoba ci sie nasz strona? Zostaw komentarz!!!"></asp:Label>
    <br />
    
    <asp:TextBox ID="CommentInput" runat="server" Height="43px" Width="915px"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" OnClick="AddComments" Text="Dodaj" />
    <asp:Button ID="Button2" runat="server" OnClick="EditLastComment" Text="Edytuj swój ostatni komentarz" />
</asp:Content>

