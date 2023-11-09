<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <link rel="stylesheet" href="Dasboard2/style.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Font+Name">
    <link href="https://fonts.googleapis.com/icon?family=Material+Symbols" rel="stylesheet">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0" />
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
<style>
* {
    margin: 0;
}

body {
    background-color: #e8f5ff;
    font-family: Arial;
    overflow: hidden;
}

/* NavbarTop */
.navbar-top {
    background-color: #fff;
    color: #333;
    box-shadow: 0px 4px 8px 0px grey;
    height: 70px;
}

.title {
    font-family: 'Dancing Script', cursive;
    padding-top: 15px;
    position: absolute;
    left: 45%;
}

.navbar-top ul {
    float: right;
    list-style-type: none;
    margin: 0;
    overflow: hidden;
    padding: 18px 50px 0 40px;
}

.navbar-top ul li {
    float: left;
}

.navbar-top ul li a {
    color: #333;
    padding: 14px 16px;
    text-align: center;
    text-decoration: none;
}

.icon-count {
    background-color: #ff0000;
    color: #fff;
    float: right;
    font-size: 11px;
    left: -25px;
    padding: 2px;
    position: relative;
}

/* End */

/* Sidenav */
.sidenav {
    background-color: #fff;
    color: #333;
    border-bottom-right-radius: 25px;
    height: 86%;
    left: 0;
    overflow-x: hidden;
    padding-top: 20px;
    position: absolute;
    top: 70px;
    width: 250px;
}

.profile {
    margin-bottom: 20px;
    margin-top: -12px;
    text-align: center;
}

.profile img {
    border-radius: 50%;
    box-shadow: 0px 0px 5px 1px grey;
}

.name {
    font-size: 20px;
    font-weight: bold;
    padding-top: 20px;
}

.job {
    font-size: 16px;
    font-weight: bold;
    padding-top: 10px;
}

.url, hr {
    text-align: center;
}

.url hr {
    margin-left: 20%;
    width: 60%;
}

.url a {
    color: #818181;
    display: block;
    font-size: 20px;
    margin: 10px 0;
    padding: 6px 8px;
    text-decoration: none;
}

.url a:hover, .url .active {
    background-color: #e8f5ff;
    border-radius: 28px;
    color: #000;
    margin-left: 14%;
    width: 65%;
}

/* End */

/* Main */
.main {
    margin-top: 2%;
    margin-left: 29%;
    font-size: 28px;
    padding: 0 10px;
    width: 58%;
}

.main h2 {
    color: #333;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    font-size: 24px;
    margin-bottom: 10px;
}

.main .card {
    background-color: #fff;
    border-radius: 18px;
    box-shadow: 1px 1px 8px 0 grey;
    height: auto;
    margin-bottom: 20px;
    padding: 20px 0 20px 50px;
}

.main .card table {
    border: none;
    font-size: 16px;
    height: 270px;
    width: 80%;
}

.edit {
    position: absolute;
    color: #e7e7e8;
    right: 14%;
}

.social-media {
    text-align: center;
    width: 90%;
}

.social-media span {
    margin: 0 10px;
}

.fa-facebook:hover {
    color: #4267b3 !important;
}

.fa-twitter:hover {
    color: #1da1f2 !important;
}

.fa-instagram:hover {
    color: #ce2b94 !important;
}

.fa-invision:hover {
    color: #f83263 !important;
}

.fa-github:hover {
    color: #161414 !important;
}

.fa-whatsapp:hover {
    color: #25d366 !important;
}

.fa-snapchat:hover {
    color: #fffb01 !important;
}
label{
font-size:18px;
}

/* End */

</style>
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
          <div class="main" id="p1">
        
        <div class="card" >
            <div class="card-body"  >
                <button id="btn" type="button" onclick="main()"><i class="fa fa-pen fa-xs edit" id="icon" style="color:black"></i></button>
                <table id="tbl" class="table">
                    <tbody>
                        <tr>
                            <td>Name</td>
                            <td>:</td>
                            <td><%=session.getAttribute("user_name") %></td>
                        </tr>
                        <tr>
                            <td>Email</td>
                            <td>:</td>
                            <td><%=session.getAttribute("user_id") %></td>
                        </tr>
                        <tr>
                            <td>Address</td>
                            <td>:</td>
                            <td>Bali, Indonesia</td>
                        </tr>
                        <tr>
                            <td>Phone</td>
                            <td>:</td>
                            <td>9583856595</td>
                        </tr>
                        <tr>
                            <td>DoB</td>
                            <td>:</td>
                            <td>03-05-2003</td>
                        </tr>
                        
                    </tbody>
                </table>
            </div>
            <div id="edit" style="display:none" class="container">
            <div class="col-md-10">
            <div class="card">
            
            <div class="card-header text-center">
            Please update carefully
            </div>
            <div class="card-body">
                        <label>Name:</label><input type="text" class="form-control" placeholder="enter name here" value="<%=session.getAttribute("user_name") %>">
            <label>Address</label><input type="text" class="form-control" placeholder="enter address here" >
            <label>Phone</label><input type="text" class="form-control" placeholder="enter number here">
            <label>DOB</label><input type="date" class="form-control" >
            <button class="btn btn-outline-warning mt-4">Update!!</button>
            </div>
            </div>
            <div class="card-footer"></div>
            </div>
           
            </div>
        </div>
      
      
    </section>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
   
    <script>
    let a1=false;
    function main(){
    	
    	let a=document.getElementById('tbl')
    	let b=document.getElementById('edit')
    	let c=document.getElementById('icon')
    	if(a1==false){
    		
    		
    	a.style.display="none";
    	b.style.display="block";
    	c.className="bx bx-arrow-back"
    	
    	a1=true;
    	}
    	
    	else{
        	a.style.display="block";
        	b.style.display="none";
        	c.setAttribute("class","fa fa-pen fa-xs edit")
        	a1=false;
    	}
    	
    }
    </script>
     <script src="Dasboard2/index.js"></script>
    
    
  </body>
</html>
</body>
</html>