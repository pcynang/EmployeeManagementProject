<%@ Page Title="Employee Information" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Employee.aspx.cs" Inherits="EmployeeManagementSystem.Employee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="max-w-lg mx-auto bg-gray-200 p-6 rounded-md shadow-md">
        <h2 class="text-2xl font-bold mb-4 text-center">Employee Information</h2>

        <!-- Employee ID Search Field -->
        <asp:TextBox ID="txtEmployeeID" runat="server" CssClass="w-full px-4 py-2 mb-4 border rounded-md" placeholder="Enter Employee ID" />
        <asp:Button ID="btnSearch" runat="server" Text="Search" CssClass="w-full bg-green-500 text-white py-2 rounded-md" OnClick="SearchEmployee" />

        <!-- Display employee details after search -->
        <div id="employeeDetails" runat="server" visible="false">
            <label>First Name:</label>
            <asp:TextBox ID="txtFirstName" runat="server" CssClass="w-full px-4 py-2 mb-4 border rounded-md" />

            <label>Last Name:</label>
            <asp:TextBox ID="txtLastName" runat="server" CssClass="w-full px-4 py-2 mb-4 border rounded-md" />

            <label>Department:</label>
            <asp:DropDownList ID="ddlDepartment" runat="server" CssClass="w-full px-4 py-2 mb-4 border rounded-md">
                <asp:ListItem Value="Day Shift">Day Shift</asp:ListItem>
                <asp:ListItem Value="Night Shift">Night Shift</asp:ListItem>
            </asp:DropDownList>

            <label>Email:</label>
            <asp:TextBox ID="txtEmail" runat="server" CssClass="w-full px-4 py-2 mb-4 border rounded-md" ReadOnly="true" />

            <asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="w-full bg-blue-500 text-white py-2 rounded-md" OnClick="UpdateEmployee" />
        </div>

        <!-- Error Label for displaying messages -->
        <asp:Label ID="lblError" runat="server" CssClass="text-red-500 mt-4 block"></asp:Label>
    </div>
</asp:Content>
