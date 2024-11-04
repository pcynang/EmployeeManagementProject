<%@ Page Title=" Admin Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="EmployeeManagementSystem.AdminLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="max-w-md mx-auto bg-gray-200 p-6 rounded-md shadow-md">
        <h2 class="text-2xl font-bold mb-6 text-center">Admin Login</h2>

        <!-- Email Field -->
        <div>
            <label for="txtUsername" class="block text-sm/6 font-medium text-gray-900">Email address</label>
            <div class="mt-2">
                <asp:TextBox ID="txtUsername" runat="server" CssClass="block w-full rounded-md border-0 px-4 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm/6" placeholder="Email" />
                <asp:RegularExpressionValidator ID="EmailValidator" runat="server"
                    ControlToValidate="txtUsername" ErrorMessage="Invalid email format"
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"
                    CssClass="text-red-500" />
            </div>
        </div>

        <!-- Password Field -->
        <div class="my-2">
            <label for="txtPassword" class="block text-sm/6 font-medium text-gray-900">Password</label>
            <div class="mt-2">
                <asp:TextBox ID="txtPassword" runat="server" CssClass="block w-full rounded-md border-0 px-4 py-1.5 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm/6" placeholder="Password" TextMode="Password" />

                <asp:RequiredFieldValidator ID="PasswordRequired" runat="server"
                    ControlToValidate="txtPassword" ErrorMessage="Password is required" Display="Dynamic"
                    CssClass="text-red-500" />
            </div>
        </div>

        <!-- Login Button -->
        <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="w-full bg-blue-500 text-white py-2 rounded-md" OnClick="btnLogin_Click" />

        <!-- Error Label -->
        <asp:Label ID="lblError" runat="server" CssClass="text-red-500 mt-2 block"></asp:Label>
    </div>
</asp:Content>
