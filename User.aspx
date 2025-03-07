<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="databaseCW.User" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100">


   <!-- Navbar -->
<nav class="bg-gray-800 p-2 shadow-md w-full">
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

    <!-- Main Content Below Navbar -->
    <div class="flex flex-col items-center justify-center p-6 mt-6">

        <form id="form1" runat="server" class="w-full max-w-4xl p-6 bg-white rounded-lg shadow-lg">

            <!-- GridView -->
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" 
                class="min-w-full bg-white shadow-md rounded-lg overflow-hidden border border-gray-300 mb-6">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" />
                    <asp:BoundField DataField="PASSWORD" HeaderText="PASSWORD" SortExpression="PASSWORD" />
                    <asp:BoundField DataField="ADDRESS" HeaderText="ADDRESS" SortExpression="ADDRESS" />
                    <asp:BoundField DataField="ROLE" HeaderText="ROLE" SortExpression="ROLE" />
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

            <!-- FormView -->
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="ID" DataSourceID="SqlDataSource1" 
                class="w-full max-w-4xl p-6 bg-white shadow-md rounded-lg" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
                <EditItemTemplate>
                    <!-- Form fields for editing -->
                    <div class="mb-4">
                        <label for="IDLabel1" class="block text-gray-700">ID:</label>
                        <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' class="block text-gray-900" />
                    </div>
                    <div class="mb-4">
                        <label for="NAMETextBox" class="block text-gray-700">NAME:</label>
                        <asp:TextBox ID="NAMETextBox" runat="server" Text='<%# Bind("NAME") %>' class="w-full p-2 border border-gray-300 rounded-md" />
                    </div>
                    <div class="mb-4">
                        <label for="PASSWORDTextBox" class="block text-gray-700">PASSWORD:</label>
                        <asp:TextBox ID="PASSWORDTextBox" runat="server" Text='<%# Bind("PASSWORD") %>' class="w-full p-2 border border-gray-300 rounded-md" />
                    </div>
                    <div class="mb-4">
                        <label for="ADDRESSTextBox" class="block text-gray-700">ADDRESS:</label>
                        <asp:TextBox ID="ADDRESSTextBox" runat="server" Text='<%# Bind("ADDRESS") %>' class="w-full p-2 border border-gray-300 rounded-md" />
                    </div>
                    <div class="mb-4">
                        <label for="ROLETextBox" class="block text-gray-700">ROLE:</label>
                        <asp:TextBox ID="ROLETextBox" runat="server" Text='<%# Bind("ROLE") %>' class="w-full p-2 border border-gray-300 rounded-md" />
                    </div>
                    <div class="flex space-x-4">
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" 
                            class="bg-blue-500 text-white px-4 py-2 rounded-md hover:bg-blue-600 focus:outline-none" />
                        <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" 
                            class="bg-gray-500 text-white px-4 py-2 rounded-md hover:bg-gray-600 focus:outline-none" />
                    </div>
                </EditItemTemplate>
                <EditRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <InsertItemTemplate>
                    <!-- Form fields for inserting -->
                    <div class="mb-4">
                        <label for="IDTextBox" class="block text-gray-700">ID:</label>
                        <asp:TextBox ID="IDTextBox" runat="server" class="w-full p-2 border border-gray-300 rounded-md" />
                    </div>
                    <div class="mb-4">
                        <label for="NAMETextBox" class="block text-gray-700">NAME:</label>
                        <asp:TextBox ID="NAMETextBox" runat="server" class="w-full p-2 border border-gray-300 rounded-md" />
                    </div>
                    <div class="mb-4">
                        <label for="PASSWORDTextBox" class="block text-gray-700">PASSWORD:</label>
                        <asp:TextBox ID="PASSWORDTextBox" runat="server" class="w-full p-2 border border-gray-300 rounded-md" />
                    </div>
                    <div class="mb-4">
                        <label for="ADDRESSTextBox" class="block text-gray-700">ADDRESS:</label>
                        <asp:TextBox ID="ADDRESSTextBox" runat="server" class="w-full p-2 border border-gray-300 rounded-md" />
                    </div>
                    <div class="mb-4">
                        <label for="ROLETextBox" class="block text-gray-700">ROLE:</label>
                        <asp:TextBox ID="ROLETextBox" runat="server" class="w-full p-2 border border-gray-300 rounded-md" />
                    </div>
                    <div class="flex space-x-4">
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" 
                            class="bg-green-500 text-white px-4 py-2 rounded-md hover:bg-green-600 focus:outline-none" />
                        <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" 
                            class="bg-gray-500 text-white px-4 py-2 rounded-md hover:bg-gray-600 focus:outline-none" />
                    </div>
                </InsertItemTemplate>
                <InsertRowStyle BackColor="#B2D8B2" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" />
            </asp:FormView>

        <!-- SqlDataSource -->
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM &quot;User&quot; WHERE &quot;ID&quot; = :ID" InsertCommand="INSERT INTO &quot;User&quot; (&quot;ID&quot;, &quot;NAME&quot;, &quot;PASSWORD&quot;, &quot;ADDRESS&quot;, &quot;ROLE&quot;) VALUES (:ID, :NAME, :PASSWORD, :ADDRESS, :ROLE)" 
            ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;User&quot;" 
            UpdateCommand="UPDATE &quot;User&quot; SET &quot;NAME&quot; = :NAME, &quot;PASSWORD&quot; = :PASSWORD, &quot;ADDRESS&quot; = :ADDRESS, &quot;ROLE&quot; = :ROLE WHERE &quot;ID&quot; = :ID">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ID" Type="Decimal" />
                <asp:Parameter Name="NAME" Type="String" />
                <asp:Parameter Name="PASSWORD" Type="String" />
                <asp:Parameter Name="ADDRESS" Type="String" />
                <asp:Parameter Name="ROLE" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="NAME" Type="String" />
                <asp:Parameter Name="PASSWORD" Type="String" />
                <asp:Parameter Name="ADDRESS" Type="String" />
                <asp:Parameter Name="ROLE" Type="String" />
                <asp:Parameter Name="ID" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
