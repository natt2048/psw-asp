<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Form.aspx.cs" Inherits="PSW.Form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Wingardium Leviosa</title>
    <link href="Styles/style.css" rel="stylesheet" type="text/css" />
    <link href="https://fonts.googleapis.com/css?family=Staatliches" rel="stylesheet"> 
</head>
<body>
    <header>
        <h1>Wingardium Leviosa</h1>
    </header>
    <nav>
         <ul>
          <li><a href="Index.aspx">Witamy</a></li>
          <li><a href="Shop.aspx">Produkty</a></li>
          <li><a href="Cart.aspx">Koszyk</a></li>
          <li><a href="Form.aspx">Twoje dane</a></li>
          <li><a href="About.aspx">O nas</a></li>
        </ul> 
    </nav>
    <section>
        <h2>Uzupełnij swoje dane</h2>
        <asp:Label ID="uploadedLabel" runat="server" visible="false"></asp:Label>
        <form id="userForm" runat="server">
            <div class="formDiv">
                <asp:Label id="inputNameLabel" runat="server">Imię</asp:Label>
                <asp:TextBox id="inputName" runat="server" type="text"/>
                <asp:RequiredFieldValidator runat="server" id="reqName" controltovalidate="inputName" errormessage="Pole Imię nie może być puste!" />
                <asp:RegularExpressionValidator ID="validName" runat="server" controltovalidate="inputName" ErrorMessage="Imię musi zaczynać się wielką literą!" ValidationExpression="[A-Z][a-z]+"/>
            </div>
            <div class="formDiv">
                <asp:Label id="inputSurnameLabel" runat="server">Nazwisko</asp:Label>
                <asp:TextBox id="inputSurname" runat="server" type="text"/>
                <asp:RequiredFieldValidator runat="server" id="reqSurname" controltovalidate="inputSurname" errormessage="Pole Nazwisko nie może być puste!" />
                <asp:RegularExpressionValidator ID="validSurname" runat="server" controltovalidate="inputSurname" ErrorMessage="Nazwisko musi zaczynać się wielką literą!" ValidationExpression="[A-Z][a-z]+"/>
            </div>
            <div class="formDiv">
                <asp:Label id="inputEmailLabel" runat="server">E-mail</asp:Label>
                <asp:TextBox id="inputEmail" runat="server" type="email"/>
                <asp:RequiredFieldValidator runat="server" id="reqEmail" controltovalidate="inputEmail" errormessage="Pole E-mail nie może być puste!" />
            </div>
            <div class="formDiv">
                <asp:Label id="inputEmail2Label" runat="server">Powtórz e-mail</asp:Label>
                <asp:TextBox id="inputEmail2" runat="server" type="email"/>
                <asp:CompareValidator runat="server" id="reqEmail2" controltovalidate="inputEmail2" controltocompare="inputEmail" errormessage="Podane adresy e-mail są różne!" />
            </div>
            <div class="formDiv">
                <asp:Label id="inputPhoneLabel" runat="server">Telefon</asp:Label>
                <asp:TextBox id="inputPhone" runat="server" type="text"/>
                <asp:RegularExpressionValidator ID="validPhone" runat="server" controltovalidate="inputPhone" ErrorMessage="Proszę podać poprawny numer telefonu" ValidationExpression="[0-9 +]+"/>
            </div>
            <div class="formDiv">
                <asp:Label id="inputStreetLabel" runat="server">Ulica i nr domu</asp:Label>
                <asp:TextBox id="inputStreet" runat="server" type="text"/>
            </div>
            <div class="formDiv">
                <asp:Label id="inputPostcodeLabel" runat="server">Kod pocztowy</asp:Label>
                <asp:TextBox id="inputPostcode" runat="server" type="text"/>
                <asp:RegularExpressionValidator ID="validPostcode" runat="server" controltovalidate="inputPostcode" ErrorMessage="Proszę podać poprawny kod pocztowy" ValidationExpression="\d\d\-\d\d\d"/>
            </div>
            <div class="formDiv">
                <asp:Label id="inputCityLabel" runat="server">Miasto</asp:Label>
                <asp:TextBox id="inputCity" runat="server" type="text"/>
            </div>
            <div class="formDiv">
                <asp:Label id="inputCaptchaLabel" runat="server">Wpisz liczbę od 5 do 115</asp:Label>
                <asp:TextBox id="inputCaptcha" runat="server" type="text"/>
                <asp:RequiredFieldValidator runat="server" id="reqCaptcha" controltovalidate="inputCaptcha" errormessage="Pole Captcha nie może być puste!" />
                <asp:RangeValidator runat="server" id="validInputCaptcha" controltovalidate="inputCaptcha" type="Integer" minimumvalue="5" maximumvalue="115" errormessage="Jesteś robotem?" />
            </div>
            <asp:Button runat="server" id="btnSubmitForm" text="Zapisz" />
        </form>
    </section>
</body>
</html>