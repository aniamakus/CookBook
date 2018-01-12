using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Order
/// </summary>
public enum Payment
{
    Transfer, Card
}

public class Order
{
    private Delivery delivery;
    private Payment payment;
    private Hashtable products;

    public Delivery Delivery
    {
        get; set;
    }

    public Payment Payment
    {
        get; set;
    }

    public Hashtable Products
    {
        get; set;
    }

    public Order(Payment payment, Delivery delivery, Hashtable products)
    {
        this.delivery = delivery;
        this.payment = payment;
        this.products = products;
    }

    public double inclusivePrice()
    {
        return productsPrice() + delivery.costOfDelivery();
    }

    public double productsPrice()
    {
        //return products.Values.Cast<int>().ToList().Sum(x => x);
        double sum = 0;
        foreach (int price in products.Values)
            sum += price;
        return sum;
    }
}