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

	<div class="container mt-5  main p-5">
        <form action="Forgetpass" method="post">
        <h3 style="margin-left: 60px;" class="mb-3">Create new password</h3>
        <div class="col-md-4 ">
            <input type="hidden" name="email" class="form-control" id="exampleFormControlInput1" value="${email}">
            </div>
        <div class="row">
            <div class="col-md-4 "><input type="password" class="form-control" id="exampleFormControlInput1" placeholder="enter new password"></div>   
        </div>
            <div class="row mt-4">
                <div class="col-md-4"><input type="password" class="form-control" name="password" placeholder="enter confirm password"></div>
            </div>
            <div class="row mt-4" style="margin-left: 100px;">
                <div class="col-md-1"><button type="reset" class="btn btn-outline-info">Reset</button>
                    </div>
                <div class="col-md-1"><button type="submit" class="btn btn-outline-warning">Confirm</button>
                    </div>
            </div>
        </form>
    </div>
	
	
	

</body>
</html>