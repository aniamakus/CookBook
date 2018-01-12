using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Delivery
/// </summary>
public abstract class Delivery
{
    public abstract double costOfDelivery();
}

public class Courier : Delivery
{
    public override double costOfDelivery()
    {
        return 20;
    }
}

public class SelfPickup : Delivery
{
    public override double costOfDelivery()
    {
        return 0;
    }
}

public class Post : Delivery
{
    public override double costOfDelivery()
    {
        return 10;
    }
}