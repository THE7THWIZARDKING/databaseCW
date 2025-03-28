﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Project_Milestone.aspx.cs" Inherits="databaseCW.Project_Milestone" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Project Milestones</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-50">
    <!-- Enhanced Navigation -->
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
    <!-- Main Content Container -->
    <main class="mx-auto max-w-7xl px-4 sm:px-6 lg:px-8 py-8">
        <form id="form1" runat="server" class="space-y-8">
            <!-- Title Section -->
            <header class="text-center">
                <h1 class="text-3xl font-bold text-gray-800">Project Milestone Overview</h1>
                <p class="mt-2 text-lg text-gray-600">View the milestones for each project in your database</p>
            </header>

            <!-- Selection Section -->
            <div class="bg-white rounded-lg shadow-sm border border-gray-200 p-6">
                <h2 class="text-xl font-semibold text-gray-700 mb-4">Select Project</h2>
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    AutoPostBack="True" 
                    DataSourceID="SqlDataSource1" 
                    DataTextField="ID" 
                    DataValueField="ID"
                    CssClass="w-full px-3 py-2 border rounded-md shadow-sm focus:ring-2 focus:ring-blue-500 focus:border-blue-500 text-sm">
                </asp:DropDownList>
            </div>

            <!-- Project Details Section -->
            <div class="bg-white rounded-lg shadow-sm border border-gray-200">
                <div class="p-6">
                    <h2 class="text-xl font-semibold text-gray-700 mb-4">Project Details</h2>
                    <asp:GridView ID="GridView1" runat="server"
                        AutoGenerateColumns="False"
                        DataKeyNames="ID"
                        DataSourceID="SqlDataSource2"
                        CssClass="w-full border-collapse"
                        HeaderStyle-CssClass="bg-gray-50"
                        RowStyle-CssClass="even:bg-gray-50 hover:bg-gray-100 transition-colors" AllowPaging="True" AllowSorting="True">
                        
                        <Columns>
                            <asp:CommandField 
                                ShowSelectButton="True"
                                ControlStyle-CssClass="text-blue-600 hover:text-blue-800" />
                            
                            <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" 
                                ItemStyle-CssClass="px-4 py-3 text-gray-700" />
                            
                            <asp:BoundField DataField="NAME" HeaderText="Name" SortExpression="NAME" 
                                ItemStyle-CssClass="px-4 py-3 text-gray-700" />
                            
                            <asp:BoundField DataField="START_DATE" HeaderText="Start Date" SortExpression="START_DATE" 
                                ItemStyle-CssClass="px-4 py-3 text-gray-700" />
                            
                            <asp:BoundField DataField="END_DATE" HeaderText="End Date" SortExpression="END_DATE" 
                                ItemStyle-CssClass="px-4 py-3 text-gray-700" />
                            
                            <asp:BoundField DataField="STATUS" HeaderText="Status" SortExpression="STATUS" 
                                ItemStyle-CssClass="px-4 py-3 text-gray-700" />
                        </Columns>
                        
                        <HeaderStyle CssClass="px-4 py-3 bg-gray-50 text-left text-xs font-medium text-gray-600 uppercase tracking-wider border-b border-gray-200" />
                        <RowStyle CssClass="border-b border-gray-200" />
                        <PagerStyle CssClass="px-4 py-3 border-t border-gray-200 bg-gray-50 text-sm" />
                    </asp:GridView>
                </div>
            </div>

            <!-- Milestone Details Section -->
            <div class="bg-white rounded-lg shadow-sm border border-gray-200">
                <div class="p-6">
                    <h2 class="text-xl font-semibold text-gray-700 mb-4">Milestone Details</h2>
                    <asp:GridView ID="GridView2" runat="server"
                        AutoGenerateColumns="False"
                        DataKeyNames="ID"
                        DataSourceID="SqlDataSource4"
                        CssClass="w-full border-collapse"
                        HeaderStyle-CssClass="bg-gray-50"
                        RowStyle-CssClass="even:bg-gray-50 hover:bg-gray-100 transition-colors">
                        
                        <Columns>
                            <asp:CommandField 
                                ShowSelectButton="True"
                                ControlStyle-CssClass="text-blue-600 hover:text-blue-800" />
                            
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
            </div>

            <!-- SQL DataSources (Unchanged) -->
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                SelectCommand="SELECT * FROM PROJECT">
            </asp:SqlDataSource>

            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                SelectCommand="SELECT * FROM PROJECT WHERE ID = :ID">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="ID" PropertyName="SelectedValue" Type="Decimal" />
                </SelectParameters>
            </asp:SqlDataSource>

            <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                SelectCommand="SELECT MILESTONE.* FROM PROJECT, MILESTONE WHERE PROJECT.ID = MILESTONE.PROJECT_ID AND PROJECT.ID = :ID">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="ID" PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
        </form>
    </main>
</body>
</html>