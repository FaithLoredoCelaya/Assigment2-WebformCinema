using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assigment2FaithLoredo
{
    public partial class Buy : System.Web.UI.Page
    {
        int m1 = 100;
        int m2 = 100;
        int m3 = 100;
        int m4 = 100;
        int m5 = 100;
        static double subtotal = 0;
        bool logIn = false;
        DateTime day = DateTime.Now;



        static int noTickets;
        static string name;
        static string movies;
        static string movieTotal;
        static string time;

        protected void Page_Load(object sender, EventArgs e)
        {
            name = Session["name"].ToString();
            if (name != "Guest")
            {
                logIn = true;
            }
        }

        protected void addTicket_Click(object sender, EventArgs e)
        {
            DateTime dt = new DateTime();
            dt = DateTime.Now;

            if (dt.Hour > Convert.ToInt32(timeList.SelectedItem.Value))
            {
                Label6.Text="Error! You can not pick that time slot";
                return;
            }

            if (m11.Checked == true)
            {
                m1--;
                cM1.Text =""+m1;
                movies = "Halloween";
            }
            if (m12.Checked == true)
            {
                m2--;
                cM2.Text = "" + m2;
                movies = "Killer Bean";
            }
            if (m13.Checked == true)
            {
                m3--;
                cM3.Text = "" + m3;
                movies = "John Wick";
            }
            if (m14.Checked == true)
            {
                m4--;
                cM4.Text = "" + m4;
                movies = "Old Boy";
            }
            if (m15.Checked == true)
            {
                m5--;
                cM5.Text = "" + m5;
                movies = "2001: A Space Odessy";
            }
            if ((int)day.DayOfWeek == 2)
            {
                tues.Text = "Today is Tuesday! $5 for admittance.";
                subtotal = 5;
            }
            else
            {
                if (ga.Checked == true)
                {
                    subtotal += 15;
                }
                if (child.Checked == true)
                {
                    subtotal += 5;
                }
            }

            ticketTotal.Text = ""+subtotal;
            if (logIn == false)
            {
                Discount.Text = "0%";
                total.Text = "" + subtotal;
            }

            if (logIn == true)
            {
                Discount.Text = "20%";
                subtotal *=(1- 0.2);
                total.Text = "" + subtotal;
            }
            
            noTickets += 1;


            time = timeList.SelectedItem.Text;

            movieTotal += movies;
            if (IsPostBack == true)
            {
                movieTotal += " @ "+time+" - ";
            }

            Session["noTickets"] = noTickets;
            Session["movie"] = movieTotal;
            Session["total"] = subtotal;


            ticketNo.Text = ""+noTickets;

        }

        protected void buyTicket_Click(object sender, EventArgs e)
        {
            Server.Transfer("Confrimation.aspx");
        }

        protected void logOut_Click(object sender, EventArgs e)
        {
            Server.Transfer("LogIns.aspx");
        }

        protected void timeList_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}