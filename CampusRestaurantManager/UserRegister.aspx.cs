using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CampusRestaurant
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        private enum UserType { teacher,student};
        private UserType userType;
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            if (RadioButton1.Checked)
            {
                Label1.Text = "@tamucc.edu";
                userType = UserType.teacher;
                TextArea1.Disabled = false;
            }
        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {
            if (RadioButton2.Checked)
            {
                Label1.Text = "@islander.tamucc.edu";
                userType = UserType.student;
                TextArea1.Disabled = true;
            }
        }
        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = RadioButton1.Checked || RadioButton2.Checked;
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                SqlConnection conn = new SqlConnection();
                conn.ConnectionString = this.SqlDataSource1.ConnectionString;
                conn.Open();
                SqlCommand sqlCommand = new SqlCommand("INSERT INTO Users VALUES(@0,@1,@2,@3,@4,@5,@6)", conn);
                sqlCommand.Parameters.Add(new SqlParameter("0", txtFirstName.Text));
                sqlCommand.Parameters.Add(new SqlParameter("1", txtLastName.Text));
                sqlCommand.Parameters.Add(new SqlParameter("2", nameof(userType)));
                //need update from fini
                sqlCommand.Parameters.Add(new SqlParameter("3", "123"));
                sqlCommand.Parameters.Add(new SqlParameter("4", txtEmail.Text));
                sqlCommand.Parameters.Add(new SqlParameter("5", txtPassword.Text));
                if (userType == UserType.teacher)
                    sqlCommand.Parameters.Add(new SqlParameter("6", "teacher"));
                else
                    sqlCommand.Parameters.Add(new SqlParameter("6", "null"));
                try
                {
                    sqlCommand.ExecuteNonQuery();
                    Response.Redirect("UserLogin.aspx");
                }
                catch(Exception error)
                {
                    System.Diagnostics.Debug.WriteLine(error.Message);
                }
                finally
                {
                    conn.Close();
                }
            }
        }

    }
}