<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" href="assets/css/fontawesome.css">
    <link rel="stylesheet" href="assets/css/templatemo-edu-meeting.css">
    <link rel="stylesheet" href="assets/css/owl.css">
    <link rel="stylesheet" href="assets/css/lightbox.css">
    <style>
    .main{
    position:relative;
    top:100px
    }
    
    </style>
</head>
<body>
 <header class="header-area header-sticky" style="background-color:#687EFF">
      <div class="container ">
          <div class="row">
              <div class="col-12">
                  <nav class="main-nav">
                      <!-- ***** Logo Start ***** -->
                      <a href="index.html" class="logo">
                         Mentoring System
                      </a>
                      <!-- ***** Logo End ***** -->
                      <!-- ***** Menu Start ***** -->
                      <ul class="nav">
                          <li class="scroll-to-section"><a href="index.html" class="active">Home</a></li>
                          <li><a href="about.jsp">About</a></li>
                          <li><a href="course.jsp">Course</a></li>
                         
                          <li ><a href="login.jsp">Login</a></li> 
                          <li ><a href="signup.jsp">Register here</a></li> 
                      </ul>        
                      <a class='menu-trigger'>
                          <span>Menu</span>
                      </a>
                      <!-- ***** Menu End ***** -->
                  </nav>
              </div>
          </div>
      </div>
  </header>

	<div class="container mt-5  main p-5 offset-4">
        <form action="Mailauth" method="post">
        <h3 style="margin-left: 90px;" class="mb-3">Forget Password</h3>
        <div class="row">
            <div class="col-md-4 "><input type="email" name="email" class="form-control" id="exampleFormControlInput1" placeholder="enter youe mail id"></div>
            <div class="col-md-2"><button class="btn btn-warning" type="submit">Send otp</button></div>
        </div>
            <div class="row mt-4">
                <div class="col-md-4"><input type="text" class="form-control" placeholder="enter your otp"></div>
            </div>
            <div class="row mt-4" style="margin-left: 150px;">
                <div class="col-md-5"><button type="submit" class="btn btn-outline-info" disabled>Submit</button>
                    </div>
            </div>
        </form>
    </div>
	
	
	

</body>
</html>