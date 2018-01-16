<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="PublicInfo.aspx.cs" Inherits="PublicInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    Nasze produkty
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentBody" Runat="Server">
    <style>
        .title{
            font-size:large;
        }
        .sqlDataLabels{
        font-size:large;
        font-weight:bold;
        margin:0;
    }
    .description{
        font-size:medium;
    }
    .date{
        float:right;
        margin:5px;
        font-size:medium;
        color:darkslategrey;
}
    </style>
    <h1>Oferowane produkty:</h1>
    <p class="title"> Ksiązki, które znajdziesz w naszej ofercie! Serdecznie polecamy!  </p>
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource2" Width="1050px">
        <ItemTemplate>  
            <p class="sqlDataLabels">
            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
            <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' /> zł
            </p>
            <p class="description">
            Opis:
            <br />
            <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
             </p>
            <p class="date">
            Dodano:
            <asp:Label ID="CreatedLabel" runat="server" Text='<%# Eval("Created") %>' />
            </p>
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CookBookDb %>" SelectCommand="SELECT [Name], [Price], [Description], [Created] FROM [Books]"></asp:SqlDataSource>
</asp:Content>

