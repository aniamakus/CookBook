using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class OrderSummary : System.Web.UI.Page
{
    Order order;
   
    protected void Page_Load(object sender, EventArgs e)
    {

        deliveryDropDownList.SelectedIndexChanged += deliveryDropDownListSelectedIndexChanged;
        paymentDropDownList.SelectedIndexChanged += paymentDropDownListSelectedIndexChanged;
        if (Session.Count == 0)
            productsDivTitleLabel.Text = "Brak produktów w koszyku";
        else
        {
            productsDivTitleLabel.Text = "Produkty w koszyku:";
            orderButton.Visible = true;
            printOutBasket();
        }
        order = makeOrder(getDelivery(), getPayment());
        summary();
        /*
        if (!IsPostBack)
        {
            //deliveryDropDownList = addDropDownList(Data.DB.getTypesOfDelivery(), deliveryDropDownListSelectedIndexChanged);
            //paymentDropDownList = addDropDownList(Data.DB.getTypesOfPayment(), paymentDropDownListSelectedIndexChanged);

            if (Session.Count == 0)
                productsDivTitleLabel.Text = "Brak produktów w koszyku";
            else
            {
                productsDivTitleLabel.Text = "Produkty w koszyku:";
                printOutBasket();
            }
            order = makeOrder(getDelivery(), getPayment());
            summary();
        } else
        {
            //order.Delivery = getDelivery();
            //order.Payment = getPayment();
            order = makeOrder(getDelivery(), getPayment());
            summary();
        }*/
    }

    private void printOutBasket()
    {
        GridView gridView = new GridView();
        DataTable dataTable = new DataTable();
        dataTable.Columns.Add("Produkt");
        dataTable.Columns.Add("Cena");
        foreach (string name in Session.Keys)
        {
            DataRow row = dataTable.NewRow();
            row[0] = name;
            row[1] = Session[name];
            dataTable.Rows.Add(row);
        }
        gridView.DataSource = dataTable;
        gridView.DataBind();
        gridView.CssClass = "table";
        productsPlaceHolder.Controls.Add(gridView);
    }

    private DropDownList addDropDownList(List<string> dataSource, EventHandler onClick)
    {
        DropDownList list = new DropDownList();
        foreach (string element in dataSource)
            list.Items.Add(new ListItem(element));
        list.DataBind();
        list.SelectedIndexChanged += onClick;
        list.AutoPostBack = true;
        dropDownListsPlaceHolder.Controls.Add(list);
        return list;
    }

    protected void orderButton_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Session["Order"] = order;
        Response.Redirect("~/OrderConfirmation.aspx");
    }

    private Order makeOrder(Delivery delivery, Payment payment)
    {
        return new Order(payment, delivery, getProductsFromSession());
    }


    private Hashtable getProductsFromSession()
    {
        Hashtable products = new Hashtable();
        foreach (string key in Session.Keys)
            products.Add(key, Session[key]);
        return products;
    }

    private Delivery getDelivery()
    {
        switch (deliveryDropDownList.SelectedItem.Text)
        {
            case "Kurier":
                return new Courier();
            case "Poczta":
                return new Post();
            case "Odbiór osobisty":
                return new SelfPickup();
            default:
                throw new Exception();
        }
    }

    private Payment getPayment()
    {
        switch (paymentDropDownList.SelectedItem.Text)
        {
            case "Karta":
                return Payment.Card;
            case "Przelew":
                return Payment.Transfer;
            default:
                throw new Exception();
        }
    }

    private void summary()
    {
        summaryLabel.Text = "Całkowita wartość zamówienia: " + order.productsPrice();
    }

    protected void deliveryDropDownListSelectedIndexChanged(object sender, EventArgs e)
    {
        order.Delivery = getDelivery();
        summary();
    }

    protected void paymentDropDownListSelectedIndexChanged(object sender, EventArgs e)
    {
        order.Payment = getPayment();
        summary();
    }
}