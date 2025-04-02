using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BLOOD_BANK_MANAGEMENT_SYSTEM
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string USER_NAME = TextBox1.Text;
            string PASSWORD = TextBox2.Text;
            string connectionString = "Data Source=LAPTOP-HKQ0GTTC;Initial Catalog=\"BLOOD BANK\";Integrated Security=True;";

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string query = "SELECT PASSWORD FROM ADMIN WHERE USER_NAME = @USER_NAME";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@USER_NAME", USER_NAME);

                conn.Open();
                var result = cmd.ExecuteScalar();

                if (string.IsNullOrEmpty(USER_NAME) || string.IsNullOrEmpty(PASSWORD))
                {
                    Response.Write("<script>alert('PLEASE ENTER REQUIRED DETAILS.');</script>");
                    return;
                }

                if (result != null)
                {
                    string storedPassword = result.ToString();
                    if (PASSWORD == storedPassword)
                    {
                        Response.Redirect("ADMIN_SEARCH.aspx");
                        TextBox1.Text = string.Empty;
                        TextBox2.Text = string.Empty;
                    }
                    else
                    {
                        Response.Write("<script>alert('INCORRECT PASSWORD.');</script>");
                        TextBox2.Text = string.Empty;
                    }
                }
                else
                {
                    Response.Write("<script>alert('USERNAME NOT FOUND.');</script>");
                    TextBox1.Text = string.Empty;
                }
            }

        }
    }
}