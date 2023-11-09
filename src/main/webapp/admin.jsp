<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="org.json.*"%>
<%@ page import="Entity.User" %>
=======
>>>>>>> 058ff3b2ede13834ffd1b989b6914535a19d1e83
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <title>Admin Dashboard</title>
<<<<<<< HEAD
    
    <style>
    #p2{
    
    }
    
    	.header-right a{
    		font-size: 25px;
    		margin-left:10px;
    	}
    	#p1{
    	display:flex;
    	justify-content: center;
  align-items: center;
    	}
    	
    </style>

    <!-- Montserrat Font -->
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0" />
    <link
        href="https://fonts.googleapis.com/css2?family=Montserrat:wght@100;200;300;400;500;600;700;800;900&display=swap"
        rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
=======

    <!-- Montserrat Font -->
    <link
        href="https://fonts.googleapis.com/css2?family=Montserrat:wght@100;200;300;400;500;600;700;800;900&display=swap"
        rel="stylesheet">
>>>>>>> 058ff3b2ede13834ffd1b989b6914535a19d1e83

    <!-- Material Icons -->
    <!-- <link href="https://fonts.googleapis.com/icon?family=Material+Icons+Outlined" rel="stylesheet"> -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<<<<<<< HEAD
	
    <!-- Custom CSS -->
    <link rel="stylesheet" href="assets/css/styless.css">
</head>
<% 
	User user=(User)session.getAttribute("currentuser"); 
	if(user==null){
		response.sendRedirect("login.jsp");
	}
%>
=======

    <!-- Custom CSS -->
    <link rel="stylesheet" href="assets/css/styless.css">
</head>

>>>>>>> 058ff3b2ede13834ffd1b989b6914535a19d1e83
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
<<<<<<< HEAD
                <H1>Welcome , <%= user.getName() %></H1>
                <!-- <span class="fa-solid fa-magnifying-glass"></span> -->
            </div>
            <div class="header-right">
                
             <span> <a href="admin.jsp" class='bx bxs-home' style="text-decoration: none;font-size:30px;" id="p2""></a></span>
                <a class="fa-solid fa-circle-user" data-toggle="modal" data-target="#exampleModal" href=""></a>
            </div>
            <!-- Button trigger modal -->

<!-- Modal -->

            
        </header>
        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content text-center">
    <center><img src="assets/images/user.png" height="150px" width="150px"></center>
      <div class="modal-header">
      
        <h5 class="modal-title " id="exampleModalLabel"></h5>
        <center><h4 style="margin-right:150px">User Details</h4></center>
        
          
        </button>
      </div>
      <div class="modal-body">
       <div class="main">
       <table class="table table-striped-columns">
  <tbody>
    <tr>
      <th scope="row">Name</th>
      <td><%= user.getName() %></td>
    </tr>
    <tr>
      <th scope="row">Email</th>
      <td id="p1"><%=user.getEmail() %></td>
    </tr>
     <tr>
      <th scope="row"></th>
      <td id="p1"></td>
    </tr>
  </tbody>
</table>
       </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        
      </div>
    </div>
  </div>
</div>
        <!-- End Header -->
        
        <!-- Body  -->
=======
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
>>>>>>> 058ff3b2ede13834ffd1b989b6914535a19d1e83

        <!-- Sidebar -->
        <aside id="sidebar">
            <div class="sidebar-title">
                <div class="sidebar-brand">
<<<<<<< HEAD
                    <span class="fa-solid fa-user-tie"></span> <%= user.getRole() %>
=======
                    <span class="fa-solid fa-user-tie"></span><%=session.getAttribute("user") %>
>>>>>>> 058ff3b2ede13834ffd1b989b6914535a19d1e83
                </div>
                <span class="material-icons-outlined" onclick="closeSidebar()">close</span>
            </div>

            <ul class="sidebar-list">
<<<<<<< HEAD
                
                <li class="sidebar-list-item">
                    <a href="Stlist.jsp">
                        <span class="fa-solid fa-users"></span> Student's
                    </a>
                </li>
                
                <li class="sidebar-list-item">
                    <a href="Ftlist.jsp">
                    	<!-- <i class="fa-solid fa-person-chalkboard"></i> -->
                        <span class="fa-solid fa-person-chalkboard"></span> Faculty's
                    </a>
                </li>
                                       
                
                <li class="sidebar-list-item">
                    <a href="updatepass.jsp?page=admin" >
                        <!-- info -->
                        <span class="fa-solid fa-circle-info"></span> Update Password
                    </a>
                </li>
                <li class="sidebar-list-item">
                    <a href="Logout">
                        <!-- settings -->
                        <i class="fa-solid fa-right-from-bracket"></i>
=======
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
                        <span class="fa-solid fa-building"></span> Componies
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
                    <a href="#" target="_blank">
                        <!-- info -->
                        <span class="fa-solid fa-circle-info"></span> College Info
                    </a>
                </li>
                <li class="sidebar-list-item">
                    <a href="#" target="_blank">
                        <!-- settings -->
>>>>>>> 058ff3b2ede13834ffd1b989b6914535a19d1e83
                        <span class="material-icons-outlined"></span> Logout  
                    </a>
                </li>
            </ul>
        </aside>
       

    </div>

    <!-- Scripts -->
    <!-- ApexCharts -->
<<<<<<< HEAD
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
    
=======
>>>>>>> 058ff3b2ede13834ffd1b989b6914535a19d1e83
    <script src="https://cdnjs.cloudflare.com/ajax/libs/apexcharts/3.35.5/apexcharts.min.js"></script>
    <!-- Custom JS -->
    <script src="assets/js/scripts.js"></script>
</body>

</html>