using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CampusRestaurantManager
{
    public partial class AdminFoodItem : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            SqlDataSource1.InsertParameters["FOOD_NAME"].DefaultValue =
                ((TextBox)GridView1.FooterRow.FindControl("txtName")).Text;
            SqlDataSource1.InsertParameters["FOOD_PRICE"].DefaultValue =
                ((TextBox)GridView1.FooterRow.FindControl("txtPrice")).Text;
            SqlDataSource1.InsertParameters["FOOD_DESC"].DefaultValue =
                ((TextBox)GridView1.FooterRow.FindControl("txtDesc")).Text;
            SqlDataSource1.InsertParameters["IMG_SRC"].DefaultValue =
                ((TextBox)GridView1.FooterRow.FindControl("txtImage")).Text;
            SqlDataSource1.InsertParameters["RES_ID"].DefaultValue =
                ((DropDownList)GridView1.FooterRow.FindControl("DropDownList11")).SelectedValue;

            SqlDataSource1.Insert();
        }
    }
}