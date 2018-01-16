<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Start.aspx.cs" Inherits="Start" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    Home
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentBody" Runat="Server">

     <div>
            <h1><asp:Image ID="Image2" runat="server" Height="60px" ImageUrl="~/Images/cupcake.jpg" Width="60px" />CookBook<asp:Image ID="Image1" runat="server" Height="60px" ImageUrl="~/Images/cupcake.jpg" Width="60px" /></h1>
            <br />
     </div>

    <h3 style="color: rgb(0, 0, 0); font-family: Pacifico, fantasy; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(240, 248, 255); text-decoration-style: initial; text-decoration-color: initial;">Galeria przykładowych zdjęć wykonanych na bazie przepisow znalezionych na naszej stronie</h3>
            <asp:Image ID="Image6" runat="server" AlternateText="img1" Height="256px" ImageUrl="https://s5.favim.com/orig/150312/awesome-cake-candy-chocolate-Favim.com-2555775.jpg" />
            <asp:Image ID="Image3" runat="server" AlternateText="img2" Height="256px" ImageUrl="https://78.media.tumblr.com/ce7029a24929edee55674a2278c169bd/tumblr_oxs2giNA6j1toxqo3o1_500.jpg" />
            <asp:Image ID="Image4" runat="server" AlternateText="img3" Height="256px" ImageUrl="http://www.oxygen.com/sites/nbcuoxygen/files/styles/blog-post--computer/public/field_blog_image/2016/03/shakes.jpg?itok=rbAKGQIn&amp;timestamp=1457561423" />
            <asp:Image ID="Image5" runat="server" Height="256px" ImageUrl="http://78.media.tumblr.com/94e8b9e7c36d0aebd31ce988b9384767/tumblr_ovvdu7dy4I1rvt9dro1_1280.jpg" />
            <asp:Image ID="Image7" runat="server" Height="256px" ImageUrl="http://www.zumi.co.ke/wp-content/uploads/2016/12/I-heart-nap-time-cake.jpg" />
            <h3 style="color: rgb(0, 0, 0); font-family: Pacifico, fantasy; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(240, 248, 255); text-decoration-style: initial; text-decoration-color: initial;">Możesz tu znaleźć przepisy na:</h3>
        
      <h3> Możesz tu znaleźć przepisy na: </h3>
      <details>
        <summary> Rozwiń listę rodzajów przepisów </summary>
        <ul style="list-style-type:square">
          <li>Ciasta</li>
          <li> Bezy</li>
          <li>Ciastka</li>
          <li>Desery</li>
          <li>Lody</li>
          <li>Torty i ciasta tortowe</li>
          <li>Czekoladki
            <ol type="a">
              <li>Belgijskie</li>
              <li>Bez Glutenu</li>
              <li>Trufle</li>
            </ol>
          </li>
          <li>Serniki</li>
          <li>Pieczywo</li>
           <li>Ekspresowe wypieki</li>
        </ul>
      </details>
      <h3> Znajdź swoje ulubione smaki: </h3>
      <details>
        <summary> Rozwiń listę smaków </summary>
        <div class="allFlavors">
        <ul style="list-style-type:square">
          <li>Czekoladowy</li>
          <li>Tofii</li>
          <li>Kokosowy</li>
          <li>Bezowy</li>
          <li>Owocowe
            <div class="fruitFlavors">
            <ul >
              <li>Cytrusowe
                <ul>
                  <li>Cytrynowe</li>
                  <li>Truskawkowe</li>
                  <li>Kiwi</li>
                  <li>Ananas</li>
                </ul>
              </li>
              <li>Inne
                <ul>
                <li>Jabłkowe</li>
                <li>Bananowe</li>
              </ul>
              </li>
            </ul>
            </div>
          </li>
        <li>Mleczne
          <ul>
            <li>Jogurtowy</li>
            <li>Śmietankowe</li>
          </ul>
        </li>
        </ul>
        </div>
      </details>
      <p id="p1"> SMACZNEGO !! </p>
</asp:Content>

