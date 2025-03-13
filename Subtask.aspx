<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Subtask.aspx.cs" Inherits="databaseCW.Subtask" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Subtask Management</title>
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
            <!-- Data Grid Section -->
            <div class="bg-white rounded-lg shadow-sm border border-gray-200">
                <asp:GridView ID="GridView1" runat="server"
                    AllowPaging="True"
                    AllowSorting="True"
                    AutoGenerateColumns="False"
                    DataKeyNames="ID"
                    DataSourceID="SqlDataSource1"
                    CssClass="w-full border-collapse"
                    HeaderStyle-CssClass="bg-gray-50"
                    RowStyle-CssClass="even:bg-gray-50 hover:bg-gray-100 transition-colors">
                    
                    <Columns>
                        <asp:CommandField 
                            ShowDeleteButton="True" 
                            ShowEditButton="True"
                            ItemStyle-Width="140px"
                            ControlStyle-CssClass="px-3 py-1.5 text-sm font-medium text-blue-600 hover:text-blue-800 rounded-md hover:bg-gray-100 transition-colors" />
                        
                        <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" 
                            ItemStyle-CssClass="px-4 py-3 text-gray-700" />
                        
                        <asp:BoundField DataField="NAME" HeaderText="Name" SortExpression="NAME" 
                            ItemStyle-CssClass="px-4 py-3 text-gray-700" />
                        
                        <asp:BoundField DataField="STATUS" HeaderText="Status" SortExpression="STATUS" 
                            ItemStyle-CssClass="px-4 py-3 text-gray-700" />
                        
                        <asp:BoundField DataField="TASK_ID" HeaderText="Task ID" SortExpression="TASK_ID" 
                            ItemStyle-CssClass="px-4 py-3 text-gray-700" />
                        
                        <asp:BoundField DataField="USER_ID" HeaderText="User ID" SortExpression="USER_ID" 
                            ItemStyle-CssClass="px-4 py-3 text-gray-700" />
                    </Columns>
                    
                    <HeaderStyle CssClass="px-4 py-3 bg-gray-50 text-left text-xs font-medium text-gray-600 uppercase tracking-wider border-b border-gray-200" />
                    <RowStyle CssClass="border-b border-gray-200" />
                    <PagerStyle CssClass="px-4 py-3 border-t border-gray-200 bg-gray-50 text-sm" />
                </asp:GridView>
            </div>

            <!-- Form Section -->
            <div class="bg-white rounded-lg shadow-sm border border-gray-200 p-6 space-y-6">
                <asp:FormView ID="FormView1" runat="server"
                    DataKeyNames="ID"
                    DataSourceID="SqlDataSource1"
                    CssClass="w-full space-y-6">
                    
                    <EditItemTemplate>
                        <div class="space-y-4">
                            <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
                                <div class="space-y-2">
                                    <label class="block text-sm font-medium text-gray-700">Subtask ID</label>
                                    <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' 
                                        CssClass="block w-full px-3 py-2 border rounded-md bg-gray-50 text-gray-600" />
                                </div>
                                <div class="space-y-2">
                                    <label class="block text-sm font-medium text-gray-700">Name</label>
                                    <asp:TextBox ID="NAMETextBox" runat="server" Text='<%# Bind("NAME") %>'
                                        CssClass="block w-full px-3 py-2 border rounded-md shadow-sm focus:ring-2 focus:ring-blue-500 focus:border-blue-500" />
                                </div>
                                <div class="space-y-2">
                                    <label class="block text-sm font-medium text-gray-700">Status</label>
                                    <asp:TextBox ID="STATUSTextBox" runat="server" Text='<%# Bind("STATUS") %>'
                                        CssClass="block w-full px-3 py-2 border rounded-md shadow-sm focus:ring-2 focus:ring-blue-500 focus:border-blue-500" />
                                </div>
                                <div class="space-y-2">
                                    <label class="block text-sm font-medium text-gray-700">Task ID</label>
                                    <asp:TextBox ID="TASK_IDTextBox" runat="server" Text='<%# Bind("TASK_ID") %>'
                                        CssClass="block w-full px-3 py-2 border rounded-md shadow-sm focus:ring-2 focus:ring-blue-500 focus:border-blue-500" />
                                </div>
                                <div class="space-y-2">
                                    <label class="block text-sm font-medium text-gray-700">User ID</label>
                                    <asp:TextBox ID="USER_IDTextBox" runat="server" Text='<%# Bind("USER_ID") %>'
                                        CssClass="block w-full px-3 py-2 border rounded-md shadow-sm focus:ring-2 focus:ring-blue-500 focus:border-blue-500" />
                                </div>
                            </div>
                            
                            <div class="flex justify-end space-x-3 pt-4 border-t border-gray-200">
                                <asp:LinkButton ID="UpdateCancelButton" runat="server"
                                    CommandName="Cancel"
                                    CssClass="px-4 py-2 text-sm font-medium text-gray-700 bg-white hover:bg-gray-50 border border-gray-300 rounded-md shadow-sm hover:text-gray-900 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-blue-500"
                                    Text="Cancel" />
                                <asp:LinkButton ID="UpdateButton" runat="server"
                                    CommandName="Update"
                                    CssClass="px-4 py-2 text-sm font-medium text-white bg-blue-600 hover:bg-blue-700 rounded-md shadow-sm hover:shadow-md focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-blue-500"
                                    Text="Save Changes" />
                            </div>
                        </div>
                    </EditItemTemplate>

                    <InsertItemTemplate>
                        <div class="space-y-4">
                            <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
                                <div class="space-y-2">
                                    <label class="block text-sm font-medium text-gray-700">Subtask ID</label>
                                    <asp:TextBox ID="IDTextBox" runat="server" Text='<%# Bind("ID") %>'
                                        CssClass="block w-full px-3 py-2 border rounded-md shadow-sm focus:ring-2 focus:ring-blue-500 focus:border-blue-500" />
                                </div>
                                <div class="space-y-2">
                                    <label class="block text-sm font-medium text-gray-700">Name</label>
                                    <asp:TextBox ID="NAMETextBox" runat="server" Text='<%# Bind("NAME") %>'
                                        CssClass="block w-full px-3 py-2 border rounded-md shadow-sm focus:ring-2 focus:ring-blue-500 focus:border-blue-500" />
                                </div>
                                <div class="space-y-2">
                                    <label class="block text-sm font-medium text-gray-700">Status</label>
                                    <asp:TextBox ID="STATUSTextBox" runat="server" Text='<%# Bind("STATUS") %>'
                                        CssClass="block w-full px-3 py-2 border rounded-md shadow-sm focus:ring-2 focus:ring-blue-500 focus:border-blue-500" />
                                </div>
                                <div class="space-y-2">
                                    <label class="block text-sm font-medium text-gray-700">Task ID</label>
                                    <asp:TextBox ID="TASK_IDTextBox" runat="server" Text='<%# Bind("TASK_ID") %>'
                                        CssClass="block w-full px-3 py-2 border rounded-md shadow-sm focus:ring-2 focus:ring-blue-500 focus:border-blue-500" />
                                </div>
                                <div class="space-y-2">
                                    <label class="block text-sm font-medium text-gray-700">User ID</label>
                                    <asp:TextBox ID="USER_IDTextBox" runat="server" Text='<%# Bind("USER_ID") %>'
                                        CssClass="block w-full px-3 py-2 border rounded-md shadow-sm focus:ring-2 focus:ring-blue-500 focus:border-blue-500" />
                                </div>
                            </div>
                            
                            <div class="flex justify-end space-x-3 pt-4 border-t border-gray-200">
                                <asp:LinkButton ID="InsertCancelButton" runat="server"
                                    CommandName="Cancel"
                                    CssClass="px-4 py-2 text-sm font-medium text-gray-700 bg-white hover:bg-gray-50 border border-gray-300 rounded-md shadow-sm hover:text-gray-900 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-blue-500"
                                    Text="Cancel" />
                                <asp:LinkButton ID="InsertButton" runat="server"
                                    CommandName="Insert"
                                    CssClass="px-4 py-2 text-sm font-medium text-white bg-green-600 hover:bg-green-700 rounded-md shadow-sm hover:shadow-md focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-green-500"
                                    Text="Create Subtask" />
                            </div>
                        </div>
                    </InsertItemTemplate>

                    <ItemTemplate>
                        <div class="flex flex-col space-y-4 md:flex-row md:items-center md:justify-between">
                            <div class="space-y-1">
                                <h3 class="text-lg font-semibold text-gray-900">Subtask Management</h3>
                                <p class="text-sm text-gray-500">Manage subtask details and assignments</p>
                            </div>
                            <div class="flex space-x-3">
                                <asp:LinkButton ID="NewButton" runat="server"
                                    CommandName="New"
                                    CssClass="px-4 py-2 text-sm font-medium text-white bg-blue-600 hover:bg-blue-700 rounded-md shadow-sm hover:shadow-md focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-blue-500"
                                    Text="New Subtask" />
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:FormView>
            </div>

            <!-- SQL Data Source (Unchanged) -->
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                DeleteCommand="DELETE FROM &quot;SUB_TASK&quot; WHERE &quot;ID&quot; = :ID" 
                InsertCommand="INSERT INTO &quot;SUB_TASK&quot; (&quot;ID&quot;, &quot;NAME&quot;, &quot;STATUS&quot;, &quot;TASK_ID&quot;, &quot;USER_ID&quot;) VALUES (:ID, :NAME, :STATUS, :TASK_ID, :USER_ID)" 
                ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                SelectCommand="SELECT * FROM &quot;SUB_TASK&quot;" 
                UpdateCommand="UPDATE &quot;SUB_TASK&quot; SET &quot;NAME&quot; = :NAME, &quot;STATUS&quot; = :STATUS, &quot;TASK_ID&quot; = :TASK_ID, &quot;USER_ID&quot; = :USER_ID WHERE &quot;ID&quot; = :ID">
                <DeleteParameters>
                    <asp:Parameter Name="ID" Type="Decimal" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ID" Type="Decimal" />
                    <asp:Parameter Name="NAME" Type="String" />
                    <asp:Parameter Name="STATUS" Type="String" />
                    <asp:Parameter Name="TASK_ID" Type="Decimal" />
                    <asp:Parameter Name="USER_ID" Type="Decimal" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="NAME" Type="String" />
                    <asp:Parameter Name="STATUS" Type="String" />
                    <asp:Parameter Name="TASK_ID" Type="Decimal" />
                    <asp:Parameter Name="USER_ID" Type="Decimal" />
                    <asp:Parameter Name="ID" Type="Decimal" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </form>
    </main>
</body>
</html>