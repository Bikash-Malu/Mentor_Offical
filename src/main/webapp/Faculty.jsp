<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="org.json.*"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <title>Admin Dashboard</title>

    <!-- Montserrat Font -->
    <link
        href="https://fonts.googleapis.com/css2?family=Montserrat:wght@100;200;300;400;500;600;700;800;900&display=swap"
        rel="stylesheet">

    <!-- Material Icons -->
    <!-- <link href="https://fonts.googleapis.com/icon?family=Material+Icons+Outlined" rel="stylesheet"> -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <!-- Custom CSS -->
    <link rel="stylesheet" href="assets/css/styless.css">
</head>

<body>
    <div class="grid-container">

        <!-- Header -->
        <header class="header">
            <div class="menu-icon" onclick="openSidebar()">
                <!-- MENU -->
                <span class="fa-solid fa-bars"></span>
            </div>
            <div class="header-left">
                <!-- search -->
                <H1>WELCOME,<%=session.getAttribute("user_name") %></H1>
                <!-- <span class="fa-solid fa-magnifying-glass"></span> -->
            </div>
            <div class="header-right">
                <span class="fa-solid fa-bell"></span>
                <span class="fa-solid fa-envelope"></span>
                <span class="fa-solid fa-circle-user"></span>
               
            </div>
        </header>
        <!-- End Header -->

        <!-- Sidebar -->
        <aside id="sidebar">
            <div class="sidebar-title">
                <div class="sidebar-brand">
                    <span class="fa-solid fa-user-tie"></span><%=session.getAttribute("user") %>
                </div>
                <span class="material-icons-outlined" onclick="closeSidebar()">close</span>
            </div>

            <ul class="sidebar-list">
                <li class="sidebar-list-item">
                    <a href="#" target="_blank">
                        <span class="fa-solid fa-users"> <a href="/T&F/student.html">Students</a></span> 
                    </a>
                </li>
                <li class="sidebar-list-item">
                    <a href="#" target="_blank">
                        <span class="fa-solid fa-users-line"></span> HODs
                    </a>
                </li>
                <li class="sidebar-list-item">
                    <a href="#" target="_blank">
                        <span class="fa-solid fa-building"></span> Companies
                    </a>
                </li>
                <li class="sidebar-list-item">
                    <a href="#" target="_blank">
                        <span class="fa-solid fa-address-book"></span>Opening
                    </a>
                </li>
                <li class="sidebar-list-item">
                    <a href="#" target="_blank">
                        <span class="fa-solid fa-users-between-lines"></span> Selected Student
                    </a>
                </li>
                <li class="sidebar-list-item">
                    <a href="updatepass.jsp?page=Faculty" >
                        <!-- info -->
                        <span class="fa-solid fa-circle-info"></span> Update Password
                    </a>
                </li>
                <li class="sidebar-list-item">
                    <a href="Logout">
                        <!-- settings -->
                        <span class="material-icons-outlined"></span> Logout  
                    </a>
                </li>
            </ul>
        </aside>
       

    </div>

    <!-- Scripts -->
    <!-- ApexCharts -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/apexcharts/3.35.5/apexcharts.min.js"></script>
    <!-- Custom JS -->
    <script src="assets/js/scripts.js"></script>
</body>

</html>