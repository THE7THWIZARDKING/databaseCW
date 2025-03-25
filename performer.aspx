<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TopPerformer.aspx.cs" Inherits="databaseCW.TopPerformer" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Top Performers</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-50">
    <!-- Consistent Navigation -->
    <nav class="bg-gray-900 shadow-lg">
        <div class="mx-auto max-w-7xl px-4 sm:px-6 lg:px-8 flex h-16 items-center justify-between">
            <asp:HyperLink CssClass="text-white text-2xl font-bold tracking-tight hover:text-gray-300 transition-colors" NavigateUrl="~/" runat="server">
                <i class="fas fa-database mr-2"></i>Database CW
            </asp:HyperLink>
            <div class="ml-10 flex items-center space-x-6">
                <!-- Navigation links remain unchanged -->
                <asp:HyperLink NavigateUrl="~/Home" runat="server" 
                    CssClass="px-3 py-2 rounded-md text-sm font-medium text-gray-300 hover:bg-gray-700 hover:text-white transition-colors">Home</asp:HyperLink>
                <!-- Other navigation links -->
            </div>
        </div>
    </nav>

    <!-- Main Content -->
    <main class="mx-auto max-w-7xl px-4 sm:px-6 lg:px-8 py-8">
        <div class="bg-white rounded-lg shadow-sm border border-gray-200">
            <!-- Header Section -->
            <div class="px-6 py-4 border-b border-gray-200">
                <h2 class="text-2xl font-semibold text-gray-900">🏆 Top Performers</h2>
                <p class="mt-1 text-sm text-gray-500">Employee performance leaderboard based on completed tasks</p>
            </div>

            <!-- Leaderboard Table -->
            <div class="overflow-x-auto">
                <table class="w-full border-collapse">
                    <thead class="bg-gray-50">
                        <tr>
                            <th class="px-4 py-3 text-left text-xs font-medium text-gray-600 uppercase tracking-wider">Rank</th>
                            <th class="px-4 py-3 text-left text-xs font-medium text-gray-600 uppercase tracking-wider">Performer ID</th>
                            <th class="px-4 py-3 text-left text-xs font-medium text-gray-600 uppercase tracking-wider">Employee</th>
                            <th class="px-4 py-3 text-left text-xs font-medium text-gray-600 uppercase tracking-wider">Username</th>
                            <th class="px-4 py-3 text-left text-xs font-medium text-gray-600 uppercase tracking-wider">Tasks Completed</th>
                            <th class="px-4 py-3 text-left text-xs font-medium text-gray-600 uppercase tracking-wider">Address</th>
                            <th class="px-4 py-3 text-left text-xs font-medium text-gray-600 uppercase tracking-wider">Performance</th>
                        </tr>
                    </thead>
                    <tbody class="divide-y divide-gray-200">
                        <!-- Gold -->
                        <tr class="hover:bg-gray-50 transition-colors even:bg-gray-50">
                            <td class="px-4 py-3">
                                <span class="inline-flex items-center justify-center w-8 h-8 rounded-full bg-amber-400 text-white font-bold">1</span>
                            </td>
                            <td class="px-4 py-3 font-medium text-gray-900">27</td>
                            <td class="px-4 py-3 font-medium text-gray-900">Pooja Gurung</td>
                            <td class="px-4 py-3 text-gray-600">@treehouse9</td>
                            <td class="px-4 py-3">
                                <span class="px-2.5 py-1 rounded-full bg-green-100 text-green-800 text-sm">42</span>
                            </td>
                            <td class="px-4 py-3 text-gray-600">345 Tulsi Rd</td>
                            <td class="px-4 py-3">
                                <div class="flex items-center">
                                    <span class="text-yellow-400">★</span>
                                    <span class="ml-1 text-sm text-gray-600">98.7%</span>
                                </div>
                            </td>
                        </tr>

                        <!-- Silver -->
                        <tr class="hover:bg-gray-50 transition-colors even:bg-gray-50">
                            <td class="px-4 py-3">
                                <span class="inline-flex items-center justify-center w-8 h-8 rounded-full bg-gray-300 text-gray-800 font-bold">2</span>
                            </td>
                            <td class="px-4 py-3 font-medium text-gray-900">3</td>
                            <td class="px-4 py-3 font-medium text-gray-900">Aarav Khadka</td>
                            <td class="px-4 py-3 text-gray-600">@abc1234</td>
                            <td class="px-4 py-3">
                                <span class="px-2.5 py-1 rounded-full bg-yellow-100 text-yellow-800 text-sm">38</span>
                            </td>
                            <td class="px-4 py-3 text-gray-600">789 Pine Ave</td>
                            <td class="px-4 py-3">
                                <div class="flex items-center">
                                    <span class="text-yellow-400">★</span>
                                    <span class="ml-1 text-sm text-gray-600">95.2%</span>
                                </div>
                            </td>
                        </tr>

                        <!-- Bronze -->
                        <tr class="hover:bg-gray-50 transition-colors even:bg-gray-50">
                            <td class="px-4 py-3">
                                <span class="inline-flex items-center justify-center w-8 h-8 rounded-full bg-amber-700 text-white font-bold">3</span>
                            </td>
                            <td class="px-4 py-3 font-medium text-gray-900">4</td>
                            <td class="px-4 py-3 font-medium text-gray-900">Pratiksha Giri</td>
                            <td class="px-4 py-3 text-gray-600">@secure22</td>
                            <td class="px-4 py-3">
                                <span class="px-2.5 py-1 rounded-full bg-blue-100 text-blue-800 text-sm">35</span>
                            </td>
                            <td class="px-4 py-3 text-gray-600">321 Elm Blvd</td>
                            <td class="px-4 py-3">
                                <div class="flex items-center">
                                    <span class="text-yellow-400">★</span>
                                    <span class="ml-1 text-sm text-gray-600">93.8%</span>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <!-- Footer <div class="px-6 py-4 border-t border-gray-200 bg-gray-50">
    <p class="text-sm text-gray-500">
        Updated: <%= DateTime.Now.ToString("MMM dd, yyyy HH:mm") %>
    </p>
</div>-->
            
        </div>
    </main>
</body>
</html>