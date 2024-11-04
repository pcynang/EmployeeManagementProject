<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Usage.aspx.cs" Inherits="EmployeeManagementProject.Usage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="max-w-4xl mx-auto p-6 bg-white rounded-md shadow-md">
        <h1 class="text-3xl font-bold mb-4">Usage Instructions</h1>

        <h2 class="text-2xl font-semibold mb-2">For Administrators</h2>
        <ol class="list-decimal list-inside mb-4 text-gray-700">
            <li>Log in via the <strong>Admin Login</strong> page using the provided credentials. (Username:'admin1@example.com' password:'password123')
 </li>
            <li>Navigate to the <strong>Employee</strong> page to search for and edit employee information.</li>
            <li>Update fields such as First Name, Last Name, and Department as needed.</li>
            <li>Click the <strong>Update</strong> button to save changes.</li>
            <li>Use the <strong>Logout</strong> option to securely end your session.</li>
        </ol>

        <h2 class="text-2xl font-semibold mb-2">For Employees</h2>
        <ol class="list-decimal list-inside mb-4 text-gray-700">
            <li>Log in via the <strong>Employee Login</strong> page using your email and password.( Day Shift Username: 'john.doe@example.com' Day Shift Password: 'default_password', Night Shift Username: 'jane.smith@example.com' Night Shift Password: 'default_password
')
</li>
            <li>Access your <strong>Employee Dashboard</strong>, which includes announcements, quick links, and a performance overview.</li>
            <li>The dashboard will reflect the appropriate theme based on your department (Day Shift or Night Shift).</li>
            <li>Click <strong>Logout</strong> to end your session securely.</li>
        </ol>
    </div>
</asp:Content>
