using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BLOOD_BANK_MANAGEMENT_SYSTEM
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        string connectionString = "Data Source=LAPTOP-HKQ0GTTC;Initial Catalog=\"BLOOD BANK\";Integrated Security=True;";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SetBloodTypeCounts();
            }
        }

        private void SetBloodTypeCounts()
        {
            string[] bloodTypes = { "O+", "O-", "A+", "A-", "B+", "B-", "AB+", "AB-" };
            Label[] labels = { Label1, Label2, Label3, Label4, Label5, Label6, Label7, Label8 };

            for (int i = 0; i < bloodTypes.Length; i++)
            {
                string bloodType = bloodTypes[i];
                int count = GetDonorCount(bloodType);
                labels[i].Text = count.ToString();
            }
        }

        private int GetDonorCount(string bloodType)
        {
            string query = "SELECT COUNT(*) FROM DONER_REGISTRATION WHERE BLOOD_GROUP = @BloodType";
            int count = 0;

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                try
                {
                    conn.Open();
                    SqlCommand cmd = new SqlCommand(query, conn);
                    cmd.Parameters.AddWithValue("@BloodType", bloodType);
                    count = (int)cmd.ExecuteScalar();
                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex.Message);
                }
            }

            return count;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("LOGIN_PAGE.aspx");
        }
    }
}
