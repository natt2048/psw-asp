<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="Cart.aspx.cs" Inherits="PSW.Cart" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <title>Wingardium Leviosa</title>
    <link href="Styles/style.css" rel="stylesheet" type="text/css" />
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
        <h2>Koszyk</h2>
        <asp:Label ID="congrats" runat="server" Visible="false" Text="Złożono zamówienie!"></asp:Label>
        <br />

        <form id="order" runat="server">

     <asp:ListView ID="cartList" runat="server" 
                GroupItemCount="4"
                ItemType="PSW.CartItem">

                

                <EmptyDataTemplate>
                    <table >
                        <tr>
                            <td>Koszyk jest pusty.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <EmptyItemTemplate>
                    <td/>
                </EmptyItemTemplate>
                <GroupTemplate>
                    <tr id="itemPlaceholderContainer" runat="server">
                        <td id="itemPlaceholder" runat="server"></td>
                    </tr>
                </GroupTemplate>
                <ItemTemplate>
                   
                        <div style="min-height: 100px;">
                          
                                    
                                        <img alt="produkt" class="small" src="Images/<%#:Item.item.image%>"
                                             />
                           <p>
                                            <%#:Item.item.name%> (<%#:Item.item.price%> zł)
                                        </p>
                                    
                              
                        </div>
                        
                    
                </ItemTemplate>
                <LayoutTemplate>
                  
                                    <table id="groupPlaceholderContainer" runat="server" style="width:100%">
                                        <tr id="groupPlaceholder"></tr>
                                    </table>
                   
                </LayoutTemplate>
            </asp:ListView>
          
<asp:DropDownList AutoPostBack="true" runat="server" ID="shippingList" 
                CssClass="text" OnSelectedIndexChanged="myListDropDown_Change" Visible="false"/>
                 <asp:Label ID="wybranaDostawa" runat="server" Visible="false" Text=""></asp:Label>
 <br />
  
  <asp:Label ID="summaryProducts" runat="server" Visible="false" Text="Label"></asp:Label>
  <br />
  <asp:Label ID="summary" runat="server" Visible="false" Text="Label"></asp:Label>
           
<br />
             <asp:Button ID="btnOrder" runat="server" Visible="false" text="Złóż zamówienie"/>
            </form>
            </section>
</body>
</html>


