using System;
using System.Configuration;
using System.Data.SQLite;
using System.Web.UI;

namespace EmployeeManagementSystem
{
    public partial class AdminLogin : Page
    {
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text;
            string password = txtPassword.Text;

            using (SQLiteConnection conn = new SQLiteConnection(ConfigurationManager.ConnectionStrings["EmployeeDB"].ConnectionString))
            {
                conn.Open();
                string query = "SELECT * FROM Admins WHERE Username = @username AND Password = @password";
                using (SQLiteCommand cmd = new SQLiteCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@username", username);
                    cmd.Parameters.AddWithValue("@password", password);

                    SQLiteDataReader reader = cmd.ExecuteReader();
                    if (reader.Read()) // If login successful
                    {
                        // Retrieve department information from the Admins table
                        string department = reader["Department"].ToString();

                        // Set session variables
                        Session["IsAuthenticated"] = true;
                        Session["Department"] = department;

                        // Redirect to Employee.aspx with the correct theme set
                        Response.Redirect("Employee.aspx");
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
