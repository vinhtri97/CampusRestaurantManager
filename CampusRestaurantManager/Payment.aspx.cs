using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CampusRestaurantManager
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void confirm_purchase_Click(object sender, EventArgs e)
        {
            String Message = "Successfully order. A confirmed email has sent to your email!";
            Page.ClientScript.RegisterStartupScript(
              Page.GetType(),
              "MessageBox",
              "<script language='javascript'>alert('" + Message + "');</script>"
            );

            // Specify the from and to email address
            MailMessage mailMessage = new MailMessage("letranvinhtri@gmail.com", (String)Session["userEmail"]);
            // Specify the email body
            mailMessage.Body = "This is a confirmed email from Campus Restaurant that you have ordered.";
            // Specify the email Subject
            mailMessage.Subject = "Campus Restaurant Confirmed Email";

            // Specify the SMTP server name and post number
            SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);
            // Specify your gmail address and password
            smtpClient.Credentials = new System.Net.NetworkCredential()
            {
                UserName = "letranvinhtri@gmail.com",
                Password = "87864428"
            };
            // Gmail works on SSL, so set this property to true
            smtpClient.EnableSsl = true;
            // Finall send the email message using Send() method
            smtpClient.Send(mailMessage);


            Response.Redirect("EndingPage.aspx");
        }
    }
}