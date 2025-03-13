<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="databaseCW.Properties.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <script src="https://cdn.tailwindcss.com"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
                   <nav class="bg-gray-800 p-4 shadow-md">
           <div class="container mx-auto flex justify-between items-center">
          <asp:HyperLink CssClass="text-white text-2xl font-semibold" NavigateUrl="~/" runat="server">Database CW</asp:HyperLink>

               <ul class="hidden md:flex space-x-4 ml-auto">
                                <li><a class="hover:text-gray-300 text-white" runat="server" href="~/Home">Home</a></li>
              <li><a class="hover:text-gray-300 text-white" runat="server" href="~/user">User</a></li>
              <li><a class="hover:text-gray-300 text-white" runat="server" href="~/Task">Task</a></li>
              <li><a class="hover:text-gray-300 text-white" runat="server" href="~/Milestone">Milestone</a></li>
                <li><a class="hover:text-gray-300 text-white " runat="server" href="~/SubTask">SubTask</a></li>
<li><a class="hover:text-gray-300 text-white " runat="server" href="~/Project_User">Project-User</a></li>
<li><a class="hover:text-gray-300 text-white " runat="server" href="~/Task_User">Task-User</a></li>
<li><a class="hover:text-gray-300 text-white " runat="server" href="~/Project">Project</a></li>
 <li><a class="hover:text-gray-300 text-white " runat="server" href="~/Project_Milestone">Project_Milestone</a></li>
</ul>
               <button class="md:hidden text-white">☰</button>
           </div>
       </nav>
        </div>
   <div class="bg-gray-100 min-h-screen flex">
    
   
    
    <!-- Main Content -->
    <main class="flex-1 p-8">
        <h1 class="text-4xl font-bold text-gray-800">Graphical Dashboard</h1>
        
        <!-- Grid Layout for Sections -->
        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6 mt-6">
            
            <!-- Top Performer -->
            <div class="bg-white p-6 rounded-lg shadow-md border-l-4 border-green-500">
                <h2 class="text-xl font-bold">Top Performer</h2>
                <p class="text-gray-600">Highlighting the top performer based on project milestones and contributions.</p>
            </div>
            
            <!-- Summary of System Implementation -->
            <div class="bg-white p-6 rounded-lg shadow-md border-l-4 border-blue-500">
                <h2 class="text-xl font-bold">System Implementation Summary</h2>
                <p class="text-gray-600">Overview of key components and functionalities.</p>
            </div>
            
            <!-- Testing Document -->
            <div class="bg-white p-6 rounded-lg shadow-md border-l-4 border-yellow-500">
                <h2 class="text-xl font-bold">Testing Document</h2>
                <p class="text-gray-600">Details on testing procedures, results, and logs.</p>
            </div>
        </div>        
    </main>
</div>
    </form>
</body>
</html>
