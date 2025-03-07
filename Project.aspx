<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Project.aspx.cs" Inherits="databaseCW.Project" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Project Management</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100">
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
    <form id="form1" runat="server" class="container mx-auto p-6 bg-white shadow-lg rounded-lg">
        <div class="text-center mb-8">
            <h1 class="text-4xl font-bold text-gray-800">Project Management</h1>
        </div>

        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource2" 
                      BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical"
                      class="min-w-full text-sm text-gray-700 shadow-md rounded-lg">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" HeaderText="Actions" 
                                 ItemStyle-CssClass="px-4 py-2 text-center" >
<ItemStyle CssClass="px-4 py-2 text-center"></ItemStyle>
                </asp:CommandField>
                <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" ItemStyle-CssClass="px-4 py-2 text-center" >
<ItemStyle CssClass="px-4 py-2 text-center"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="NAME" HeaderText="Project Name" SortExpression="NAME" ItemStyle-CssClass="px-4 py-2 text-center" >
<ItemStyle CssClass="px-4 py-2 text-center"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="START_DATE" HeaderText="Start Date" SortExpression="START_DATE" ItemStyle-CssClass="px-4 py-2 text-center" >
<ItemStyle CssClass="px-4 py-2 text-center"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="END_DATE" HeaderText="End Date" SortExpression="END_DATE" ItemStyle-CssClass="px-4 py-2 text-center" >
<ItemStyle CssClass="px-4 py-2 text-center"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="STATUS" HeaderText="Status" SortExpression="STATUS" ItemStyle-CssClass="px-4 py-2 text-center" >
<ItemStyle CssClass="px-4 py-2 text-center"></ItemStyle>
                </asp:BoundField>
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />

           
            <PagerSettings Mode="Numeric" Position="Bottom" FirstPageText="First" LastPageText="Last" />
            <PagerStyle CssClass="flex justify-center items-center space-x-4 mt-6 bg-gray-100 p-3 rounded-full shadow-md" BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Center" />
        </asp:GridView>

        <asp:FormView ID="FormView1" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Vertical">
            <EditItemTemplate>
                ID:
                <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
                <br />
                NAME:
                <asp:TextBox ID="NAMETextBox" runat="server" Text='<%# Bind("NAME") %>' />
                <br />
                START_DATE:
                <asp:TextBox ID="START_DATETextBox" runat="server" Text='<%# Bind("START_DATE") %>' />
                <br />
                END_DATE:
                <asp:TextBox ID="END_DATETextBox" runat="server" Text='<%# Bind("END_DATE") %>' />
                <br />
                STATUS:
                <asp:TextBox ID="STATUSTextBox" runat="server" Text='<%# Bind("STATUS") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <InsertItemTemplate>
                ID:
                <asp:TextBox ID="IDTextBox" runat="server" Text='<%# Bind("ID") %>' />
                <br />
                NAME:
                <asp:TextBox ID="NAMETextBox" runat="server" Text='<%# Bind("NAME") %>' />
                <br />
                START_DATE:
                <asp:TextBox ID="START_DATETextBox" runat="server" Text='<%# Bind("START_DATE") %>' />
                <br />
                END_DATE:
                <asp:TextBox ID="END_DATETextBox" runat="server" Text='<%# Bind("END_DATE") %>' />
                <br />
                STATUS:
                <asp:TextBox ID="STATUSTextBox" runat="server" Text='<%# Bind("STATUS") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                ID:
                <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                <br />
                NAME:
                <asp:Label ID="NAMELabel" runat="server" Text='<%# Bind("NAME") %>' />
                <br />
                START_DATE:
                <asp:Label ID="START_DATELabel" runat="server" Text='<%# Bind("START_DATE") %>' />
                <br />
                END_DATE:
                <asp:Label ID="END_DATELabel" runat="server" Text='<%# Bind("END_DATE") %>' />
                <br />
                STATUS:
                <asp:Label ID="STATUSLabel" runat="server" Text='<%# Bind("STATUS") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
        </asp:FormView>

        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                          DeleteCommand="DELETE FROM &quot;PROJECT&quot; WHERE &quot;ID&quot; = :ID"
                          InsertCommand="INSERT INTO &quot;PROJECT&quot; (&quot;ID&quot;, &quot;NAME&quot;, &quot;START_DATE&quot;, &quot;END_DATE&quot;, &quot;STATUS&quot;) 
                                         VALUES (:ID, :NAME, :START_DATE, :END_DATE, :STATUS)"
                          ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                          SelectCommand="SELECT * FROM &quot;PROJECT&quot;" 
                          UpdateCommand="UPDATE &quot;PROJECT&quot; SET &quot;NAME&quot; = :NAME, &quot;START_DATE&quot; = :START_DATE, 
                                         &quot;END_DATE&quot; = :END_DATE, &quot;STATUS&quot; = :STATUS WHERE &quot;ID&quot; = :ID">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ID" Type="Decimal" />
                <asp:Parameter Name="NAME" Type="String" />
                <asp:Parameter Name="START_DATE" Type="DateTime" />
                <asp:Parameter Name="END_DATE" Type="DateTime" />
                <asp:Parameter Name="STATUS" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="NAME" Type="String" />
                <asp:Parameter Name="START_DATE" Type="DateTime" />
                <asp:Parameter Name="END_DATE" Type="DateTime" />
                <asp:Parameter Name="STATUS" Type="String" />
                <asp:Parameter Name="ID" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>

</body>
</html>
