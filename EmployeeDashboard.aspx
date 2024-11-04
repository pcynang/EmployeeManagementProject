<%@ Page Title="Employee Dashboard" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EmployeeDashboard.aspx.cs" Inherits="EmployeeManagementProject.EmployeeDashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="max-w-6xl mx-auto p-6 rounded-md shadow-md <%= Session["Department"].ToString() == "Night Shift" ? "bg-gray-800 text-white" : "bg-white text-gray-800" %>">
        <h1 class="text-3xl font-bold mb-6">Welcome to the Employee Dashboard</h1>

        <!-- Announcements Section -->
        <div class="mb-6 p-4 rounded-md <%= Session["Department"].ToString() == "Night Shift" ? "bg-gray-700" : "bg-gray-100" %>">
            <h2 class="text-xl font-semibold mb-2">Announcements</h2>
            <ul class="list-disc pl-5">
                <li>Company meeting scheduled for next Monday at 10 AM.</li>
                <li>New health insurance policies are now available for review.</li>
                <li>Remember to complete your quarterly self-assessment by the end of the month.</li>
            </ul>
        </div>

        <!-- Quick Links Section -->
        <div class="mb-6 p-4 rounded-md <%= Session["Department"].ToString() == "Night Shift" ? "bg-gray-700" : "bg-gray-100" %>">
            <h2 class="text-xl font-semibold mb-2">Quick Links</h2>
            <div class="grid grid-cols-1 sm:grid-cols-2 gap-4">
                <a href="#" class="<%= Session["Department"].ToString() == "Night Shift" ? "bg-gray-600 hover:bg-gray-500" : "bg-indigo-100 hover:bg-indigo-200" %> p-3 rounded-md text-center font-medium">My Profile</a>
                <a href="#" class="<%= Session["Department"].ToString() == "Night Shift" ? "bg-gray-600 hover:bg-gray-500" : "bg-indigo-100 hover:bg-indigo-200" %> p-3 rounded-md text-center font-medium">Request Time Off</a>
                <a href="#" class="<%= Session["Department"].ToString() == "Night Shift" ? "bg-gray-600 hover:bg-gray-500" : "bg-indigo-100 hover:bg-indigo-200" %> p-3 rounded-md text-center font-medium">Company Policies</a>
                <a href="#" class="<%= Session["Department"].ToString() == "Night Shift" ? "bg-gray-600 hover:bg-gray-500" : "bg-indigo-100 hover:bg-indigo-200" %> p-3 rounded-md text-center font-medium">IT Support</a>
            </div>
        </div>

        <!-- Performance Overview Section -->
        <div class="p-4 rounded-md <%= Session["Department"].ToString() == "Night Shift" ? "bg-gray-700" : "bg-gray-100" %>">
            <h2 class="text-xl font-semibold mb-2">Performance Overview</h2>
            <p>Your recent performance reviews have been strong. Keep up the great work!</p>
            <div class="mt-4">
                <p><strong>Project Deadlines:</strong> 3 upcoming this quarter</p>
                <p><strong>Tasks Completed:</strong> 15 this month</p>
                <p><strong>Attendance:</strong> Perfect</p>
            </div>
        </div>
    </div>
</asp:Content>
