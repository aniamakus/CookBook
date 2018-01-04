<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Gifts.aspx.cs" Inherits="Gifts" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Upominki</title>
    <link href="~/Styles/cookBookStyle.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="links" style="margin:0 auto; width: 853px;">
            <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal" >
                <Items>
                    <asp:MenuItem NavigateUrl="~/StartPage.aspx" Text="Strona główna" />
                    <asp:MenuItem NavigateUrl="~/StartPage.aspx" Text="Przepisy" />
                    <asp:MenuItem NavigateUrl="~/StartPage.aspx" Text="Kontakt" />
                    <asp:MenuItem NavigateUrl="~/Gifts.aspx" Text="Upominki" />
                    <asp:MenuItem NavigateUrl="~/Upominki.aspx" Text="Informacje" />
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
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;(email@gmail.com)<br />
        Telefon:<br />
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:Label ID="Label1" runat="server" Text=" (###-###-###)"></asp:Label>
        <br />
        Miasto zamieszkania:<br />
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <br />
        Kod pocztowy:<br />
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <br />
        Ulica<br />
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        <br />
        Nr domu / nr lokalu:<br />
        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        <br />
        Ilość lat:<br />

       
        <asp:TextBox ID="Age" runat="server" OnTextChanged="Age_TextChanged"></asp:TextBox>

       
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Age" ErrorMessage="Pole nie może być puste" ForeColor="Red"></asp:RequiredFieldValidator>

       
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="Age" Text="Wiek musi być pomiędzy 18-150 lat" MinimumValue="18" MaximumValue="150" Type="Integer"></asp:RangeValidator>

       
        <p>
            <asp:Button ID="Button2" runat="server" Text="Pokaż dodatkowe pola" OnClientClick="OpenExtraFields" />
        </p>

       
        <p>
            <asp:Button ID="Button1" runat="server" Text="Przejdź dalej" OnClientClick="SubmitForm" />
            <asp:Button ID="Button3" runat="server" Text="Wyczyść" OnClientClick="CleanFields"/>
        </p>

       
    </form>

</body>
</html>
