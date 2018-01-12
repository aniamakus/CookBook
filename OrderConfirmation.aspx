<%@ Page Language="C#" AutoEventWireup="true" CodeFile="OrderConfirmation.aspx.cs" Inherits="Styles_OrderConfirmation" %>

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
            <asp:Label ID="summaryLabel" runat="server" Text="Label"></asp:Label><br />
             <br /><a href="./Products.aspx">Powrót do sklepu</a>
        </div>
    </form>
</body>
</html>
