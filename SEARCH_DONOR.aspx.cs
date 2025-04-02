using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BLOOD_BANK_MANAGEMENT_SYSTEM
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string conn = "Data Source=LAPTOP-HKQ0GTTC;Initial Catalog=\"BLOOD BANK\";Integrated Security=True;";

            using (var connectionString = new SqlConnection(conn))
            {
                connectionString.Open();

                string query = DropDownList1.SelectedValue == "ALL"
                              ? "SELECT * FROM DONER_REGISTRATION"
                              : "SELECT * FROM DONER_REGISTRATION WHERE BLOOD_GROUP = @BLOOD_GROUP";

                using (SqlDataAdapter Adp = new SqlDataAdapter(query, connectionString))
                {
                    if (DropDownList1.SelectedValue != "ALL")
                    {
                        Adp.SelectCommand.Parameters.AddWithValue("@BLOOD_GROUP", DropDownList1.SelectedValue);
                    }

                    DataTable Dt = new DataTable();
                    Adp.Fill(Dt);
                    GridView1.DataSource = Dt;
                    GridView1.DataBind();
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("LOGIN_PAGE.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
        }
    }
}