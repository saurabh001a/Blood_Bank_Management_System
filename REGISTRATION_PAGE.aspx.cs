using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BLOOD_BANK_MANAGEMENT_SYSTEM
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string sql = "INSERT INTO REGISTRATION_TABLE (FIRST_NAME, MIDDLE_NAME, LAST_NAME, GENDER, E_MAIL, CONTACT_NO, CITY, ADDRESS, USER_NAME, PASSWORD) " +
             "VALUES (@FIRST_NAME, @MIDDLE_NAME, @LAST_NAME, @GENDER, @E_MAIL, @CONTACT_NO, @CITY, @ADDRESS, @USER_NAME, @PASSWORD)";

            if (string.IsNullOrEmpty(TextBox1.Text) || string.IsNullOrEmpty(TextBox2.Text) ||
                string.IsNullOrEmpty(TextBox3.Text) || string.IsNullOrEmpty(DropDownList1.Text) ||
                string.IsNullOrEmpty(TextBox4.Text) || string.IsNullOrEmpty(TextBox5.Text) ||
                string.IsNullOrEmpty(TextBox6.Text) || string.IsNullOrEmpty(TextBox7.Text) ||
                string.IsNullOrEmpty(TextBox8.Text) || string.IsNullOrEmpty(TextBox9.Text))
            {
                Response.Write("<script>alert('PLEASE ENTER THE REQUIRED DETAILS');</script>");
                return;
            }

            using (var conn = new SqlConnection("Data Source=LAPTOP-HKQ0GTTC;Initial Catalog=\"BLOOD BANK\";Integrated Security=True;"))
            {
                conn.Open();
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    // Adding parameters in a loop to avoid redundancy
                    cmd.Parameters.AddWithValue("@FIRST_NAME", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@MIDDLE_NAME", TextBox2.Text);
                    cmd.Parameters.AddWithValue("@LAST_NAME", TextBox3.Text);
                    cmd.Parameters.AddWithValue("@GENDER", DropDownList1.SelectedValue);
                    cmd.Parameters.AddWithValue("@E_MAIL", TextBox4.Text);
                    cmd.Parameters.AddWithValue("@CONTACT_NO", TextBox5.Text);
                    cmd.Parameters.AddWithValue("@ADDRESS", TextBox6.Text);
                    cmd.Parameters.AddWithValue("@CITY", TextBox7.Text);
                    cmd.Parameters.AddWithValue("@USER_NAME", TextBox8.Text);
                    cmd.Parameters.AddWithValue("@PASSWORD", TextBox9.Text);

                    cmd.ExecuteNonQuery();
                    Response.Write("<script>alert('REGISTRATION SUCCESSFUL.');</script>");
                    Response.Redirect("LOGIN_PAGE.aspx");

                    // Clear all input fields after successful registration
                    var controls = new Control[] { TextBox1, TextBox2, TextBox3, DropDownList1, TextBox4, TextBox5, TextBox6, TextBox7, TextBox8, TextBox9 };
                    foreach (var control in controls)
                    {
                        if (control is TextBox)
                            ((TextBox)control).Text = string.Empty;
                        else if (control is DropDownList)
                            ((DropDownList)control).SelectedIndex = -1;
                    }
                }
            }

        }
    }
}