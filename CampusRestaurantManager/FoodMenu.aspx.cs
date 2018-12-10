using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace CampusRestaurantManager
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = "Data Source=DESKTOP-HE6KP3K\\SQLEXPRESS;Initial Catalog=CampusRestaurant;Integrated Security=True";
            conn.Open();
            SqlCommand sqlCommand = new SqlCommand("SELECT * FROM FOOD WHERE RES_ID = @resID", conn);
            sqlCommand.Parameters.AddWithValue("resID", Convert.ToInt32(Session["selectedRestaurantID"]));
            //SqlCommand sqlCommand = new SqlCommand("SELECT * FROM FOOD", conn);
            SqlDataReader reader;
            try
            {
                reader = sqlCommand.ExecuteReader();
                while (reader.Read())
                {
                    FoodItem foodItem = new FoodItem((int)reader.GetValue(0),(String)reader.GetValue(1), (Double)reader.GetValue(2), (String)reader.GetValue(3), (String)reader.GetValue(4), (int)reader.GetValue(0));
                    LoadContentToFoodMenuPanel(foodItem);
                }
                reader.Close();
            }
            catch (Exception exception)
            {
                System.Diagnostics.Debug.WriteLine(exception.Message);
            }
            conn.Close();
        }

        private void LoadContentToFoodMenuPanel(FoodItem foodItem)
        {
            Panel foodItemPanel = new Panel();
            foodItemPanel.Attributes.CssStyle.Add("display", "block");
            foodItemPanel.Attributes.CssStyle.Add("height", "170px");

            Image img = new Image();
            img.ImageUrl = foodItem.logoURL;
            img.Attributes.CssStyle.Add("width","100px");
            img.Attributes.CssStyle.Add("height", "100px");
            img.Attributes.CssStyle.Add("float", "left");
            img.Attributes.CssStyle.Add("display", "inline");
            img.Attributes.CssStyle.Add("margin-top", "20px");

            Panel foodItemInfoPanel = new Panel();
            foodItemInfoPanel.Attributes.CssStyle.Add("text-align", "center");
            foodItemInfoPanel.Attributes.CssStyle.Add("height", "auto");
            foodItemInfoPanel.Attributes.CssStyle.Add("margin-left", "110px");

            HtmlGenericControl foodItemNameLabel = new HtmlGenericControl("h4");
            foodItemNameLabel.InnerText = foodItem.name;

            HtmlGenericControl foodItemDescription = new HtmlGenericControl("p");
            foodItemDescription.InnerText = foodItem.description;
            foodItemDescription.Attributes.CssStyle.Add("text-align", "left");

            HtmlGenericControl foodItemPrice = new HtmlGenericControl("span");
            foodItemPrice.InnerText = "$" + Convert.ToString(foodItem.price);

            CusNoTextBox numberOrder = new CusNoTextBox(foodItem);
            numberOrder.ID = "noOrderInput" + Convert.ToString(foodItem.id);
            numberOrder.CssClass = "noOrderInput";
            numberOrder.Attributes.CssStyle.Add("margin-left", "5px");
            numberOrder.Attributes.CssStyle.Add("width", "30px");

            numberOrder.Attributes.Add("onkeypress", "return allowOnlyNumber(event);");
            numberOrder.Attributes.Add("data-price", Convert.ToString(foodItem.price));
            numberOrder.Attributes.Add("onblur", "onBlur()");

            foodItemInfoPanel.Controls.Add(foodItemNameLabel);
            foodItemInfoPanel.Controls.Add(foodItemDescription);
            foodItemInfoPanel.Controls.Add(foodItemPrice);
            foodItemInfoPanel.Controls.Add(numberOrder);

            foodItemPanel.Controls.Add(img);
            foodItemPanel.Controls.Add(foodItemInfoPanel);

            this.FoodMenuPanel.Controls.Add(foodItemPanel);
        }

        protected void SubmitBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Payment.aspx");
        }
    }
}