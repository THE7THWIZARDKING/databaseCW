<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="performer.aspx.cs" Inherits="databaseCW.performer" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Top Performers</title>
    <!-- Tailwind CSS (CDN) -->
    <script src="https://cdn.tailwindcss.com"></script>
    <!-- Font Awesome (CDN) -->
    <script src="https://kit.fontawesome.com/yourKitId.js" crossorigin="anonymous"></script>
</head>
<body class="bg-gray-100">
    <form id="form1" runat="server">
        <!-- NAVBAR START -->
        <nav class="bg-gray-900 shadow-lg">
            <div class="mx-auto max-w-7xl px-4 sm:px-6 lg:px-8 flex h-16 items-center justify-between">
                <!-- Logo/Home Link -->
                <asp:HyperLink CssClass="text-white text-2xl font-bold tracking-tight hover:text-gray-300 transition-colors"
                               NavigateUrl="~/" runat="server">
                    <i class="fas fa-database mr-2"></i>Database CW
                </asp:HyperLink>

                <!-- Nav Links -->
                <div class="ml-10 flex items-center space-x-6">
                    <asp:HyperLink NavigateUrl="~/Home" runat="server"
                        CssClass="px-3 py-2 rounded-md text-sm font-medium text-gray-300 hover:bg-gray-700 hover:text-white transition-colors">
                        Home
                    </asp:HyperLink>

                    <asp:HyperLink NavigateUrl="~/user" runat="server"
                        CssClass="px-3 py-2 rounded-md text-sm font-medium text-gray-300 hover:bg-gray-700 hover:text-white transition-colors">
                        Users
                    </asp:HyperLink>

                    <asp:HyperLink NavigateUrl="~/Task" runat="server"
                        CssClass="px-3 py-2 rounded-md text-sm font-medium text-gray-300 hover:bg-gray-700 hover:text-white transition-colors">
                        Tasks
                    </asp:HyperLink>

                    <asp:HyperLink NavigateUrl="~/Milestone" runat="server"
                        CssClass="px-3 py-2 rounded-md text-sm font-medium text-gray-300 hover:bg-gray-700 hover:text-white transition-colors">
                        Milestones
                    </asp:HyperLink>

                    <asp:HyperLink NavigateUrl="~/SubTask" runat="server"
                        CssClass="px-3 py-2 rounded-md text-sm font-medium text-gray-300 hover:bg-gray-700 hover:text-white transition-colors">
                        SubTasks
                    </asp:HyperLink>

                    <asp:HyperLink NavigateUrl="~/Project_User" runat="server"
                        CssClass="px-3 py-2 rounded-md text-sm font-medium text-gray-300 hover:bg-gray-700 hover:text-white transition-colors">
                        Project-User
                    </asp:HyperLink>

                    <asp:HyperLink NavigateUrl="~/Task_User" runat="server"
                        CssClass="px-3 py-2 rounded-md text-sm font-medium text-gray-300 hover:bg-gray-700 hover:text-white transition-colors">
                        Task-User
                    </asp:HyperLink>

                    <asp:HyperLink NavigateUrl="~/Project" runat="server"
                        CssClass="px-3 py-2 rounded-md text-sm font-medium text-gray-300 hover:bg-gray-700 hover:text-white transition-colors">
                        Projects
                    </asp:HyperLink>

                    <asp:HyperLink NavigateUrl="~/Project_Milestone" runat="server"
                        CssClass="px-3 py-2 rounded-md text-sm font-medium text-gray-300 hover:bg-gray-700 hover:text-white transition-colors">
                        Projects-Milestone
                    </asp:HyperLink>
                </div>
            </div>
        </nav>
        <!-- NAVBAR END -->

        <!-- Main Content Container -->
        <div class="mx-auto max-w-7xl px-4 sm:px-6 lg:px-8 mt-8">
            
            <!-- Page Title -->
            <h1 class="text-3xl font-bold text-gray-800 mb-6">Top Performers Leaderboard</h1>
            
            <!-- Project Dropdown -->
            <div class="mb-6">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True"
                                  DataSourceID="SqlDataSource1" DataTextField="NAME" DataValueField="ID"
                                  CssClass="border border-gray-300 px-3 py-2 rounded-md shadow-sm focus:outline-none focus:ring-2 focus:ring-blue-500">
                </asp:DropDownList>
            </div>

            <!-- Leaderboard Card Container -->
            <div class="bg-white shadow-md rounded-lg overflow-hidden">
                <!-- Card Header -->
                <div class="px-4 py-3 bg-gray-100 border-b border-gray-200">
                    <h2 class="text-xl font-semibold text-gray-700">Leaderboard</h2>
                </div>
                <!-- GridView -->
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="USERID"
                              DataSourceID="SqlDataSource3" AllowPaging="True" AllowSorting="True"
                              CssClass="w-full table-auto text-left">
                
                    <HeaderStyle CssClass="bg-gray-200 text-gray-700 font-semibold uppercase tracking-wider text-sm" />
                    <RowStyle CssClass="bg-white border-b border-gray-200 hover:bg-gray-50" />
                    <AlternatingRowStyle CssClass="bg-gray-50 border-b border-gray-200 hover:bg-gray-100" />
                    <PagerStyle CssClass="p-2 bg-gray-50 text-gray-600" />
                    
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="USERID" HeaderText="USERID" ReadOnly="True" SortExpression="USERID" />
                        <asp:BoundField DataField="USERNAME" HeaderText="USERNAME" SortExpression="USERNAME" />
                        <asp:BoundField DataField="COMPLETEDTASKS" HeaderText="COMPLETEDTASKS" SortExpression="COMPLETEDTASKS" />
                    </Columns>
                </asp:GridView>
            </div>

            <!-- Data Source for Dropdown -->
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                               ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                               ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>"
                               SelectCommand="SELECT * FROM &quot;PROJECT&quot;">
            </asp:SqlDataSource>

            <!-- Data Source for Leaderboard (Top 3) -->
            <asp:SqlDataSource ID="SqlDataSource3" runat="server"
                               ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                               ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>"
                               SelectCommand="SELECT * FROM ( 
                                   SELECT u.ID AS UserID, u.NAME AS UserName, COUNT(t.ID) AS CompletedTasks
                                   FROM &quot;User&quot; u
                                   JOIN TASK_USER tu ON u.ID = tu.USER_ID
                                   JOIN TASK t ON tu.TASK_ID = t.ID
                                   JOIN PROJECT p ON t.PROJECT_ID = p.ID
                                   WHERE p.ID = :PROJECTID AND t.status = 'C'
                                   GROUP BY u.ID, u.NAME
                                   ORDER BY COUNT(t.ID) DESC
                               ) WHERE ROWNUM &lt;=3">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="PROJECTID" PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>

            <!-- Unused data source -->
            <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
