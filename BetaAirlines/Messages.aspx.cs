using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BetaAirlines
{
    public partial class Messages : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            selectedMessageContainer.Visible = false;
        }

        protected void UserMessagesGV_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (!selectedMessageContainer.Visible)
            {
                selectedMessageContainer.Visible = true;
            }
        }
    }
}