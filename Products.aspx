<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master"  AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    Produkty
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentBody" Runat="Server">
    <div>
             <h2 style="text-align:center">Witamy w naszym sklepie!</h2>
             <br />
             <p style="font-size:large">Wybierz kategorię:</p>
             <asp:RadioButtonList ID="categoryRadioButtonList" runat="server" AutoPostBack="True" OnSelectedIndexChanged="categoryRadioButtonList_SelectedIndexChanged">
        </asp:RadioButtonList>
        <asp:Panel runat="server" ID="productsDiv" Visible="false"> 
            <p>Produkty z kategorii: 
                <asp:Label ID="categoryName" runat="server" Text=""></asp:Label>
            </p>
            <asp:PlaceHolder ID="productsPlaceHolder" runat="server"></asp:PlaceHolder>
            <asp:Button ID="addToBusketButton" runat="server" Text="Dodaj do koszyka" OnClick="addToBusketButton_Click" />
        </asp:Panel>
        <p>Liczba rzeczy w koszyku: <asp:Label ID="numOfThingsInBasketLabel" runat="server" Text="0"></asp:Label></p>
        <a href="./OrderSummary.aspx">Podsumowanie zamówienia</a>
    </div>         
</asp:Content>


