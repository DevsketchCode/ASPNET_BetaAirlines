using BetaAirlines.model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BetaAirlines
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtDate.Text = DateTime.Now.ToString("MM-dd-yyyy");
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // Create and populate the message
            UserMessage message = new UserMessage();

            message.Name = txtName.Text.Trim();
            message.Email = txtEmail.Text.Trim();
            message.Subject = txtSubject.Text.Trim();
            message.Message = txtMessage.Text.Trim();
            // Get the date and the time when the submit button was clicked
            message.ContactDate = DateTime.Now.ToString();
            // All new messages will be active (1)
            message.Active = 1;

            //
            //  Add the message to the database for review
            //

            // Setup the parameters
            UserMessages.InsertParameters["Name"].DefaultValue = message.Name;
            UserMessages.InsertParameters["Email"].DefaultValue = message.Email;
            UserMessages.InsertParameters["Subject"].DefaultValue = message.Subject;
            UserMessages.InsertParameters["Message"].DefaultValue = message.Message;
            UserMessages.InsertParameters["ContactDate"].DefaultValue = message.ContactDate;
            UserMessages.InsertParameters["Active"].DefaultValue = message.Active.ToString();

            // Run the insert command
            UserMessages.Insert();

            // Add the submission to a session
            Session.Add("ContactSubmission", message);

            // Redirect the user to the thank you page. 
            Response.Redirect("Confirmation.aspx");

        }
    }
}