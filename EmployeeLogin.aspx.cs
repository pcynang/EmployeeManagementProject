using System;
using System.Configuration;
using System.Data.SQLite;
using System.Web.UI;

namespace EmployeeManagementSystem
{
    public partial class EmployeeLogin : Page
    {
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string email = txtUsername.Text;
            string password = txtPassword.Text;

            using (SQLiteConnection conn = new SQLiteConnection(ConfigurationManager.ConnectionStrings["EmployeeDB"].ConnectionString))
            {
                conn.Open();
                string query = "SELECT * FROM Employees WHERE Email = @Email AND Password = @Password";

                using (SQLiteCommand cmd = new SQLiteCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Email", email);
                    cmd.Parameters.AddWithValue("@Password", password);

                    using (SQLiteDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.Read()) // Successful login
                        {
                            Session["IsAuthenticated"] = true;
                            Session["Department"] = reader["Department"].ToString(); // Set department to control theme
                            Response.Redirect("EmployeeDashboard.aspx");
                        }
                        else
                        {
                            lblError.Text = "Invalid login credentials.";
                        }
                    }
                }
            }
        }
    }
}