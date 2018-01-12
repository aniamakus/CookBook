<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Catalog.aspx.cs" Inherits="Styles_Catalog" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" type="text/css" href="basics.css">
    <title></title>
</head>
<body>
    <div id="header">
        <img src="logo.ico">
        <h1 id="title">Ko<br>ty<br>na<br>DŚ</h1>
        <nav id="menu">
            <ul>
                <li><a href="./index.html">Strona główna</a></li>
                <li><a href="./catalog.html">Adopcja kotów</a></li>
                <li><a href="./Form.aspx">Mój profil</a></li>
            </ul>
        </nav>
    </div>
    <form id="form1" runat="server">
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
    </form>
</body>
</html>
