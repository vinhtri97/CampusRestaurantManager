using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CampusRestaurantManager
{
    public class FoodItem
    {
        public int id { get; }
        public String name { get; set; }
        public double price { get; set; }
        public String description { get; set; }
        public String logoURL { get; set; }
        public int restaurantID { get; set; }
        public FoodItem(int id,String name, double price, String description, String logoURL, int restaurantID)
        {
            this.id = id;
            this.name = name;
            this.price = price;
            this.description = description;
            this.logoURL = logoURL;
            this.restaurantID = restaurantID;
        }
    }
}