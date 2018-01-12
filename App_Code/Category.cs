using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Category
/// </summary>
public class Category
{
    private string name;
    private Hashtable products;

    public string Name
    {
        get { return name; }
        set { name = value; }
    }

    public Hashtable Products
    {
        get { return products; }
        set { products = value; }
    }

    public Category(string name)
    {
        this.name = name;
        products = new Hashtable();
    }

    public Category(string name, Hashtable products)
    {
        this.name = name;
        this.products = products;
    }

}