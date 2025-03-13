<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Task_User.aspx.cs" Inherits="databaseCW.Task_User" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Task User Management</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-50">
    <!-- Enhanced Navigation -->
    <nav class="bg-gray-800 shadow-lg">
        <div class="mx-auto px-4 sm:px-6 lg:px-8">
            <div class="flex h-16 items-center justify-between">
                <asp:HyperLink CssClass="text-white text-xl font-semibold tracking-tight" NavigateUrl="~/" runat="server">
                     Database Cw
                </asp:HyperLink>
                <div class="hidden md:block">
                  <div class="ml-10 flex items-center space-x-4">
      <a runat="server" href="~/Home" class="text-gray-300 hover:bg-gray-700 hover:text-white px-3 py-2 rounded-md text-sm font-medium">Home</a>
 <a runat="server" href="~/user" class="text-gray-300 hover:bg-gray-700 hover:text-white px-3 py-2 rounded-md text-sm font-medium">Users</a>
 <a runat="server" href="~/Task" class="text-gray-300 hover:bg-gray-700 hover:text-white px-3 py-2 rounded-md text-sm font-medium">Tasks</a>
 <a runat="server" href="~/Milestone" class="text-gray-300 hover:bg-gray-700 hover:text-white px-3 py-2 rounded-md text-sm font-medium">Milestones</a>
 <a runat="server" href="~/SubTask" class="text-gray-300 hover:bg-gray-700 hover:text-white px-3 py-2 rounded-md text-sm font-medium">SubTasks</a>
 <a runat="server" href="~/Project_User" class="text-gray-300 hover:bg-gray-700 hover:text-white px-3 py-2 rounded-md text-sm font-medium">Project-User</a>
 <a runat="server" href="~/Task_User" class="text-gray-300 hover:bg-gray-700 hover:text-white px-3 py-2 rounded-md text-sm font-medium">Task-User</a>
 <a runat="server" href="~/Project" class="text-gray-300 hover:bg-gray-700 hover:text-white px-3 py-2 rounded-md text-sm font-medium">Projects</a>
 <a runat="server" href="~/Project_Milestone" class="text-gray-300 hover:bg-gray-700 hover:text-white px-3 py-2 rounded-md text-sm font-medium">Projects-Milestone</a>
 </div>
                </div>
            </div>
        </div>
    </nav>

    <!-- Main Content Container -->
    <main class="mx-auto max-w-7xl px-4 sm:px-6 lg:px-8 py-8">
        <form id="form1" runat="server" class="space-y-8">
            <!-- Title Section -->
            <div class="text-center">
                <h1 class="text-3xl font-bold text-gray-800">Task User Management</h1>
                <p class="mt-2 text-lg text-gray-600">Manage task-user assignments and relationships</p>
            </div>

            <!-- Data Grid Section -->
            <div class="bg-white rounded-lg shadow-sm border border-gray-200">
                <asp:GridView ID="GridView1" runat="server"
                    AllowPaging="True"
                    AllowSorting="True"
                    AutoGenerateColumns="False"
                    DataKeyNames="ID,EXPR1"
                    DataSourceID="SqlDataSource1"
                    CssClass="w-full border-collapse"
                    HeaderStyle-CssClass="bg-gray-50"
                    RowStyle-CssClass="even:bg-gray-50 hover:bg-gray-100 transition-colors">
                    
                    <Columns>
                        <asp:CommandField 
                            ShowSelectButton="True"
                            ControlStyle-CssClass="text-blue-600 hover:text-blue-800" />
                        
                        <asp:BoundField DataField="TASK_ID" HeaderText="Task ID" SortExpression="TASK_ID" 
                            ItemStyle-CssClass="px-4 py-3 text-gray-700" />
                        
                        <asp:BoundField DataField="USER_ID" HeaderText="User ID" SortExpression="USER_ID" 
                            ItemStyle-CssClass="px-4 py-3 text-gray-700" />
                        
                        <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" 
                            ItemStyle-CssClass="px-4 py-3 text-gray-700" />
                    </Columns>
                    
                    <HeaderStyle CssClass="px-4 py-3 bg-gray-50 text-left text-xs font-medium text-gray-600 uppercase tracking-wider border-b border-gray-200" />
                    <RowStyle CssClass="border-b border-gray-200" />
                    <PagerStyle CssClass="px-4 py-3 border-t border-gray-200 bg-gray-50 text-sm" />
                </asp:GridView>
            </div>

            <!-- SQL Data Source (Unchanged) -->
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                SelectCommand="SELECT TASK_USER.*, &quot;User&quot;.ID, TASK.ID AS EXPR1 FROM TASK, &quot;User&quot;, TASK_USER WHERE TASK.ID = &quot;User&quot;.ID AND TASK.ID = TASK_USER.TASK_ID AND &quot;User&quot;.ID = TASK_USER.USER_ID">
            </asp:SqlDataSource>
        </form>
    </main>
</body>
</html>