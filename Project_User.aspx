<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Project_User.aspx.cs" Inherits="databaseCW.Project_User" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Project User Management</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet" />
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

    <form id="form1" runat="server" class="container mx-auto p-4">
        <!-- User Selection -->
        <div class="mb-4">
            <label for="ddlUsers" class="block text-gray-700">Select User:</label>
            <asp:DropDownList ID="ddlUsers" runat="server" AutoPostBack="True" 
                DataSourceID="sdsUsers" DataTextField="ID_NAME" DataValueField="ID" 
                CssClass="mt-1 block w-full border-gray-300 rounded-md shadow-sm" />
        </div>

        <!-- User Details Section -->
        <div class="mb-4">
            <h2 class="text-xl font-bold mb-2">User Details</h2>
            <div class="overflow-x-auto">
                <asp:GridView ID="gvUserDetails" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="ID" DataSourceID="sdsUserDetails" AllowSorting="True" AllowPaging="True" 
                    CssClass="min-w-full divide-y divide-gray-200"
                    HeaderStyle-CssClass="bg-gray-50"
                    RowStyle-CssClass="bg-white"
                    AlternatingRowStyle-CssClass="bg-gray-50" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
<AlternatingRowStyle CssClass="bg-gray-50" BackColor="White"></AlternatingRowStyle>
                    <Columns>
                        <asp:BoundField DataField="ID" HeaderText="User ID" ReadOnly="True" SortExpression="ID" ItemStyle-CssClass="px-6 py-4 whitespace-nowrap text-right" >
<ItemStyle CssClass="px-6 py-4 whitespace-nowrap text-right"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="NAME" HeaderText="Name" SortExpression="NAME" ItemStyle-CssClass="px-6 py-4 whitespace-nowrap" >
<ItemStyle CssClass="px-6 py-4 whitespace-nowrap"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="ADDRESS" HeaderText="Address" SortExpression="ADDRESS" ItemStyle-CssClass="px-6 py-4 whitespace-nowrap" >
<ItemStyle CssClass="px-6 py-4 whitespace-nowrap"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="ROLE" HeaderText="Role" SortExpression="ROLE" ItemStyle-CssClass="px-6 py-4 whitespace-nowrap" >
<ItemStyle CssClass="px-6 py-4 whitespace-nowrap"></ItemStyle>
                        </asp:BoundField>
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" />

<HeaderStyle CssClass="bg-gray-50" BackColor="#6B696B" Font-Bold="True" ForeColor="White"></HeaderStyle>

                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />

<RowStyle CssClass="bg-white" BackColor="#F7F7DE"></RowStyle>
                    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FBFBF2" />
                    <SortedAscendingHeaderStyle BackColor="#848384" />
                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                    <SortedDescendingHeaderStyle BackColor="#575357" />
                </asp:GridView>
            </div>
        </div>

        <!-- Associated Projects Section -->
        <div class="mb-4">
            <h2 class="text-xl font-bold mb-2">Associated Projects</h2>
            <div class="overflow-x-auto">
                <asp:GridView ID="gvUserProjects" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="ID" DataSourceID="sdsUserProjects" AllowSorting="True" AllowPaging="True"
                    CssClass="min-w-full divide-y divide-gray-200"
                    HeaderStyle-CssClass="bg-gray-50"
                    RowStyle-CssClass="bg-white"
                    AlternatingRowStyle-CssClass="bg-gray-50" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
<AlternatingRowStyle CssClass="bg-gray-50" BackColor="White"></AlternatingRowStyle>
                    <Columns>
                        <asp:BoundField DataField="ID" HeaderText="Project ID" ReadOnly="True" SortExpression="ID" ItemStyle-CssClass="px-6 py-4 whitespace-nowrap text-right" >
<ItemStyle CssClass="px-6 py-4 whitespace-nowrap text-right"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="NAME" HeaderText="Project Name" SortExpression="NAME" ItemStyle-CssClass="px-6 py-4 whitespace-nowrap" >
<ItemStyle CssClass="px-6 py-4 whitespace-nowrap"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="START_DATE" HeaderText="Start Date" SortExpression="START_DATE" DataFormatString="{0:d}" ItemStyle-CssClass="px-6 py-4 whitespace-nowrap" >
<ItemStyle CssClass="px-6 py-4 whitespace-nowrap"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="END_DATE" HeaderText="End Date" SortExpression="END_DATE" DataFormatString="{0:d}" ItemStyle-CssClass="px-6 py-4 whitespace-nowrap" >
<ItemStyle CssClass="px-6 py-4 whitespace-nowrap"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="STATUS" HeaderText="Status" SortExpression="STATUS" ItemStyle-CssClass="px-6 py-4 whitespace-nowrap" >
<ItemStyle CssClass="px-6 py-4 whitespace-nowrap"></ItemStyle>
                        </asp:BoundField>
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" />

<HeaderStyle CssClass="bg-gray-50" BackColor="#6B696B" Font-Bold="True" ForeColor="White"></HeaderStyle>

                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />

<RowStyle CssClass="bg-white" BackColor="#F7F7DE"></RowStyle>
                    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FBFBF2" />
                    <SortedAscendingHeaderStyle BackColor="#848384" />
                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                    <SortedDescendingHeaderStyle BackColor="#575357" />
                </asp:GridView>
            </div>
        </div>

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
</body>
</html>