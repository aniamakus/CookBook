<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Gifts2.aspx.cs" Inherits="Gifts2" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    Formularz

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style>
        #Cont {
            margin: 5%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentBody" Runat="Server"> 
         <div id="Cont">
                 <asp:ScriptManager ID="ScriptManager1" runat="server">

          </asp:ScriptManager>

      <ajaxToolkit:TabContainer ID="TabContainerInfo" runat="server" ActiveTabIndex="1">
          <ajaxToolkit:TabPanel runat="server" HeaderText="Info" ID="TabPanel1">
            <ContentTemplate>
            <asp:Label ID="Label1" runat="server" Text="Nazwisko:"></asp:Label><br />
            <asp:TextBox ID="surnameTextBox" runat="server"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="surnameRequiredFieldValidator" runat="server" ControlToValidate="surnameTextBox" Display="None" ErrorMessage="Proszę podać nazwisko!" ForeColor="Red"></asp:RequiredFieldValidator>
             <ajaxToolkit:ValidatorCalloutExtender ID="surnameRequiredFieldValidator_ValidatorCalloutExtender" runat="server" BehaviorID="surnameRequiredFieldValidator_ValidatorCalloutExtender" TargetControlID="surnameRequiredFieldValidator">
             </ajaxToolkit:ValidatorCalloutExtender>
                <br />
            Wiek:<br />
            <asp:TextBox ID="ageTextBox" runat="server"></asp:TextBox>
            <asp:Label ID="Label8" runat="server" Text="Liczba całkowita z zakresu 13-110"></asp:Label>
            <br />
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="ageTextBox" Display="None" ErrorMessage="Wiek musi być liczbąz zakresu 13-110!" ForeColor="Red" MaximumValue="110" MinimumValue="13" Type="Integer"></asp:RangeValidator>
            <ajaxToolkit:ValidatorCalloutExtender ID="RangeValidator1_ValidatorCalloutExtender" runat="server" BehaviorID="RangeValidator1_ValidatorCalloutExtender" TargetControlID="RangeValidator1">
             </ajaxToolkit:ValidatorCalloutExtender>
                <br />
            Data urodzenia:<br />
            <asp:TextBox ID="compareTextBox" runat="server"></asp:TextBox>
            <asp:Label ID="Label7" runat="server" Text="Data  formacie dd/mm/rrrr"></asp:Label>
            <br />
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="compareTextBox" Display="None" ErrorMessage="Nieprawidłowe wyrażenie!" ForeColor="Red" Operator="DataTypeCheck" Type="Date"></asp:CompareValidator>
            <ajaxToolkit:ValidatorCalloutExtender ID="CompareValidator1_ValidatorCalloutExtender" runat="server" BehaviorID="CompareValidator1_ValidatorCalloutExtender" TargetControlID="CompareValidator1">
             </ajaxToolkit:ValidatorCalloutExtender>
            </ContentTemplate>
          </ajaxToolkit:TabPanel>
          <ajaxToolkit:TabPanel ID="Concact" runat="server" HeaderText="Kontakt">
            <ContentTemplate>
            <asp:Label ID="Label2" runat="server" Text="Mail:"></asp:Label><br />
            <asp:TextBox ID="mailTextBox" runat="server"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="mailRequiredFieldValidator" runat="server" ControlToValidate="mailTextBox" Display="None" ErrorMessage="Proszę podać e-mail!" ForeColor="Red"></asp:RequiredFieldValidator>
                <ajaxToolkit:ValidatorCalloutExtender ID="mailRequiredFieldValidator_ValidatorCalloutExtender" runat="server" BehaviorID="mailRequiredFieldValidator_ValidatorCalloutExtender" TargetControlID="mailRequiredFieldValidator">
                </ajaxToolkit:ValidatorCalloutExtender>
            <asp:RegularExpressionValidator ID="emailRegularExpressionValidator" runat="server" ControlToValidate="mailTextBox" Display="None" ErrorMessage="Nieprawidłowy adres e-mail!" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <ajaxToolkit:ValidatorCalloutExtender ID="emailRegularExpressionValidator_ValidatorCalloutExtender" runat="server" BehaviorID="emailRegularExpressionValidator_ValidatorCalloutExtender" TargetControlID="emailRegularExpressionValidator">
                </ajaxToolkit:ValidatorCalloutExtender>
            <br />
             <asp:Label ID="Label4" runat="server" Text="Numer telefonu:"></asp:Label><br />
            <asp:TextBox ID="phoneTextBox" runat="server"></asp:TextBox>
            <asp:Label ID="Label9" runat="server" Text="np. (555) 555-1234"></asp:Label>
            <br />
            <asp:RegularExpressionValidator ID="phoneRegularExpressionValidator" runat="server" ControlToValidate="phoneTextBox" Display="None" ErrorMessage="Niepoprawny numer telefonu!" ForeColor="Red" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
                <ajaxToolkit:ValidatorCalloutExtender ID="phoneRegularExpressionValidator_ValidatorCalloutExtender" runat="server" BehaviorID="phoneRegularExpressionValidator_ValidatorCalloutExtender" TargetControlID="phoneRegularExpressionValidator">
                </ajaxToolkit:ValidatorCalloutExtender>
            </ContentTemplate>
          </ajaxToolkit:TabPanel>
      </ajaxToolkit:TabContainer>
      <asp:UpdatePanel ID="UpdatePanel1" runat="server">
          <ContentTemplate>
            <asp:Button ID="submitButton" runat="server" Text="Wyślij" />
            <br />
            <br />
            <asp:Label ID="displaySendedDataLabel" runat="server" Text="Label" Visible="False"></asp:Label>
         </ContentTemplate>
            
          <Triggers>
              <asp:AsyncPostBackTrigger ControlID="submitButton" EventName="Click" />
          </Triggers>
            
      </asp:UpdatePanel>
       </div>
</asp:Content>

