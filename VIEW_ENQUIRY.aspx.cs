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
    public partial class WebForm10 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (var conn = new SqlConnection("Data Source=LAPTOP-HKQ0GTTC;Initial Catalog=\"BLOOD BANK\";Integrated Security=True;"))
            {
                conn.Open();
                SqlDataAdapter Adp = new SqlDataAdapter("SELECT * FROM ACCEPTOR_REGISTRATION", conn);
                DataTable Dt = new DataTable();
                Adp.Fill(Dt);
                GridView1.DataSource = Dt;
                GridView1.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("LOGIN_PAGE.aspx");
        }
    }
}