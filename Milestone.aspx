<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Milestone.aspx.cs" Inherits="databaseCW.Milestone" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Milestone Management</title>
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
                        
                        <asp:BoundField DataField="PROJECT_ID" HeaderText="Project ID" SortExpression="PROJECT_ID" 
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
                            <div class="border-b border-gray-200 pb-6">
                                <h2 class="text-lg font-semibold text-gray-900">Edit Milestone Details</h2>
                            </div>
                            
                            <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
                                <div class="space-y-2">
                                    <label class="block text-sm font-medium text-gray-700">Milestone ID</label>
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
                                    <label class="block text-sm font-medium text-gray-700">Project ID</label>
                                    <asp:TextBox ID="PROJECT_IDTextBox" runat="server" Text='<%# Bind("PROJECT_ID") %>'
                                        CssClass="block w-full px-3 py-2 border rounded-md shadow-sm focus:ring-2 focus:ring-blue-500 focus:border-blue-500" />
                                </div>
                            </div>
                            
                            <div class="flex justify-end space-x-3 pt-4 border-t border-gray-200">
                                <asp:LinkButton ID="UpdateCancelButton" runat="server"
                                    CommandName="Cancel"
                                    CssClass="px-4 py-2 text-sm font-medium text-gray-700 bg-white hover:bg-gray-50 border border-gray-300 rounded-md shadow-sm hover:text-gray-900 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-blue-500"
                                    Text="Discard Changes" />
                                <asp:LinkButton ID="UpdateButton" runat="server"
                                    CommandName="Update"
                                    CssClass="px-4 py-2 text-sm font-medium text-white bg-blue-600 hover:bg-blue-700 rounded-md shadow-sm hover:shadow-md focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-blue-500"
                                    Text="Save Changes" />
                            </div>
                        </div>
                    </EditItemTemplate>

                    <InsertItemTemplate>
                        <div class="space-y-4">
                            <div class="border-b border-gray-200 pb-6">
                                <h2 class="text-lg font-semibold text-gray-900">Create New Milestone</h2>
                            </div>
                            
                            <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
                                <div class="space-y-2">
                                    <label class="block text-sm font-medium text-gray-700">Milestone ID</label>
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
                                    <label class="block text-sm font-medium text-gray-700">Project ID</label>
                                    <asp:TextBox ID="PROJECT_IDTextBox" runat="server" Text='<%# Bind("PROJECT_ID") %>'
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
                                    Text="Create Milestone" />
                            </div>
                        </div>
                    </InsertItemTemplate>

                    <ItemTemplate>
                        <div class="flex flex-col space-y-4 md:flex-row md:items-center md:justify-between">
                            <div class="space-y-1">
                                <h3 class="text-lg font-semibold text-gray-900">Milestone Management</h3>
                                <p class="text-sm text-gray-500">Manage project milestones and tracking</p>
                            </div>
                            <div class="flex space-x-3">
                                <asp:LinkButton ID="NewButton" runat="server"
                                    CommandName="New"
                                    CssClass="px-4 py-2 text-sm font-medium text-white bg-blue-600 hover:bg-blue-700 rounded-md shadow-sm hover:shadow-md focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-blue-500"
                                    Text="New Milestone" />
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:FormView>
            </div>

            <!-- SQL Data Source (Unchanged) -->
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                DeleteCommand="DELETE FROM &quot;MILESTONE&quot; WHERE &quot;ID&quot; = :ID" 
                InsertCommand="INSERT INTO &quot;MILESTONE&quot; (&quot;ID&quot;, &quot;NAME&quot;, &quot;STATUS&quot;, &quot;PROJECT_ID&quot;) VALUES (:ID, :NAME, :STATUS, :PROJECT_ID)" 
                ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                SelectCommand="SELECT * FROM &quot;MILESTONE&quot;" 
                UpdateCommand="UPDATE &quot;MILESTONE&quot; SET &quot;NAME&quot; = :NAME, &quot;STATUS&quot; = :STATUS, &quot;PROJECT_ID&quot; = :PROJECT_ID WHERE &quot;ID&quot; = :ID">
                <DeleteParameters>
                    <asp:Parameter Name="ID" Type="Decimal" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ID" Type="Decimal" />
                    <asp:Parameter Name="NAME" Type="String" />
                    <asp:Parameter Name="STATUS" Type="String" />
                    <asp:Parameter Name="PROJECT_ID" Type="Decimal" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="NAME" Type="String" />
                    <asp:Parameter Name="STATUS" Type="String" />
                    <asp:Parameter Name="PROJECT_ID" Type="Decimal" />
                    <asp:Parameter Name="ID" Type="Decimal" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </form>
    </main>
</body>
</html>