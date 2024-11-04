using System;
using System.Configuration;
using System.Data.SQLite;
using System.Web.UI;

namespace EmployeeManagementSystem
{
    public partial class Employee : Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["IsAuthenticated"] == null || !(bool)Session["IsAuthenticated"])
            {
                // Redirect to Login page if not authenticated
                Response.Redirect("AdminLogin.aspx");
            }
        }

        protected void SearchEmployee(object sender, EventArgs e)
        {
            string employeeID = txtEmployeeID.Text;

            // Check if Employee ID field is not empty
            if (string.IsNullOrWhiteSpace(employeeID))
            {
                lblError.Text = "Please enter a valid Employee ID.";
                employeeDetails.Visible = false;
                return;
            }

            using (SQLiteConnection conn = new SQLiteConnection(ConfigurationManager.ConnectionStrings["EmployeeDB"].ConnectionString))
            {
                conn.Open();
                string query = "SELECT * FROM Employees WHERE EmployeeID = @employeeID";
                using (SQLiteCommand cmd = new SQLiteCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@employeeID", employeeID);
                    using (SQLiteDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.Read()) // If record is found
                        {
                            txtFirstName.Text = reader["FirstName"].ToString();
                            txtLastName.Text = reader["LastName"].ToString();
                            ddlDepartment.SelectedValue = reader["Department"].ToString(); // Set dropdown value
                            txtEmail.Text = reader["Email"].ToString();

                            employeeDetails.Visible = true; // Show details section
                        }
                        else
                        {
                            lblError.Text = "Employee not found.";
                            employeeDetails.Visible = false;
                        }
                        reader.Close(); // Explicitly close the reader to avoid annoying concurrency bug
                    }
                }
            }
        }

        protected void UpdateEmployee(object sender, EventArgs e)
        {
            string employeeID = txtEmployeeID.Text;
            string employeeFirstName = txtFirstName.Text;
            string employeeLastName = txtLastName.Text;

            using (SQLiteConnection conn = new SQLiteConnection(ConfigurationManager.ConnectionStrings["EmployeeDB"].ConnectionString))
            {
                conn.Open();
                string query = "UPDATE Employees SET Department = @department, FirstName = @firstName, LastName = @lastName WHERE EmployeeID = @employeeID";
                using (SQLiteCommand cmd = new SQLiteCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@employeeID", employeeID);
                    cmd.Parameters.AddWithValue("@firstName", employeeFirstName);
                    cmd.Parameters.AddWithValue("@lastName", employeeLastName);
                    cmd.Parameters.AddWithValue("@department", ddlDepartment.SelectedValue);
                    int rowsAffected = cmd.ExecuteNonQuery();
                


                // Check if any rows were updated
                if (rowsAffected > 0)
                    {
                        lblError.Text = "Department updated successfully to: " + ddlDepartment.SelectedValue;
                    }
                    else
                    {
                        lblError.Text = "No update occurred. Check if EmployeeID exists.";
                    }
                }
            }
        }

    }
}
