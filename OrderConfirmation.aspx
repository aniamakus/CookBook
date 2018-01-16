<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master"   AutoEventWireup="true" CodeFile="OrderConfirmation.aspx.cs" Inherits="Styles_OrderConfirmation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    Przepisy
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentBody" Runat="Server">
    <div>         
            <asp:Label ID="summaryLabel" runat="server" Text="Label"></asp:Label><br />
             <br /><a href="./Products.aspx">Powrót do sklepu</a>
        </div>
    </asp:Content>


