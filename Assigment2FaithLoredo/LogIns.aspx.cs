using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Assigment2FaithLoredo
{
    public partial class LogIns : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session["name"] = "Guest";
            Server.Transfer("buy.aspx");
        }

        protected void LogIn_Click(object sender, EventArgs e)
        {
            if (user.Text == "" || pass.Text == "")
            {
                error.Text = "Please do not leave any field empty, or select 'Skip Log In'";
                return;
            }
            using (SqlConnection conn = new SqlConnection())
            {
                conn.ConnectionString = "server=AMB3R\\AMBRIEL; database=Project; Integrated Security=SSPI";

                try
                {
                    using (SqlCommand cmd = new SqlCommand())
                    {
                        conn.Open();
                        cmd.Connection = conn;
                        cmd.CommandText = "Select UserName, Password where UserName=@User and Password=@password";
                        SqlParameter pcode1 = new SqlParameter();
                        pcode1.ParameterName = "@User";
                        pcode1.Value = user.Text;

                        SqlParameter pcode2 = new SqlParameter();
                        pcode2.ParameterName = "@password";
                        pcode2.Value = pass.Text;

                        cmd.Parameters.Add(pcode1);
                        cmd.Parameters.Add(pcode2);
                        
                        SqlDataReader reader = cmd.ExecuteReader();

                        if (reader.Read())
                        {
                            Session["name"] = reader[3].ToString();
                            if (reader[2].ToString() == "USER")
                            {
                                Server.Transfer("buy.aspx");
                            }
                            else
                            {
                                Server.Transfer("DbDisplay.aspx");
                            }
                        }
                        else
                        {
                            error.Text = "Wrong Username or password";
                        }

                    }
                }
                catch (SqlException ex)
                {
                    error.Text = "An Error has Occured: " + ex;
                }
            }
        }
    }
}