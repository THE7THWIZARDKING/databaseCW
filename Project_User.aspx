<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Project_User.aspx.cs" Inherits="databaseCW.Project_User" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Project User Management</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet" />
    <style>
        .status-badge {
            @apply px-2 py-1 rounded-full text-xs font-medium;
        }
        .active-status {
            @apply bg-green-100 text-green-800;
        }
        .inactive-status {
            @apply bg-red-100 text-red-800;
        }
    </style>
</head>
<body class="bg-gray-50">
    <!-- Navigation -->
        <nav class="bg-gray-900 shadow-lg">
          <div class="mx-auto max-w-7xl px-4 sm:px-6 lg:px-8 flex h-16 items-center justify-between">
              <asp:HyperLink CssClass="text-white text-2xl font-bold tracking-tight hover:text-gray-300 transition-colors" NavigateUrl="~/" runat="server">
                  <i class="fas fa-database mr-2"></i>Database CW
              </asp:HyperLink>
              <div class="ml-10 flex items-center space-x-6">
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
      </nav>

    <main class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-8">
        <form id="form1" runat="server">
            <!-- User Selection -->
            <div class="mb-8">
                <label for="ddlUsers" class="block text-sm font-medium text-gray-700 mb-2">Select User</label>
                <asp:DropDownList ID="ddlUsers" runat="server" AutoPostBack="True" 
                    DataSourceID="sdsUsers" DataTextField="ID_NAME" DataValueField="ID" 
                    CssClass="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-indigo-500 focus:ring-indigo-500 sm:text-sm" />
            </div>

            <!-- User Details Section -->
            <section class="mb-8 bg-white rounded-lg shadow">
                <div class="p-6 border-b border-gray-200">
                    <h2 class="text-lg font-semibold text-gray-900">User Details</h2>
                </div>
                <div class="overflow-x-auto">
                    <asp:GridView ID="gvUserDetails" runat="server" AutoGenerateColumns="False" 
                        DataKeyNames="ID" DataSourceID="sdsUserDetails" AllowSorting="True" AllowPaging="True" 
                        CssClass="min-w-full divide-y divide-gray-200"
                        HeaderStyle-CssClass="bg-gray-50"
                        RowStyle-CssClass="hover:bg-gray-50 transition-colors"
                        PageSize="5">
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" 
                                ControlStyle-CssClass="text-indigo-600 hover:text-indigo-900 px-2 py-1 rounded" />
                            <asp:BoundField DataField="ID" HeaderText="User ID" SortExpression="ID" 
                                ItemStyle-CssClass="px-6 py-4 text-sm text-gray-900 text-right" 
                                HeaderStyle-CssClass="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider" />
                            <asp:BoundField DataField="NAME" HeaderText="Name" SortExpression="NAME" 
                                ItemStyle-CssClass="px-6 py-4 text-sm text-gray-900" 
                                HeaderStyle-CssClass="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider" />
                            <asp:BoundField DataField="ADDRESS" HeaderText="Address" SortExpression="ADDRESS" 
                                ItemStyle-CssClass="px-6 py-4 text-sm text-gray-900" 
                                HeaderStyle-CssClass="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider" />
                            <asp:BoundField DataField="ROLE" HeaderText="Role" SortExpression="ROLE" 
                                ItemStyle-CssClass="px-6 py-4 text-sm text-gray-900" 
                                HeaderStyle-CssClass="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider" />
                        </Columns>
                    </asp:GridView>
                </div>
            </section>

            <!-- Associated Projects Section -->
            <section class="mb-8 bg-white rounded-lg shadow">
                <div class="p-6 border-b border-gray-200">
                    <h2 class="text-lg font-semibold text-gray-900">Associated Projects</h2>
                </div>
                <div class="overflow-x-auto">
                    <asp:GridView ID="gvUserProjects" runat="server" AutoGenerateColumns="False" 
                        DataKeyNames="ID" DataSourceID="sdsUserProjects" AllowSorting="True" AllowPaging="True"
                        CssClass="min-w-full divide-y divide-gray-200"
                        HeaderStyle-CssClass="bg-gray-50"
                        RowStyle-CssClass="hover:bg-gray-50 transition-colors"
                        PageSize="5">
                        <Columns>
                            <asp:BoundField DataField="ID" HeaderText="Project ID" SortExpression="ID" 
                                ItemStyle-CssClass="px-6 py-4 text-sm text-gray-900 text-right" 
                                HeaderStyle-CssClass="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider" />
                            <asp:BoundField DataField="NAME" HeaderText="Project Name" SortExpression="NAME" 
                                ItemStyle-CssClass="px-6 py-4 text-sm text-gray-900" 
                                HeaderStyle-CssClass="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider" />
                            <asp:BoundField DataField="START_DATE" HeaderText="Start Date" SortExpression="START_DATE" DataFormatString="{0:d}" 
                                ItemStyle-CssClass="px-6 py-4 text-sm text-gray-900" 
                                HeaderStyle-CssClass="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider" />
                            <asp:BoundField DataField="END_DATE" HeaderText="End Date" SortExpression="END_DATE" DataFormatString="{0:d}" 
                                ItemStyle-CssClass="px-6 py-4 text-sm text-gray-900" 
                                HeaderStyle-CssClass="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider" />
                            <asp:TemplateField HeaderText="Status" SortExpression="STATUS">
                                <ItemTemplate>
                                    <span class='status-badge <%# Eval("STATUS").ToString() == "Active" ? "active-status" : "inactive-status" %>'>
                                        <%# Eval("STATUS") %>
                                    </span>
                                </ItemTemplate>
                                <HeaderStyle CssClass="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider" />
                                <ItemStyle CssClass="px-6 py-4 text-sm" />
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </section>

            <!-- Data Sources -->
            <asp:SqlDataSource ID="sdsUsers" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                SelectCommand="SELECT ID, NAME, TO_CHAR(ID) || ' - ' || NAME AS ID_NAME FROM &quot;User&quot;" />

            <asp:SqlDataSource ID="sdsUserDetails" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                SelectCommand="SELECT * FROM &quot;User&quot; WHERE (&quot;ID&quot; = :ID)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ddlUsers" Name="ID" PropertyName="SelectedValue" Type="Decimal" />
                </SelectParameters>
            </asp:SqlDataSource>

            <asp:SqlDataSource ID="sdsUserProjects" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                SelectCommand="SELECT P.ID, P.NAME, P.START_DATE, P.END_DATE, P.STATUS 
                            FROM PROJECT P 
                            INNER JOIN PROJECT_USER PU ON P.ID = PU.PROJECT_ID 
                            INNER JOIN &quot;User&quot; U ON PU.USER_ID = U.ID 
                            WHERE U.ID = :ID">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ddlUsers" Name="ID" PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
        </form>
    </main>
</body>
</html>