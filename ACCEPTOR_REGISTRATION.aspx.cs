using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BLOOD_BANK_MANAGEMENT_SYSTEM
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string sql = "insert into ACCEPTOR_REGISTRATION(NAME,AGE,GENDER,REQUEST_FOR,PACK,CONTACT,ADDRESS) VALUES (@NAME,@AGE,@GENDER,@REQUEST_FOR,@PACK,@CONTACT,@ADDRESS)";


            if (string.IsNullOrEmpty(TextBox1.Text) || string.IsNullOrEmpty(TextBox2.Text) ||
                string.IsNullOrEmpty(DropDownList2.Text) || string.IsNullOrEmpty(DropDownList1.Text) || string.IsNullOrEmpty(DropDownList3.Text) ||
                string.IsNullOrEmpty(TextBox3.Text) || string.IsNullOrEmpty(TextBox4.Text))
            {

                Response.Write("<script>alert('PLEASE ENTER THE REQUIRED DETAILS.');</script>");
                return;
            }

            using (var conn = new SqlConnection("Data Source=LAPTOP-HKQ0GTTC;Initial Catalog=\"BLOOD BANK\";Integrated Security=True;"))
            {
                conn.Open();
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {

                    cmd.Parameters.AddWithValue("@NAME", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@AGE", TextBox2.Text);
                    cmd.Parameters.AddWithValue("@GENDER", DropDownList2.Text);
                    cmd.Parameters.AddWithValue("@REQUEST_FOR", DropDownList1.Text);
                    cmd.Parameters.AddWithValue("@PACK", DropDownList3.Text);
                    cmd.Parameters.AddWithValue("@CONTACT", TextBox3.Text);
                    cmd.Parameters.AddWithValue("@ADDRESS", TextBox4.Text);
                    Response.Write("<script>alert('REGISTRATION SUCCESSFUL.');</script>");

                    TextBox1.Text = string.Empty;
                    TextBox2.Text = string.Empty;
                    DropDownList2.ClearSelection();
                    DropDownList1.ClearSelection();
                    DropDownList3.ClearSelection();
                    TextBox3.Text = string.Empty;
                    TextBox4.Text = string.Empty;
                    cmd.ExecuteNonQuery();
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('REGISTRATION CANCELLED.');</script>");
            TextBox1.Text = String.Empty;
            TextBox2.Text = String.Empty;
            DropDownList2.SelectedIndex = -1;
            DropDownList1.SelectedIndex = -1;
            DropDownList3.SelectedIndex = -1;
            TextBox3.Text = String.Empty;
            TextBox4.Text = String.Empty;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            TextBox1.Text = String.Empty;
            TextBox2.Text = String.Empty;
            DropDownList2.SelectedIndex = -1;
            DropDownList1.SelectedIndex = -1;
            DropDownList3.SelectedIndex = -1;
            TextBox3.Text = String.Empty;
            TextBox4.Text = String.Empty;
            Response.Redirect("LOGIN_PAGE.aspx");
        }
    }
}