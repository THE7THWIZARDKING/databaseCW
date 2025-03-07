<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Project_Milestone.aspx.cs" Inherits="databaseCW.Project_Milestone" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Project Milestones</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-gray-50">

    <form id="form1" runat="server">

        <!-- Navbar -->
        <nav class="bg-gray-800 p-4 shadow-md">
            <div class="container mx-auto flex justify-between items-center">
           <asp:HyperLink CssClass="text-white text-2xl font-semibold" NavigateUrl="~/" runat="server">Database CW</asp:HyperLink>

                <ul class="hidden md:flex space-x-4 ml-auto">
         <li><a class="hover:text-gray-300" runat="server" href="~/Home">Home</a></li>

     <li><a class="hover:text-gray-300" runat="server" href="~/user">User</a></li>
     <li><a class="hover:text-gray-300" runat="server" href="~/Task">Task</a></li>
     <li><a class="hover:text-gray-300" runat="server" href="~/Milestone">Milestone</a></li>
     <li><a class="hover:text-gray-300" runat="server" href="~/SubTask">SubTask</a></li>
     <li><a class="hover:text-gray-300" runat="server" href="~/Project_User">Project-User</a></li>
     <li><a class="hover:text-gray-300" runat="server" href="~/Task_User">Task-User</a></li>
     <li><a class="hover:text-gray-300" runat="server" href="~/Project">Project</a></li>
      <li><a class="hover:text-gray-300" runat="server" href="~/Project_Milestone">Project_Milestone</a></li>
 </ul>
                <button class="md:hidden text-white">☰</button>
            </div>
        </nav>

        <!-- Main Content -->
        <div class="container mx-auto p-6">

            <!-- Title Section -->
            <header class="mb-8 text-center">
                <h1 class="text-3xl font-bold text-gray-800">Project Milestone Overview</h1>
                <p class="mt-2 text-lg text-gray-600">View the milestones for each project in your database.</p>
            </header>

            <!-- Dropdown & Grid Views Section -->
            <div class="grid grid-cols-1 lg:grid-cols-2 gap-6">

                <!-- Project Selection Dropdown -->
                <div class="bg-white p-6 rounded-lg shadow-lg">
                    <h2 class="text-xl font-semibold text-gray-700 mb-4">Select Project</h2>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="ID" DataValueField="ID" class="w-full p-3 border rounded-lg text-gray-700 shadow-sm focus:outline-none focus:ring-2 focus:ring-blue-500">
                    </asp:DropDownList>
                </div>

                <!-- Project Data Grid -->
                <div class="bg-white p-6 rounded-lg shadow-lg">
                    <h2 class="text-xl font-semibold text-gray-700 mb-4">Project Details</h2>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource2" class="min-w-full table-auto text-gray-700 border-separate border-spacing-2" AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                            <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" />
                            <asp:BoundField DataField="START_DATE" HeaderText="START DATE" SortExpression="START_DATE" />
                            <asp:BoundField DataField="END_DATE" HeaderText="END DATE" SortExpression="END_DATE" />
                            <asp:BoundField DataField="STATUS" HeaderText="STATUS" SortExpression="STATUS" />
                        </Columns>
                        <FooterStyle BackColor="#CCCC99" />
                        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                        <RowStyle BackColor="#F7F7DE" />
                        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#FBFBF2" />
                        <SortedAscendingHeaderStyle BackColor="#848384" />
                        <SortedDescendingCellStyle BackColor="#EAEAD3" />
                        <SortedDescendingHeaderStyle BackColor="#575357" />
                    </asp:GridView>
                </div>

            </div>

            <!-- Milestone Data Grid -->
            <div class="bg-white p-6 rounded-lg shadow-lg mt-6">
                <h2 class="text-xl font-semibold text-gray-700 mb-4">Milestone Details</h2>
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource4" class="min-w-full table-auto text-gray-700 border-separate border-spacing-2" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                        <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" />
                        <asp:BoundField DataField="STATUS" HeaderText="STATUS" SortExpression="STATUS" />
                        <asp:BoundField DataField="PROJECT_ID" HeaderText="PROJECT ID" SortExpression="PROJECT_ID" />
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" />
                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#F7F7DE" />
                    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FBFBF2" />
                    <SortedAscendingHeaderStyle BackColor="#848384" />
                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                    <SortedDescendingHeaderStyle BackColor="#575357" />
                </asp:GridView>
            </div>

        </div>

        <!-- SQL DataSources -->
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM PROJECT">
        </asp:SqlDataSource>

        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM PROJECT WHERE ID = :ID">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="ID" PropertyName="SelectedValue" Type="Decimal" />
            </SelectParameters>
        </asp:SqlDataSource>

        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT MILESTONE.* FROM PROJECT, MILESTONE WHERE PROJECT.ID = MILESTONE.PROJECT_ID AND PROJECT.ID = :ID">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="ID" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>

    </form>

</body>
</html>
