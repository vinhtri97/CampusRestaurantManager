using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CampusRestaurantManager
{
    public partial class AdminRestaurant : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label9.Text = "";
            if (!IsPostBack)
            {
                GridView1.DataSource = SqlDataSource1;
                GridView1.DataBind();
            }
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
            Label9.Text = "";
            GridView1.EditRowStyle.BackColor = System.Drawing.Color.Orange;
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
            Label9.Text = "";
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Label RES_ID = GridView1.Rows[e.RowIndex].FindControl("Label8") as Label;
            TextBox RES_NAME = GridView1.Rows[e.RowIndex].FindControl("TextBox1") as TextBox;
            TextBox RES_ADDRESS = GridView1.Rows[e.RowIndex].FindControl("TextBox2") as TextBox;
            TextBox RES_HOURS = GridView1.Rows[e.RowIndex].FindControl("TextBox3") as TextBox;
            TextBox RES_DAYS = GridView1.Rows[e.RowIndex].FindControl("TextBox4") as TextBox;
            TextBox RES_PHONENO = GridView1.Rows[e.RowIndex].FindControl("TextBox5") as TextBox;
            TextBox RES_LOGO = GridView1.Rows[e.RowIndex].FindControl("TextBox6") as TextBox;
            String mycon = "Data Source=FiniDanKingdom\\SQLEXPRESS;Initial Catalog=CampusRestaurant;Integrated Security=True";
            String updatedata = "Update Restaurants set RES_NAME='" + RES_NAME.Text + "', RES_ADDRESS='" + RES_ADDRESS.Text + "', RES_HOURS='" + RES_HOURS.Text + "', RES_DAYS='" + RES_DAYS.Text + "', RES_PHONENO='" + RES_PHONENO.Text + "', RES_LOGO='" + RES_LOGO.Text + "' where RES_ID=" + RES_ID.Text;
            SqlConnection con = new SqlConnection(mycon);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = updatedata;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            Label9.Text = "Row Data Has Been Updated Successfully";
            GridView1.EditIndex = -1;
            SqlDataSource1.DataBind();
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {

            TextBox RES_NAME = GridView1.FooterRow.FindControl("TextBox8") as TextBox;
            TextBox RES_ADDRESS = GridView1.FooterRow.FindControl("TextBox9") as TextBox;
            TextBox RES_HOURS = GridView1.FooterRow.FindControl("TextBox10") as TextBox;
            TextBox RES_DAYS = GridView1.FooterRow.FindControl("TextBox11") as TextBox;
            TextBox RES_PHONENO = GridView1.FooterRow.FindControl("TextBox12") as TextBox;
            TextBox RES_LOGO = GridView1.FooterRow.FindControl("TextBox13") as TextBox;
            String query = "insert into Restaurants(RES_NAME,RES_ADDRESS,RES_HOURS,RES_DAYS,RES_PHONENO,RES_LOGO) values('" + RES_NAME.Text + "','" + RES_ADDRESS.Text + "','" + RES_HOURS.Text + "','" + RES_DAYS.Text + "','" + RES_PHONENO.Text + "','" + RES_LOGO.Text + "')";
            String mycon = SqlDataSource1.ConnectionString;
            SqlConnection con = new SqlConnection(mycon);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = query;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            Label9.Text = "New Row Inserted Successfully";
            SqlDataSource1.DataBind();
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

            Label RES_ID = GridView1.Rows[e.RowIndex].FindControl("Label1") as Label;
            String mycon = SqlDataSource1.ConnectionString;
            String updatedata = "delete from Restaurants where RES_ID=" + RES_ID.Text;
            SqlConnection con = new SqlConnection(mycon);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = updatedata;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            Label9.Text = "Row Data Has Been Deleted Successfully";
            GridView1.EditIndex = -1;
            SqlDataSource1.DataBind();
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
        }
    }
}