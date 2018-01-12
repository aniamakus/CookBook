<%@ Page Language="C#" AutoEventWireup="true" CodeFile="OrderSummary.aspx.cs" Inherits="OrderSummary" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

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
    </form>
</body>
</html>