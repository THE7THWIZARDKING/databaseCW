<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="databaseCW.Properties.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Dashboard - Database CW</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
</head>
<body class="bg-gray-50">
    <form id="form1" runat="server">
        <!-- Enhanced Navigation -->
        <nav class="bg-gray-800 shadow-lg">
            <div class="mx-auto max-w-7xl px-4 sm:px-6 lg:px-8">
                <div class="flex h-16 items-center justify-between">
                    <asp:HyperLink CssClass="text-white text-xl font-semibold tracking-tight hover:text-gray-300 transition-colors" NavigateUrl="~/" runat="server">
                        Database CW
                    </asp:HyperLink>
                    
                    <!-- Desktop Menu -->
                    <div class="ml-10 flex items-center space-x-4">
     <asp:HyperLink NavigateUrl="~/Home" runat="server" 
         CssClass="px-3 py-2 rounded-md text-sm font-medium text-gray-300 hover:bg-gray-700 hover:text-white transition-colors">Home</asp:HyperLink>
     <asp:HyperLink NavigateUrl="~/user" runat="server" 
         CssClass="px-3 py-2 rounded-md text-sm font-medium text-gray-300 hover:bg-gray-700 hover:text-white transition-colors">Users</asp:HyperLink>
     <asp:HyperLink NavigateUrl="~/Task" runat="server" 
         CssClass="px-3 py-2 rounded-md text-sm font-medium text-gray-300 hover:bg-gray-700 hover:text-white transition-colors">Tasks</asp:HyperLink>
     <asp:HyperLink NavigateUrl="~/Milestone" runat="server" 
         CssClass="px-3 py-2 rounded-md text-sm font-medium text-gray-300 hover:bg-gray-700 hover:text-white transition-colors">Milestones</asp:HyperLink>
     <asp:HyperLink NavigateUrl="~/SubTask" runat="server" 
         CssClass="px-3 py-2 rounded-md text-sm font-medium text-gray-300 hover:bg-gray-700 hover:text-white transition-colors">SubTasks</asp:HyperLink>
     <asp:HyperLink NavigateUrl="~/Project_User" runat="server" 
         CssClass="px-3 py-2 rounded-md text-sm font-medium text-gray-300 hover:bg-gray-700 hover:text-white transition-colors">Project-User</asp:HyperLink>
     <asp:HyperLink NavigateUrl="~/Task_User" runat="server" 
         CssClass="px-3 py-2 rounded-md text-sm font-medium text-gray-300 hover:bg-gray-700 hover:text-white transition-colors">Task-User</asp:HyperLink>
     <asp:HyperLink NavigateUrl="~/Project" runat="server" 
         CssClass="px-3 py-2 rounded-md text-sm font-medium text-gray-300 hover:bg-gray-700 hover:text-white transition-colors">Projects</asp:HyperLink>
     <asp:HyperLink NavigateUrl="~/Project_Milestone" runat="server" 
         CssClass="px-3 py-2 rounded-md text-sm font-medium text-gray-300 hover:bg-gray-700 hover:text-white transition-colors">Projects-Milestone</asp:HyperLink>
 </div>
                    
                    <!-- Mobile Menu Button -->
                    <button class="md:hidden text-white p-2 hover:bg-gray-700 rounded-lg" onclick="toggleMobileMenu()">
                        <i class="fas fa-bars text-xl"></i>
                    </button>
                </div>
            </div>
            
            <!-- Mobile Menu -->
            <div class="md:hidden hidden" id="mobile-menu">
                <div class="px-2 pt-2 pb-3 space-y-1">
                    <asp:HyperLink NavigateUrl="~/Home" runat="server" 
                        CssClass="block px-3 py-2 text-base font-medium text-gray-300 hover:bg-gray-700 hover:text-white">Home</asp:HyperLink>
                    <!-- Add other mobile navigation links similarly -->
                </div>
            </div>
        </nav>

        <!-- Main Content -->
        <main class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-8">
            <!-- Header -->
            <div class="mb-8 text-center md:text-left">
                <h1 class="text-3xl font-bold text-gray-900 mb-2">Project Management Dashboard</h1>
                <p class="text-gray-600">Comprehensive overview of system metrics and performance</p>
            </div>

            <!-- Stats Grid -->
            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
                <!-- Top Performer Card -->
                <div class="bg-white p-6 rounded-xl shadow-lg hover:shadow-xl transition-shadow border-l-4 border-emerald-500">
                    <div class="flex items-center mb-4">
                        <div class="p-3 bg-emerald-100 rounded-lg mr-4">
                            <i class="fas fa-trophy text-emerald-600 text-2xl"></i>
                        </div>
                        <h2 class="text-xl font-semibold text-gray-800">Top Performer</h2>
                    </div>
                    <div class="pl-16">
                        <div class="flex items-center mb-3">
                            <div class="h-10 w-10 bg-blue-500 rounded-full flex items-center justify-center text-white mr-3">JD</div>
                            <div>
                                <p class="font-medium text-gray-900">John Doe</p>
                                <p class="text-sm text-gray-500">Senior Developer</p>
                            </div>
                        </div>
                        <div class="grid grid-cols-2 gap-4">
                            <div>
                                <p class="text-sm text-gray-500">Completed Tasks</p>
                                <p class="text-xl font-bold text-gray-900">42</p>
                            </div>
                            <div>
                                <p class="text-sm text-gray-500">Active Projects</p>
                                <p class="text-xl font-bold text-gray-900">5</p>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- System Implementation Card -->
                <div class="bg-white p-6 rounded-xl shadow-lg hover:shadow-xl transition-shadow border-l-4 border-blue-500">
                    <div class="flex items-center mb-4">
                        <div class="p-3 bg-blue-100 rounded-lg mr-4">
                            <i class="fas fa-cogs text-blue-600 text-2xl"></i>
                        </div>
                        <h2 class="text-xl font-semibold text-gray-800">System Overview</h2>
                    </div>
                    <div class="pl-16">
                        <ul class="space-y-3">
                            <li class="flex items-center">
                                <i class="fas fa-check-circle text-green-500 mr-2"></i>
                                <span class="text-gray-700">User Management Module</span>
                            </li>
                            <li class="flex items-center">
                                <i class="fas fa-check-circle text-green-500 mr-2"></i>
                                <span class="text-gray-700">Project Tracking System</span>
                            </li>
                            <li class="flex items-center">
                                <i class="fas fa-check-circle text-green-500 mr-2"></i>
                                <span class="text-gray-700">Real-time Analytics</span>
                            </li>
                        </ul>
                        <button class="mt-4 px-4 py-2 bg-blue-500 text-white rounded-lg hover:bg-blue-600 transition-colors">
                            View Details <i class="fas fa-arrow-right ml-2"></i>
                        </button>
                    </div>
                </div>

                <!-- Testing Document Card -->
                <div class="bg-white p-6 rounded-xl shadow-lg hover:shadow-xl transition-shadow border-l-4 border-amber-500">
                    <div class="flex items-center mb-4">
                        <div class="p-3 bg-amber-100 rounded-lg mr-4">
                            <i class="fas fa-clipboard-check text-amber-600 text-2xl"></i>
                        </div>
                        <h2 class="text-xl font-semibold text-gray-800">Testing Metrics</h2>
                    </div>
                    <div class="pl-16">
                        <div class="mb-4">
                            <div class="flex justify-between mb-2">
                                <span class="text-sm font-medium text-gray-700">Test Coverage</span>
                                <span class="text-sm font-medium text-amber-600">85%</span>
                            </div>
                            <div class="h-2 bg-gray-200 rounded-full">
                                <div class="h-2 bg-amber-500 rounded-full w-4/5"></div>
                            </div>
                        </div>
                        <div class="flex justify-between items-center">
                            <div>
                                <p class="text-sm text-gray-500">Successful Tests</p>
                                <p class="text-xl font-bold text-gray-900">1,234</p>
                            </div>
                            <div class="text-right">
                                <p class="text-sm text-gray-500">Pending Tests</p>
                                <p class="text-xl font-bold text-gray-900">56</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>

        <script>
            function toggleMobileMenu() {
                const mobileMenu = document.getElementById('mobile-menu');
                mobileMenu.classList.toggle('hidden');
            }
        </script>
    </form>
</body>
</html>