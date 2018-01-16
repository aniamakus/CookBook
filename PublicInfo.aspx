<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="PublicInfo.aspx.cs" Inherits="PublicInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    Nasze produkty
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentBody" Runat="Server">
    <div>
            <h1>Oferowane produkty:</h1>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="657px">
            <Columns>
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                <asp:BoundField DataField="Created" HeaderText="Created" SortExpression="Created" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CookBookDb %>" SelectCommand="SELECT [Name], [Created], [Price], [Description] FROM [Books]"></asp:SqlDataSource>
</asp:Content>

