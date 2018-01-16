<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master"  AutoEventWireup="true" CodeFile="OrderSummary.aspx.cs" Inherits="OrderSummary" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    Przepisy
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentBody" Runat="Server">
     <asp:PlaceHolder ID="dropDownListsPlaceHolder" runat="server" >
            <asp:DropDownList ID="deliveryDropDownList" runat="server" AutoPostBack="True">
                <asp:ListItem>Kurier</asp:ListItem>
                <asp:ListItem>Poczta</asp:ListItem>
                <asp:ListItem>Odbiór osobisty</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="paymentDropDownList" runat="server" AutoPostBack="True">
                <asp:ListItem>Karta</asp:ListItem>
                <asp:ListItem>Przelew</asp:ListItem>
            </asp:DropDownList>
            </asp:PlaceHolder>
            <br />
        <asp:PlaceHolder ID="productsPlaceHolder" runat="server">         
            <asp:Label ID="productsDivTitleLabel" runat="server" Text="Label"></asp:Label>
        </asp:PlaceHolder><br />
            <asp:Label ID="summaryLabel" runat="server" Text="Label"></asp:Label><br />
        <asp:Button ID="orderButton" runat="server" OnClick="orderButton_Click" Text="Złóż zamówienie" Visible="False" /><br />
        <a href="./Products.aspx">Powrót do sklepu</a>
        </div>
    </asp:Content>
