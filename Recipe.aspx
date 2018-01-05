<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Recipe.aspx.cs" Inherits="Recipe" %>

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
        <h1> Przepisy </h1>
        <p class="recipes" style="text-align:center; font-size:large">Przepisy wraz ze składnikami &reg; Nacisnij na zdjęcie jeśli chcesz je pobrać. Pobierz wszystkie: <a href="ftp://ftp.atman.pl/test1mb" ><img src= "https://image.flaticon.com/icons/svg/0/532.svg" alt="HTML5 Icon" height="20"/></a> </p>
        <div style="text-align:center">
        <asp:Table ID="Table1" runat="server" BorderWidth="1" Font-Size="Large" GridLines="Both" class="recipTable">
            <asp:TableRow runat="server">
                <asp:TableCell>
                    Nazwa
                </asp:TableCell>
                <asp:TableCell>
                    Składniki
                </asp:TableCell>
                <asp:TableCell>
                   Zdjęcie
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell RowSpan="6">
                    Tarta ze snickersami ♥
                </asp:TableCell>
                <asp:TableCell>
                    Batony snickers  
                </asp:TableCell>
                <asp:TableCell RowSpan="6">
                     <asp:Image ID="Image6" runat="server" AlternateText="img1" Height="256px" ImageUrl="http://static.mojewypieki.com/upload/images/przepisy/Snickers%20paj%2C%20czyli%20tarta%20ze%20snickersami/snickers_paj_3.jpg" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                   Serek mascarpone   
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    Biała czekolada     
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    Masło  
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    Masa kajmakowa 
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    Śmietana kremówka   
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell RowSpan="7">
                    Sernik Ferrero Roche ♥
                </asp:TableCell>
                <asp:TableCell>
                    Twaróg półtłusty
                </asp:TableCell>
                <asp:TableCell RowSpan="7">
                    <asp:Image ID="Image1" runat="server" AlternateText="img1" Height="256px" ImageUrl="http://static.mojewypieki.com/upload/images/przepisy/Sernik%20z%20mleczn%C4%85%20czekolad%C4%85/Sernik_z_mleczn%C4%85_czekolad%C4%85_2.jpg" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    Orzechy laskowe
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                   Nutella
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    Ciastka pełno ziarniste
                </asp:TableCell>
            </asp:TableRow>
             <asp:TableRow>
                <asp:TableCell>
                    Masło
                </asp:TableCell>
            </asp:TableRow>
             <asp:TableRow>
                <asp:TableCell>
                   Laska wanilii
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    Mąka
                </asp:TableCell>
            </asp:TableRow>
            
        </asp:Table>
            </div>
    </form>
</body>
</html>
