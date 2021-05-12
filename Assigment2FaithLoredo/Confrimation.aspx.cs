using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assigment2FaithLoredo
{
    public partial class Confrimation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpContext currContext = HttpContext.Current;
            name.Text += " " + Session["name"];
            movieOut.Text = Session["movie"].ToString();
            total.Text =Session["noTickets"]+" Tickets - "+ "$" + Session["total"].ToString();
        }
    }
}