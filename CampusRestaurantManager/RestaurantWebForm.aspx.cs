using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace CampusRestaurantManager
{
    public partial class RestaurantWebForm : System.Web.UI.Page
    {
        static Random random = new Random();
        enum RestaurantPanelType {open, close };
        private void loadContentToRestaurantTabel(Restaurant restaurant)
        {
            Panel openningRestaurantInforPanel = new Panel();
            openningRestaurantInforPanel.Attributes.CssStyle.Add("height","200px");

            ImageButton image = new ImageButton();
            image.ID = Convert.ToString(restaurant.id);
            image.Width = 200;
            image.Height = 200;
            image.ImageUrl = restaurant.logoURL;
            image.Attributes.CssStyle.Add("float", "left");
            image.Click += new ImageClickEventHandler(this.Restaurant_Click);

            Panel restaurantLabelPanel = new Panel();
            restaurantLabelPanel.Attributes.CssStyle.Add("margin-left", "200px");
            restaurantLabelPanel.CssClass = "text-info text-center";

            HtmlGenericControl restaurantNameLabel = new HtmlGenericControl("h2");
            restaurantNameLabel.InnerText = restaurant.name;

            HtmlGenericControl restaurantOpenDayLabel = new HtmlGenericControl("p");
            restaurantOpenDayLabel.InnerText = restaurant.businessDate;

            HtmlGenericControl restaurantOpenHourLabel = new HtmlGenericControl("p");
            restaurantOpenHourLabel.InnerText = restaurant.businessHr;

            HtmlGenericControl restaurantPhoneLabel = new HtmlGenericControl("p");
            restaurantPhoneLabel.InnerText = restaurant.phone;

            restaurantLabelPanel.Controls.Add(restaurantNameLabel);
            restaurantLabelPanel.Controls.Add(restaurantOpenDayLabel);
            restaurantLabelPanel.Controls.Add(restaurantOpenHourLabel);
            restaurantLabelPanel.Controls.Add(restaurantPhoneLabel);

            openningRestaurantInforPanel.Style.Add("margin-top", "10px");
            openningRestaurantInforPanel.Controls.Add(image);
            openningRestaurantInforPanel.Controls.Add(restaurantLabelPanel);

            
            int result = random.Next(0, 2);
            if (result == 0)
                OpenningPanel.Controls.Add(openningRestaurantInforPanel);
            else
                ClosingPanel.Controls.Add(openningRestaurantInforPanel);
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = "Data Source=DESKTOP-HE6KP3K\\SQLEXPRESS;Initial Catalog=CampusRestaurant;Integrated Security=True";
            conn.Open();
            SqlCommand sqlCommand = new SqlCommand("SELECT * FROM Restaurants", conn);
            SqlDataReader reader;
            try
            {
                reader = sqlCommand.ExecuteReader();
                while (reader.Read())
                {
                    Restaurant restaurant = new Restaurant((int)reader.GetValue(0), (String)reader.GetValue(1), (String)reader.GetValue(2), (String)reader.GetValue(3), (String)reader.GetValue(4), (String)reader.GetValue(5), (String)reader.GetValue(6));
                    loadContentToRestaurantTabel(restaurant);
                }
                reader.Close();
            }
            catch (Exception exception)
            {
                System.Diagnostics.Debug.WriteLine(exception.Message);
            }
            conn.Close();
        }
        private void Restaurant_Click(object sender, EventArgs e)
        {
            ImageButton imageButton = (ImageButton)sender;
            Session.Add("selectedRestaurantID", Convert.ToInt32(imageButton.ID));
            Response.Redirect("FoodMenu.aspx");
        }
    }
}