<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Gifts.aspx.cs" Inherits="Gifts" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Upominki</title>
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
        <div class="links" id="nav">
            <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal"  style="font-size:larger">
                <Items>
                    <asp:MenuItem NavigateUrl="~/StartPage.aspx" Text="Strona główna" />
                    <asp:MenuItem NavigateUrl="~/Recipe.aspx" Text="Przepisy" />
                    <asp:MenuItem NavigateUrl="~/Gifts.aspx" Text="Upominki" />
                    <asp:MenuItem NavigateUrl="~/Products.aspx" Text="Sklep" />
                </Items>
            </asp:Menu>
            </div>

        <div>
        <h1>Wylosuj swój upominek</h1>
      </div>
        <p><b>Weź udział w losowaniu!</b></p>
        <p>Co miesiąc spośród uczestników wylosujemy jedną osobę, która otrzyma od nas upominek w formie naszej autorskiej ksiązki kucharskiej. Wystarczy wypełnić formularz, dzięki któremu skontaktujemy się ze zwycięzca.</p>
        <p><b>Najbliższe losowanie <mark>20.10.2017!</mark></b></p>

        Imię:<br />
        <asp:TextBox ID="Name" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" Display="Dynamic"  runat="server" ControlToValidate="Name" Text="Pole nie może być puste" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        Nazwisko:<br />
        <asp:TextBox ID="LastNameInput" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1"  Display="Dynamic" runat="server" ControlToValidate="LastNameInput" Text="Pole nie może być  puste"  ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        E-mail:<br />
        <asp:TextBox ID="EmailLabel" runat="server"></asp:TextBox>
        (email@gmail.com)<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Niepoprawny format maila" ForeColor="Red" ControlToValidate="EmailLabel" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$"></asp:RegularExpressionValidator>
        <br />
        Telefon:<br />
        <asp:TextBox ID="TelLabel" runat="server"></asp:TextBox>
        <asp:Label ID="Label1" runat="server" Text=" (###-###-###)"></asp:Label>
        <br />
        Ilość lat:<br />
        <asp:TextBox ID="Age" runat="server" OnTextChanged="Age_TextChanged"></asp:TextBox>

       
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Age" ErrorMessage="Pole nie może być puste" ForeColor="Red"></asp:RequiredFieldValidator>

       
        <br />
        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="Age" Text="Wiek musi być pomiędzy 18-150 lat" MinimumValue="18" MaximumValue="150" Type="Integer" ForeColor="red"></asp:RangeValidator>

      
        <br />
        <br />
            <asp:Button ID="Button2" runat="server" Text="Pokaż dodatkowe pola" OnClick="OpenExtraFields" />
        <br />

        <asp:TextBox ID="LivePlace" runat="server" Text="Miasto zamieszkania" Visible="false"></asp:TextBox>
        <asp:TextBox ID="BirthPlace" runat="server" Text="Miasto urodzenia" Visible="false" ></asp:TextBox>
        <br />
        <asp:CompareValidator ID="CompareValidator1" ControlToCompare="BirthPlace" ControlToValidate="LivePlace" runat="server" Operator="NotEqual" ErrorMessage="Mieszkasz w tym samym mieście w którym się urodziłeś" Type="String"></asp:CompareValidator>
        <br />
        <p>
            <asp:Button ID="Button1" runat="server" Text="Przejdź dalej"/>
            <asp:Button ID="cleanButton" runat="server" Text="Wyczyść" OnClick="CleanFields"/>
        </p>

       
        <asp:Label ID="outputLabel" runat="server" Text="OutputLabel" Visible="false"></asp:Label>

       
    </form>

</body>
</html>
