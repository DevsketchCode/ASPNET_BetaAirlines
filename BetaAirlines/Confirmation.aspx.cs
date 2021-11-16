using BetaAirlines.model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BetaAirlines
{
    public partial class Confirmation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Boolean sessionExists = false;
            // Run Contact Confirmation
            sessionExists = ContactConfirmation();

            if (!sessionExists) Response.Redirect("Contact.aspx");


        }

        private Boolean ContactConfirmation()
        {
            Boolean sessionExists = false;

            if(Session["ContactSubmission"] != null)
            {
                // bring over the UserMessage object from the Session
                UserMessage message = (UserMessage)Session["ContactSubmission"];

                pnlContactSubmission.Visible = true;
                lblSubmissionName1.Text = message.Name;
                lblSubmissionDate.Text = message.ContactDate.ToString();
                lblSubmissionName2.Text = message.Name;
                lblSubmissionEmail.Text = message.Email;
                lblSubmissionSubject.Text = message.Subject;
                lblSubmissionMessage.Text = message.Message;
                sessionExists = true;
            }
            else
            {
                // There was no contact submission
                pnlContactSubmission.Visible = false;
            }

            return sessionExists;
        }
    }
}