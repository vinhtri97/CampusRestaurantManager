using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace CampusRestaurantManager
{
    public class CusNoTextBox: TextBox
    {
        public FoodItem foodItem { get; }
        public CusNoTextBox(FoodItem foodItem)
        {
            this.foodItem = foodItem;
        }
    }
}