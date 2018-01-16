<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master"  AutoEventWireup="true" CodeFile="Catalog.aspx.cs" Inherits="Styles_Catalog" %>


<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    Katalog
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentBody" Runat="Server">
    <div>
        <asp:RadioButtonList ID="categoryRadioButtonList" runat="server" AutoPostBack="True">
        </asp:RadioButtonList>
        <asp:Panel runat="server" ID="productsDiv" Visible="false"> 
            <p>Produkty z kategorii: 
                <asp:Label ID="categoryName" runat="server" Text=""></asp:Label>
            </p>
            <asp:PlaceHolder ID="productsPlaceHolder" runat="server"></asp:PlaceHolder>
            <asp:Button ID="addToBusketButton" runat="server" Text="Dodaj do koszyka" />
        </asp:Panel>
        <p>Liczba rzeczy w koszyku: <asp:Label ID="numOfThingsInBasketLabel" runat="server" Text="0"></asp:Label></p>
        <a href="./OrderSummary.aspx">Podsumowanie zamówienia</a>
    </div>
</asp:Content>

