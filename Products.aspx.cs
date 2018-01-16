using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Products : System.Web.UI.Page
{
    List<Category> groupedProducts = generateData();
    CheckBoxList productCheckBoxList;


    protected void Page_Load(object sender, EventArgs e)
    {

        if (IsPostBack)
        {
            showProducts(groupedProducts[categoryRadioButtonList.SelectedIndex]);
        }
        else
        {
            List<string> categories = new List<string>();
            foreach (Category category in groupedProducts)
                categories.Add(category.Name);
            categoryRadioButtonList.DataSource = categories.ToArray();
            categoryRadioButtonList.DataBind();
            updateNumberOfProductsInBasket();
        }
    }

    private void showProducts(Category category)
    {
        CheckBoxList productCheckBoxList = new CheckBoxList();
        List<string> products = new List<string>();
        productCheckBoxList.Items.Clear();
        foreach (DictionaryEntry product in category.Products)
            productCheckBoxList.Items.Add(new ListItem(product.Key.ToString(), product.Key.ToString()));
        productCheckBoxList.DataBind();
        productsPlaceHolder.Controls.Add(productCheckBoxList);
        this.productCheckBoxList = productCheckBoxList;
        productsDiv.Visible = true;
    }

    private static List<Category> generateData()
    {
        List<Category> result = new List<Category>();
        Hashtable books = new Hashtable();
        books.Add("Książka kucharska słodkości w trzech wymiarach", 65);
        books.Add("Kuchnia polska", 29);
        books.Add("Kuchnia Włoska", 35);
        result.Add(new Category("Ksiązki", books));
        Hashtable accessory = new Hashtable();
        accessory.Add("mikser", 399);
        accessory.Add("forma do pieczenia", 25);
        result.Add(new Category("Akcesoria", accessory));
        return result;
    }

    protected void addToBusketButton_Click(object sender, EventArgs e)
    {
        Category selectedCategory = groupedProducts[categoryRadioButtonList.SelectedIndex];
        foreach (ListItem product in productCheckBoxList.Items)
        {
            if (product.Selected)
                Session[product.Value] = selectedCategory.Products[product.Value];
        }
        updateNumberOfProductsInBasket();
    }

    private void updateNumberOfProductsInBasket()
    {
        int number = 0;
        foreach (string key in Session.Keys)
            number++;
        numOfThingsInBasketLabel.Text = number.ToString();
    }

    protected void categoryRadioButtonList_SelectedIndexChanged(object sender, EventArgs e)
    {
        categoryName.Text = categoryRadioButtonList.SelectedItem.Text;
    }
}