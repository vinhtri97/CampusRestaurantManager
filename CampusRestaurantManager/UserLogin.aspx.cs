using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CampusRestaurantManager
{
    public partial class UserLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.ValidUserCustomValidator.Visible = false;
        }

        protected void SignupBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserRegister.aspx");
        }

        protected void SigninBtn_Click(object sender, EventArgs e)
        {
            if (this.userNameTxtbox.Text == "admin" && this.passwordTxtbox.Text == "admin")
            {
                Response.Redirect("Admin.aspx");
            }
            if (this.userNameTxtbox.Text != "" && this.passwordTxtbox.Text != "")
            {
                this.usernameTxtBoxCustomValidator.IsValid = true;
                this.passwordTxtBoxCustomValidator.IsValid = true;
            }
            else
            {
                this.usernameTxtBoxCustomValidator.IsValid = false;
                this.passwordTxtBoxCustomValidator.IsValid = false;
                return;
            }

            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = this.SqlDataSource1.ConnectionString;
            conn.Open();
            SqlCommand sqlCommand = new SqlCommand("SELECT * FROM [Users] WHERE User_EMAIL = @0 AND User_PASSWORD = @1", conn);
            sqlCommand.Parameters.Add(new SqlParameter("0",userNameTxtbox.Text));
            sqlCommand.Parameters.Add(new SqlParameter("1", passwordTxtbox.Text));
            SqlDataReader reader;
            bool userExist = false;
            try
            {
                reader = sqlCommand.ExecuteReader();
                if (reader.Read())
                {
                    userExist = true;
                }
                reader.Close();
            }
            catch (Exception exception)
            {
                System.Diagnostics.Debug.WriteLine(exception.Message);
            }
            finally
            {
                conn.Close();
            }
            if (userExist)
            {
                Session["userEmail"] = userNameTxtbox.Text;
                Response.Redirect("RestaurantWebForm.aspx");
                this.ValidUserCustomValidator.IsValid = true;
            }
            else
            {
                this.ValidUserCustomValidator.Visible = true;
                this.ValidUserCustomValidator.IsValid = false;
            }
        }
    }
}