<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="EmployeeManagementProject._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
    <div class="max-w-4xl mx-auto p-6 bg-white rounded-md shadow-md">
        <h1 class="text-3xl font-bold mb-4">Project Details: Employee Management System</h1>

        <p class="text-lg mb-4">
            This Employee Management System is built using ASP.NET WebForms and ADO.NET with SQLite for data handling. It provides a secured platform for managing employee information, and a dummy interface for said employees.
        </p>

        <h2 class="text-2xl font-semibold mb-2">Features</h2>
        <ul class="list-disc list-inside mb-4 text-gray-700">
            <li>Customizable light and dark themes based on department (Day Shift and Night Shift).</li>
            <li>Separate login functionality for administrators and employees with session-based access control.</li>
            <li>Admin features for searching and editing employee data.</li>
            <li>Dummy Employee dashboard with announcements, quick links, and performance overview.</li>
            <li>Mobile-friendly interface using Tailwind CSS.</li>
        </ul>

        <h2 class="text-2xl font-semibold mb-2">Technical Details</h2>
        <p class="text-lg mb-4">
            This system is developed using <strong>ASP.NET WebForms</strong> for server-side processing and <strong>ADO.NET</strong> for database interactions, connected to an SQLite database. The UI is styled with <strong>Tailwind CSS</strong> to ensure a responsive, modern look suitable for both desktop and mobile use.
        </p>
    </div>
    </main>

</asp:Content>
