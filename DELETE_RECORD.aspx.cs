using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BLOOD_BANK_MANAGEMENT_SYSTEM
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("LOGIN_PAGE.aspx");
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            using (var conn = new SqlConnection("Data Source=LAPTOP-HKQ0GTTC;Initial Catalog=\"BLOOD BANK\";Integrated Security=True;"))
            {
                conn.Open();
                SqlCommand command;
                SqlDataAdapter adapter = new SqlDataAdapter();
                String sql = "";

                sql = "Delete DONER_REGISTRATION where ID='"+TextBox1.Text+"'";

                command = new SqlCommand(sql, conn);

                adapter.DeleteCommand = new SqlCommand(sql, conn);
                adapter.DeleteCommand.ExecuteNonQuery();

                command.Dispose();
                conn.Close();
                Response.Write("<script>alert('DONER DELETED SUCCESSFULLY.');</script>");
                TextBox1.Text = string.Empty;
            }

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            using (var conn = new SqlConnection("Data Source=LAPTOP-HKQ0GTTC;Initial Catalog=\"BLOOD BANK\";Integrated Security=True;"))
            {
                conn.Open();
                SqlCommand command;
                SqlDataAdapter adapter = new SqlDataAdapter();
                String sql = "";

                sql = "Delete ACCEPTOR_REGISTRATION where ID='" + TextBox2.Text + "'";

                command = new SqlCommand(sql, conn);

                adapter.DeleteCommand = new SqlCommand(sql, conn);
                adapter.DeleteCommand.ExecuteNonQuery();

                command.Dispose();
                conn.Close();
                Response.Write("<script>alert('ACCEPTOR DELETED SUCCESSFULLY.');</script>");
                TextBox2.Text = string.Empty;
            }

        }
    }
}