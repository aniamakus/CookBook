using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Data
/// </summary>
class Data
{
    private static Data db = null;

    public static Data DB
    {
        get
        {
            if (db == null)
                db = new Data();
            return db;
        }
    }

    private Data()
    {

    }

    public List<string> getTypesOfDelivery()
    {
        return (new string[3] { "Kurier", "Poczta", "Odbiór osobisty" }).ToList<string>();
    }

    public List<string> getTypesOfPayment()
    {
        return (new string[2] { "Karta", "Przelew" }).ToList<string>();
    }
}