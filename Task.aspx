<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Task.aspx.cs" Inherits="databaseCW.Task" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Task Management</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-gray-100 font-sans">
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
    <form id="form1" runat="server">
        <div class="container mx-auto p-6">

            <!-- Task GridView -->
            <div class="bg-white p-4 rounded-lg shadow-lg mb-6">
                <h2 class="text-2xl font-semibold text-gray-700 mb-4">Task List</h2>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"
                    class="table-auto w-full text-left text-gray-700 border-collapse mb-6" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" AllowPaging="True" AllowSorting="True">
                    <AlternatingRowStyle CssClass="bg-gray-50" BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" ItemStyle-CssClass="px-4 py-2 border" >
<ItemStyle CssClass="px-4 py-2 border"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" ItemStyle-CssClass="px-4 py-2 border" >
<ItemStyle CssClass="px-4 py-2 border"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="START_DATE" HeaderText="START_DATE" SortExpression="START_DATE" ItemStyle-CssClass="px-4 py-2 border" >
<ItemStyle CssClass="px-4 py-2 border"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="END_DATE" HeaderText="END_DATE" SortExpression="END_DATE" ItemStyle-CssClass="px-4 py-2 border" >
<ItemStyle CssClass="px-4 py-2 border"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="STATUS" HeaderText="STATUS" SortExpression="STATUS" ItemStyle-CssClass="px-4 py-2 border" >
<ItemStyle CssClass="px-4 py-2 border"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="PROJECT_ID" HeaderText="PROJECT_ID" SortExpression="PROJECT_ID" ItemStyle-CssClass="px-4 py-2 border" >
<ItemStyle CssClass="px-4 py-2 border"></ItemStyle>
                        </asp:BoundField>
                    </Columns>
                    <FooterStyle CssClass="bg-gray-200" BackColor="#CCCC99" />
                    <HeaderStyle CssClass="bg-gray-800 text-white font-bold" BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                    <PagerStyle CssClass="text-gray-700" BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle CssClass="bg-gray-100" BackColor="#F7F7DE" />
                    <SelectedRowStyle CssClass="bg-red-500 text-white" BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle CssClass="bg-gray-50" BackColor="#FBFBF2" />
                    <SortedAscendingHeaderStyle BackColor="#848384" />
                    <SortedDescendingCellStyle CssClass="bg-gray-200" BackColor="#EAEAD3" />
                    <SortedDescendingHeaderStyle BackColor="#575357" />
                </asp:GridView>
            </div>

            <!-- Task FormView -->
            <div class="bg-white p-6 rounded-lg shadow-lg">
                <h2 class="text-2xl font-semibold text-gray-700 mb-6">Task Details</h2>
                <asp:FormView ID="FormView1" runat="server" DataKeyNames="ID" DataSourceID="SqlDataSource1" class="space-y-6">
                    <EditItemTemplate>
                        <div>
                            <label for="IDLabel1" class="block text-gray-700 font-semibold">ID:</label>
                            <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' class="block text-gray-700" />
                        </div>
                        <div>
                            <label for="NAMETextBox" class="block text-gray-700 font-semibold">Name:</label>
                            <asp:TextBox ID="NAMETextBox" runat="server" Text='<%# Bind("NAME") %>' class="block w-full px-4 py-2 border border-gray-300 rounded-md" />
                        </div>
                        <div>
                            <label for="START_DATETextBox" class="block text-gray-700 font-semibold">Start Date:</label>
                            <asp:TextBox ID="START_DATETextBox" runat="server" Text='<%# Bind("START_DATE") %>' class="block w-full px-4 py-2 border border-gray-300 rounded-md" />
                        </div>
                        <div>
                            <label for="END_DATETextBox" class="block text-gray-700 font-semibold">End Date:</label>
                            <asp:TextBox ID="END_DATETextBox" runat="server" Text='<%# Bind("END_DATE") %>' class="block w-full px-4 py-2 border border-gray-300 rounded-md" />
                        </div>
                        <div>
                            <label for="STATUSTextBox" class="block text-gray-700 font-semibold">Status:</label>
                            <asp:TextBox ID="STATUSTextBox" runat="server" Text='<%# Bind("STATUS") %>' class="block w-full px-4 py-2 border border-gray-300 rounded-md" />
                        </div>
                        <div>
                            <label for="PROJECT_IDTextBox" class="block text-gray-700 font-semibold">Project ID:</label>
                            <asp:TextBox ID="PROJECT_IDTextBox" runat="server" Text='<%# Bind("PROJECT_ID") %>' class="block w-full px-4 py-2 border border-gray-300 rounded-md" />
                        </div>
                        <div class="flex justify-between">
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" CssClass="bg-green-500 text-white px-4 py-2 rounded-md hover:bg-green-700" />
                            <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="bg-red-500 text-white px-4 py-2 rounded-md hover:bg-red-700" />
                        </div>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <div>
                            <label class="block text-gray-700 font-semibold">ID:</label>
                            <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' class="block text-gray-700" />
                        </div>
                        <div>
                            <label class="block text-gray-700 font-semibold">Name:</label>
                            <asp:Label ID="NAMELabel" runat="server" Text='<%# Bind("NAME") %>' class="block text-gray-700" />
                        </div>
                        <div>
                            <label class="block text-gray-700 font-semibold">Start Date:</label>
                            <asp:Label ID="START_DATELabel" runat="server" Text='<%# Bind("START_DATE") %>' class="block text-gray-700" />
                        </div>
                        <div>
                            <label class="block text-gray-700 font-semibold">End Date:</label>
                            <asp:Label ID="END_DATELabel" runat="server" Text='<%# Bind("END_DATE") %>' class="block text-gray-700" />
                        </div>
                        <div>
                            <label class="block text-gray-700 font-semibold">Status:</label>
                            <asp:Label ID="STATUSLabel" runat="server" Text='<%# Bind("STATUS") %>' class="block text-gray-700" />
                        </div>
                        <div>
                            <label class="block text-gray-700 font-semibold">Project ID:</label>
                            <asp:Label ID="PROJECT_IDLabel" runat="server" Text='<%# Bind("PROJECT_ID") %>' class="block text-gray-700" />
                        </div>
                        <div class="flex space-x-4 mt-4">
                            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" CssClass="bg-yellow-500 text-white px-4 py-2 rounded-md hover:bg-yellow-700" />
                            <asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" CssClass="bg-red-500 text-white px-4 py-2 rounded-md hover:bg-red-700" />
                            <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" CssClass="bg-blue-500 text-white px-4 py-2 rounded-md hover:bg-blue-700" BorderColor="Black" />
                        </div>
                    </ItemTemplate>
                </asp:FormView>
            </div>

        </div>

        <!-- Data Source -->
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
            DeleteCommand="DELETE FROM &quot;TASK&quot; WHERE &quot;ID&quot; = :ID"
            InsertCommand="INSERT INTO &quot;TASK&quot; (&quot;ID&quot;, &quot;NAME&quot;, &quot;START_DATE&quot;, &quot;END_DATE&quot;, &quot;STATUS&quot;, &quot;PROJECT_ID&quot;) VALUES (:ID, :NAME, :START_DATE, :END_DATE, :STATUS, :PROJECT_ID)"
            ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>"
            SelectCommand="SELECT * FROM &quot;TASK&quot;"
            UpdateCommand="UPDATE &quot;TASK&quot; SET &quot;NAME&quot; = :NAME, &quot;START_DATE&quot; = :START_DATE, &quot;END_DATE&quot; = :END_DATE, &quot;STATUS&quot; = :STATUS, &quot;PROJECT_ID&quot; = :PROJECT_ID WHERE &quot;ID&quot; = :ID">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ID" Type="Decimal" />
                <asp:Parameter Name="NAME" Type="String" />
                <asp:Parameter Name="START_DATE" Type="DateTime" />
                <asp:Parameter Name="END_DATE" Type="DateTime" />
                <asp:Parameter Name="STATUS" Type="String" />
                <asp:Parameter Name="PROJECT_ID" Type="Decimal" />
            </InsertParameters>
            <SelectParameters />
            <UpdateParameters>
                <asp:Parameter Name="ID" Type="Decimal" />
                <asp:Parameter Name="NAME" Type="String" />
                <asp:Parameter Name="START_DATE" Type="DateTime" />
                <asp:Parameter Name="END_DATE" Type="DateTime" />
                <asp:Parameter Name="STATUS" Type="String" />
                <asp:Parameter Name="PROJECT_ID" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
