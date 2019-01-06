<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Shop.aspx.cs" Inherits="PSW.Shop" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
        <h2>Dostępne artykuły</h2>
        <form id="form" runat="server">
            <asp:RadioButtonList ID="category" runat="server" AutoPostBack="True">
              <asp:ListItem Value="wands">Różdżki</asp:ListItem>
              <asp:ListItem Value="brooms">Miotły</asp:ListItem>
            </asp:RadioButtonList>
            
            <asp:Label ID="categoryLabel" runat="server" Visible="false"><h2>Dostępne produkty:</h2></asp:Label>
            <asp:CheckBoxList ID="productList" runat="server" visible="false"></asp:CheckBoxList>
            <asp:Button ID="btnAddCart" runat="server" Visible="false" text="Dodaj do koszyka"/>
       </form>
    </section>
</body>
</html>
