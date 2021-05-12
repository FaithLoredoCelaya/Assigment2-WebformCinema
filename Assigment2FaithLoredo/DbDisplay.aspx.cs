using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Assigment2FaithLoredo
{
    public partial class DbDisplay : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text +=" "+Session["name"];
            if (Session["name"] == null)
            {
                Server.Transfer("LogIns.aspx");
            }
        }

        protected void Refresh_Click(object sender, EventArgs e)
        {
            Server.Transfer("LogIns.aspx");
        }

        protected void Add_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection())
            {
                con.ConnectionString = "server=AMB3R\\AMBRIEL; database=Cinema; user=Krystal; password=1";
                try
                {
                    using (SqlCommand cmd = new SqlCommand())
                    {
                        con.Open();
                        cmd.Connection = con;
                        cmd.CommandText = "Insert into LogIns(UserID,password,FirstName,LastName,Role,Age) Values(@UserID,@password,@FirstName,@LastName,@Role,@Age)";
                        cmd.Parameters.AddWithValue("@UserID", tbUser.Text);
                        cmd.Parameters.AddWithValue("@password", tbPass.Text);
                        cmd.Parameters.AddWithValue("@FistName", tbFName.Text);
                        cmd.Parameters.AddWithValue("@LastName", tbLName.Text);
                        cmd.Parameters.AddWithValue("@Age", tbAge.Text);
                        cmd.Parameters.AddWithValue("@Role", roles.SelectedItem.Text);

                        cmd.ExecuteNonQuery();
                        lblresponse.Text = "Added Product";

                        con.Close();
                    }
                }
                catch (SqlException ex)
                {
                    lblresponse.Text = "Error: " + ex;
                }
            }
        }

        protected void addMovie_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection())
            {
                con.ConnectionString = "server=AMB3R\\AMBRIEL; database=Cinema; user=Krystal; password=1";
                try
                {
                    using (SqlCommand cmd = new SqlCommand())
                    {
                        con.Open();
                        cmd.Connection = con;
                        cmd.CommandText = "Insert into movies(MovID,Movie,Rating) Values(@MovID,@Movie,@Rating)";
                        cmd.Parameters.AddWithValue("@MovID", tbMID.Text);
                        cmd.Parameters.AddWithValue("@Movie", tbMovie.Text);
                        cmd.Parameters.AddWithValue("@Rating", rating.SelectedItem.Text);

                        cmd.ExecuteNonQuery();
                        lblresponse.Text = "Added Product";

                        con.Close();
                    }
                }
                catch (SqlException ex)
                {
                    lblresponse.Text = "Error: " + ex;
                }
            }
        
        }
    }
}