<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <link rel="stylesheet" href="Dasboard2/style.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Font+Name">
    <link href="https://fonts.googleapis.com/icon?family=Material+Symbols" rel="stylesheet">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    
  </head>
  <body>
  	<!-- Side Bar Start -->
    <div class="sidebar">
      <div class="logo-details">
        <i class="bx bxl-c-plus-plus icon"></i>
        <div class="logo_name">Mentor Offical</div>
        <i class="bx bx-menu" id="btn"></i>
      </div>
      <ul class="nav-list">
       
        <li>
          <a href="Student.jsp">
            <i class='bx bxs-dashboard' ></i>
            <span class="links_name">Home</span>
          </a>
          <span class="tooltip">Home</span>
        </li>
        <li>
          <a href="profile.jsp">
            <i class="bx bx-user"></i>
            <span class="links_name"><%=session.getAttribute("user_name") %></span>
          </a>
          <span class="tooltip"><%=session.getAttribute("user_name") %></span>
        </li>
        <li>
          <a href="#">
            <i class="bx bx-chat"></i>
            <span class="links_name">Questions</span>
          </a>
          <span class="tooltip">Questions</span>
        </li>
        <li>
          <a href="updatepass.jsp?page=Student">
            <i class='bx bxs-lock-alt' ></i>
            <span class="links_name">Change Password</span>
          </a>
          <span class="tooltip">Change Password</span>
        </li>
       
        <li>
          <a href="Logout">
            <i class="bx bx-log-out" id="log_out"></i>
            <span class="links_name">Logout</span>
          </a>
          <span class="tooltip">Logout</span>
        </li>
        <li class="profile">
          <div class="profile-details">
          
            <div class="name_job">
              <!-- <h2 class="name">Mentor Offical</h2> -->
              
            </div>
          </div>
          
        </li>
      </ul>
    </div>
    <!-- Side Bar End -->
    
    <section class="home-section">
      <div class="text"><%=session.getAttribute("user_name") %></div>
      
      
    </section>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
    <script src="Dasboard2/index.js"></script>
    
  </body>
</html>