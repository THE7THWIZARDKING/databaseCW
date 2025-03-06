<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Task_User.aspx.cs" Inherits="databaseCW.Task_User" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Task User Management</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-50  items-center justify-center min-h-screen">
           <nav class="bg-gray-800 p-4 shadow-md">
           <div class="container mx-auto flex justify-between items-center">
               <a class="text-white text-2xl font-semibold" href="~/">Database CW</a>
               <ul class="hidden md:flex space-x-4 ml-auto">
    <li><a class="hover:text-gray-300" runat="server" href="~/">Home</a></li>
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
    <form id="form1" runat="server" class="w-full max-w-7xl p-6 bg-white shadow-lg rounded-lg">
        <div class="text-center mb-6">
            <h1 class="text-3xl font-semibold text-gray-800">Task User Management</h1>
        </div>

        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="ID,EXPR1" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" class="w-full text-left text-sm text-gray-700">
            <AlternatingRowStyle BackColor="white" />
            <Columns>
                <asp:BoundField DataField="TASK_ID" HeaderText="TASK_ID" SortExpression="TASK_ID" />
                <asp:BoundField DataField="USER_ID" HeaderText="USER_ID" SortExpression="USER_ID" />
                <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
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

        <!-- Add this comment outside the GridView -->
        <!-- Pagination with advanced styling -->
        <asp:PagerStyle CssClass="flex justify-center items-center space-x-2 mt-6 bg-gray-100 p-3 rounded-full shadow-md" 
                        BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Center">
            <ItemStyle CssClass="bg-blue-200 text-white px-4 py-2 rounded-lg cursor-pointer hover:bg-blue-300 transition-all"/>
            <SelectedItemStyle CssClass="bg-blue-500 text-white font-semibold px-4 py-2 rounded-lg cursor-pointer"/>
        </asp:PagerStyle>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT TASK_USER.*, &quot;User&quot;.ID, TASK.ID AS EXPR1 FROM TASK, &quot;User&quot;, TASK_USER WHERE TASK.ID = &quot;User&quot;.ID AND TASK.ID = TASK_USER.TASK_ID AND &quot;User&quot;.ID = TASK_USER.USER_ID"></asp:SqlDataSource>
    </form>

</body>
</html>
