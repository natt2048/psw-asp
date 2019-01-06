using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

namespace PSW
{
    struct Item
    {
        public string name;
        public double price;
        public string image;
    }
    
    public partial class Shop : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            Hashtable listOfProducts = new Hashtable();
            ArrayList wands = new ArrayList();
            wands.Add("W1");
            wands.Add("W2");
            wands.Add("W3");
            listOfProducts["wands"] = wands;
            ArrayList brooms = new ArrayList();
            brooms.Add("B1");
            brooms.Add("B2");
            brooms.Add("B3");
            listOfProducts["brooms"] = brooms;
            Hashtable products = new Hashtable();
            products["W1"] = (new Item { name = "Różdżka wierzbowa", price = 100, image = "wands/wand1.jpg" });
            products["W2"] = (new Item { name = "Różdżka sosnowa", price = 200, image = "wands/wand2.png" });
            products["W3"] = (new Item { name = "Różdżka dębowa", price = 300, image = "wands/wand3.png" });
            products["B1"] = (new Item { name = "Miotła wierzbowa", price = 100, image = "brooms/broom1.jpg" });
            products["B2"] = (new Item { name = "Miotła sosnowa", price = 200, image = "brooms/broom2.jpg" });
            products["B3"] = (new Item { name = "Miotła dębowa", price = 300, image = "brooms/broom3.png" });

            if (IsPostBack)
            {
                productList.Visible = true;
                categoryLabel.Visible = true;
                btnAddCart.Visible = true;
                productList.Items.Clear();
                foreach (String id in (ArrayList) listOfProducts[Request.Params["category"]])
                    productList.Items.Add(new ListItem("<div><img class=\"small\" src=\"Images/" + ((Item)products[id]).image + "\" /><p><b>" + ((Item)products[id]).name + "</b> (" + ((Item)products[id]).price + "zł)</p></div>", id));

                if (Session["cart"] == null)
                {
                    Session.Add("cart", new ArrayList());
                }
                //((ArrayList)Session["cart"]).Add(Item);
            }

        }
    }
}