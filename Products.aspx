<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="Products" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Przepisy</title>
    <link href="~/Styles/cookBookStyle.css" rel="stylesheet" type="text/css" />
     <style type="text/css">
        #nav{
            clear: both;
            text-align: center;
            display:table;
            margin: 0 auto;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
       <div class="links" id="nav" >
            <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal" style="font-size:larger">
                <Items>
                    <asp:MenuItem NavigateUrl="~/StartPage.aspx" Text="Strona główna" />
                    <asp:MenuItem NavigateUrl="~/Recipe.aspx" Text="Przepisy" />
                    <asp:MenuItem NavigateUrl="~/Gifts.aspx" Text="Upominki" />
                </Items>
            </asp:Menu>
            </div>
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
    </form>
</body>
</html>
