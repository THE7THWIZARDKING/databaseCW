<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Subtask.aspx.cs" Inherits="databaseCW.Subtask" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Subtask</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 text-gray-900">
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
    
    <form id="form1" runat="server" class="p-6">
        <div class="bg-white shadow-lg rounded-lg p-6">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" CssClass="table-auto w-full border-collapse border border-gray-300">
                <AlternatingRowStyle CssClass="bg-gray-50" />
                <HeaderStyle CssClass="bg-gray-800 text-white" />
                <RowStyle CssClass="border-b border-gray-300" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" />
                    <asp:BoundField DataField="STATUS" HeaderText="STATUS" SortExpression="STATUS" />
                    <asp:BoundField DataField="TASK_ID" HeaderText="TASK_ID" SortExpression="TASK_ID" />
                    <asp:BoundField DataField="USER_ID" HeaderText="USER_ID" SortExpression="USER_ID" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;SUB_TASK&quot; WHERE &quot;ID&quot; = :ID" InsertCommand="INSERT INTO &quot;SUB_TASK&quot; (&quot;ID&quot;, &quot;NAME&quot;, &quot;STATUS&quot;, &quot;TASK_ID&quot;, &quot;USER_ID&quot;) VALUES (:ID, :NAME, :STATUS, :TASK_ID, :USER_ID)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;SUB_TASK&quot;" UpdateCommand="UPDATE &quot;SUB_TASK&quot; SET &quot;NAME&quot; = :NAME, &quot;STATUS&quot; = :STATUS, &quot;TASK_ID&quot; = :TASK_ID, &quot;USER_ID&quot; = :USER_ID WHERE &quot;ID&quot; = :ID">
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
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="ID" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
            <EditItemTemplate>
                ID:
                <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
                <br />
                NAME:
                <asp:TextBox ID="NAMETextBox" runat="server" Text='<%# Bind("NAME") %>' />
                <br />
                STATUS:
                <asp:TextBox ID="STATUSTextBox" runat="server" Text='<%# Bind("STATUS") %>' />
                <br />
                TASK_ID:
                <asp:TextBox ID="TASK_IDTextBox" runat="server" Text='<%# Bind("TASK_ID") %>' />
                <br />
                USER_ID:
                <asp:TextBox ID="USER_IDTextBox" runat="server" Text='<%# Bind("USER_ID") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#F7F7DE" Font-Bold="True" ForeColor="black" />
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <InsertItemTemplate>
                ID:
                <asp:TextBox ID="IDTextBox" runat="server" Text='<%# Bind("ID") %>' />
                <br />
                NAME:
                <asp:TextBox ID="NAMETextBox" runat="server" Text='<%# Bind("NAME") %>' />
                <br />
                STATUS:
                <asp:TextBox ID="STATUSTextBox" runat="server" Text='<%# Bind("STATUS") %>' />
                <br />
                TASK_ID:
                <asp:TextBox ID="TASK_IDTextBox" runat="server" Text='<%# Bind("TASK_ID") %>' />
                <br />
                USER_ID:
                <asp:TextBox ID="USER_IDTextBox" runat="server" Text='<%# Bind("USER_ID") %>' />
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
                STATUS:
                <asp:Label ID="STATUSLabel" runat="server" Text='<%# Bind("STATUS") %>' />
                <br />
                TASK_ID:
                <asp:Label ID="TASK_IDLabel" runat="server" Text='<%# Bind("TASK_ID") %>' />
                <br />
                USER_ID:
                <asp:Label ID="USER_IDLabel" runat="server" Text='<%# Bind("USER_ID") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
        </asp:FormView>
    </form>
</body>
</html>
