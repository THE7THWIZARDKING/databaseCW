 <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="databaseCW.Properties.Home" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Dashboard - Database CW</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chartjs-plugin-datalabels@2.2.0"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
</head>
<body class="bg-gray-100 font-sans">
    <form id="form1" runat="server">
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
                      <asp:HyperLink NavigateUrl="~/TopPerformer" runat="server" 
      CssClass="px-3 py-2 rounded-md text-sm font-medium text-gray-300 hover:bg-gray-700 hover:text-white transition-colors">TopPerformer</asp:HyperLink>
                </div>
            </div>
        </nav>

        <!-- Main Content -->
        <main class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-8">
            <h1 class="text-3xl md:text-4xl font-bold text-gray-900 mb-8 text-center">Project Management Dashboard</h1>
            
            <!-- Stats Grid -->
           <!-- Modified Stats Grid -->
<div class="grid grid-cols-1 md:grid-cols-3 gap-4 mb-12">
    <!-- Top Performer Card (Now Clickable) -->
    

    <!-- Rest of the cards remain unchanged -->
    <div class="bg-white p-6 rounded-xl shadow-sm border border-gray-200 flex items-center">
        <div class="bg-blue-100 p-3 rounded-lg mr-4">
            <i class="fas fa-folder-open text-blue-600 text-2xl"></i>
        </div>
        <div>
            <p class="text-sm text-gray-500 mb-1">Total Projects</p>
            <p class="text-lg font-semibold text-gray-900">15</p>
            <span class="text-sm text-gray-500">8 Active</span>
        </div>
    </div>
    <div class="bg-white p-6 rounded-xl shadow-sm border border-gray-200 flex items-center">
        <div class="bg-amber-100 p-3 rounded-lg mr-4">
            <i class="fas fa-flag-checkered text-amber-600 text-2xl"></i>
        </div>
        <div>
            <p class="text-sm text-gray-500 mb-1">Milestones</p>
            <p class="text-lg font-semibold text-gray-900">9 Completed</p>
            <span class="text-sm text-gray-500">3 Remaining</span>
        </div>
    </div>
</div>

            <!-- Charts Section -->
            <div class="grid grid-cols-1 lg:grid-cols-2 gap-8">
                <!-- Task Completion Chart -->
                <div class="bg-white p-6 rounded-xl shadow-sm border border-gray-200">
                    <div class="flex justify-between items-center mb-6">
                        <h2 class="text-lg font-semibold text-gray-800">Task Completion Status</h2>
                        <div class="flex space-x-2">
                            <span class="flex items-center text-sm text-gray-600">
                                <span class="w-2 h-2 bg-emerald-500 rounded-full mr-2"></span>Completed
                            </span>
                            <span class="flex items-center text-sm text-gray-600">
                                <span class="w-2 h-2 bg-blue-500 rounded-full mr-2"></span>Ongoing
                            </span>
                            <span class="flex items-center text-sm text-gray-600">
                                <span class="w-2 h-2 bg-amber-500 rounded-full mr-2"></span>Pending
                            </span>
                        </div>
                    </div>
                    <div class="relative h-72">
                        <canvas id="taskCompletionChart"></canvas>
                    </div>
                </div>

                <!-- Project Status Chart -->
                <div class="bg-white p-6 rounded-xl shadow-sm border border-gray-200">
                    <h2 class="text-lg font-semibold text-gray-800 mb-6">Project Status Overview</h2>
                    <div class="relative h-72">
                        <canvas id="projectStatusChart"></canvas>
                    </div>
                </div>
            </div>
        </main>

        <script>
            document.addEventListener("DOMContentLoaded", function () {
                Chart.register(ChartDataLabels);

                const chartOptions = {
                    responsive: true,
                    maintainAspectRatio: false,
                    plugins: {
                        datalabels: {
                            color: '#ffffff',
                            font: {
                                weight: 'bold',
                                size: 14
                            },
                            formatter: (value) => {
                                return value + '%';
                            }
                        },
                        legend: {
                            position: 'bottom',
                            labels: {
                                boxWidth: 12,
                                padding: 20
                            }
                        },
                        tooltip: {
                            enabled: true,
                            backgroundColor: 'rgba(0,0,0,0.8)',
                            titleFont: { size: 14 },
                            bodyFont: { size: 14 },
                            padding: 12
                        }
                    }
                };

                // Task Completion Chart
                new Chart(document.getElementById("taskCompletionChart"), {
                    type: 'doughnut',
                    data: {
                        labels: ['Completed (42)', 'Ongoing (30)', 'Pending (15)'],
                        datasets: [{
                            data: [42, 30, 15],
                            backgroundColor: ['#10B981', '#3B82F6', '#F59E0B'],
                            borderWidth: 0,
                            hoverOffset: 8
                        }]
                    },
                    options: {
                        ...chartOptions,
                        cutout: '70%',
                        plugins: {
                            ...chartOptions.plugins,
                            datalabels: {
                                display: false
                            }
                        }
                    }
                });

                // Project Status Chart
                new Chart(document.getElementById("projectStatusChart"), {
                    type: 'bar',
                    data: {
                        labels: ['Active', 'Completed', 'Pending'],
                        datasets: [{
                            label: 'Projects',
                            data: [8, 5, 2],
                            backgroundColor: ['#3B82F6', '#10B981', '#F59E0B'],
                            borderRadius: 8,
                            borderSkipped: false,
                            barThickness: 40
                        }]
                    },
                    options: {
                        ...chartOptions,
                        scales: {
                            y: {
                                beginAtZero: true,
                                grid: {
                                    color: '#e5e7eb'
                                },
                                ticks: {
                                    stepSize: 2,
                                    color: '#6b7280'
                                }
                            },
                            x: {
                                grid: {
                                    display: false
                                },
                                ticks: {
                                    color: '#6b7280'
                                }
                            }
                        },
                        plugins: {
                            ...chartOptions.plugins,
                            datalabels: {
                                anchor: 'end',
                                align: 'end',
                                offset: 4
                            }
                        }
                    }
                });
            });
        </script>
    </form>
</body>
</html> 