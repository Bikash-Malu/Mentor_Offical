<<<<<<< HEAD
=======

>>>>>>> 058ff3b2ede13834ffd1b989b6914535a19d1e83
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
<<<<<<< HEAD
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <style>
            .card-registration .select-input.form-control[readonly]:not([disabled]) {
            font-size: 1rem;
            line-height: 2.15;
            padding-left: .75em;
            padding-right: .75em;
            }
            .card-registration .select-arrow {
            top: 13px;
            }
            #main{
                margin-top: 300px;
            }
        </style>
        <link rel="stylesheet" href="assets/css/fontawesome.css">
        <link rel="stylesheet" href="assets/css/templatemo-edu-meeting.css">
        <link rel="stylesheet" href="assets/css/owl.css">
        <link rel="stylesheet" href="assets/css/lightbox.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    </head>
    <body>
        <header class="header-area header-sticky" style="background-color:black">
        <div class="container">
          <div class="row">
            <div class="col-12 ">
              <nav class="main-nav">
                <!-- ***** Logo Start ***** -->
                <a href="index.html" class="logo">
                  Mentoring System
                </a>
                <!-- ***** Logo End ***** -->
                <!-- ***** Menu Start ***** -->
                <ul class="nav">
                    <li><a href="index.html" class="active">Home</a></li>
                    <li><a href="about.jsp">About</a></li>
                    <li ><a href="course.jsp">Course</a></li>
                  
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
        <section class=" bg-dark mt-5" id="main">
        <div class="container py-5 ">
          <div class="row d-flex justify-content-center align-items-center ">
            <div class="col">
              <div class="card card-registration my-4">
                <div class="row g-0">
                  <div class="col-xl-6  d-xl-block">
                    <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/img4.webp"
                    alt="Sample photo" class="img-fluid"
                    style="border-top-left-radius: .25rem; border-bottom-left-radius: .25rem;" />
                  </div>
                  <div class="col-xl-6">
                  <div class="card-body p-md-5 text-black">
                  <h3 class="mb-5 text-uppercase">Student registration form</h3>
                <form action="Register" method="post">
                  <div class="row">
                    <div class="col-md-12 mb-4">
                      <div class="form-outline">
                        <label class="form-label" for="form3Example1m">Name</label>
                        <input type="text" id="form3Example1m" name="name" class="form-control form-control-lg" placeholder="enter your name" required />
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-12 mb-4">
                      <div class="form-outline">
                      <label class="form-label" for="form3Example1m1">Email</label>
                      <input type="email" id="form3Example1m1"name="email" class="form-control form-control-lg" placeholder="enter email id" required/>
                      </div>
                    </div>
                    <div class="col-md-12 mb-4">
                      <div class="form-outline">
                        <label class="form-label" for="form3Example1n1">Regd. No</label>
                        <input type="text" id="form3Example1n1" name="rollno" class="form-control form-control-lg" placeholder="enter registration number" required />
                      </div>
                    </div>
                  </div>
                  <label class="form-label" for="form3Example1n1">Role</label>
                  <select class="form-select mb-2" aria-label="Default select example" name="user">
                    <option selected>Select your role</option>
                    <option value="admin">Admin</option>
                    <option value="faculty">Faculty</option>
                    <option value="student">Student</option>
                  </select>
                  <div class="d-md-flex justify-content-start align-items-center mb-4 py-2">
                    <h6 class="mb-0 me-4">Gender: </h6>
                    <div class="form-check form-check-inline mb-0 me-4">
                      <input class="form-check-input" type="radio" name="gender" id="femaleGender"
                      value="Female" required />
                      <label class="form-check-label" for="femaleGender">Female</label>
                    </div>
                    <div class="form-check form-check-inline mb-0 me-4">
                      <input class="form-check-input" type="radio" name="gender" id="maleGender"
                      value="Male" />
                      <label class="form-check-label" for="maleGender">Male</label>
                    </div>
                    <div class="form-check form-check-inline mb-0 me-4">
                      <input class="form-check-input" type="radio" name="gender" id="maleGender"
                      value="Other" />
                      <label class="form-check-label" for="maleGender">Other</label>
                    </div>
                  </div>
                  <select class="form-select mb-4" aria-label="Default select example" name="dept" required>
                    <option selected>Select your branch</option>
                    <option value=" ECE">ECE</option>
                    <option value="EEE">EEE</option>
                    <option value="CSE">CSE</option>
                    <option value="AERO">AERO</option>
                  </select>
                  <div class="col-md-12 mb-4">
                    <div class="form-outline">
                        <label class="form-label" for="form3Example1m1">Create password</label>
                        <input type="text" id="form3Example1m1" class="form-control form-control-lg" placeholder="enter password" name="password" required/>
                    </div>
                  <div class="d-flex justify-content-end pt-3">
                    <a type="reset" class="btn btn-light btn-lg" href="">Reset all</a>
                    <button type="submit" class="btn btn-warning btn-lg ms-2" href="login.jsp">Submit form</button>
                  </div>
                </form>
=======
        
        
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        
        <style>
            .card-registration .select-input.form-control[readonly]:not([disabled]) {
font-size: 1rem;
line-height: 2.15;
padding-left: .75em;
padding-right: .75em;
}
.card-registration .select-arrow {
top: 13px;
}
#main{
    margin-top: 300px;
}
            </style>
             <link rel="stylesheet" href="assets/css/fontawesome.css">
    <link rel="stylesheet" href="assets/css/templatemo-edu-meeting.css">
    <link rel="stylesheet" href="assets/css/owl.css">
    <link rel="stylesheet" href="assets/css/lightbox.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    </head>
    <body>
         <header class="header-area header-sticky" style="background-color:black">
      <div class="container">
          <div class="row">
              <div class="col-12 ">
                  <nav class="main-nav">
                      <!-- ***** Logo Start ***** -->
                      <a href="index.html" class="logo">
                         Mentoring System
                      </a>
                      <!-- ***** Logo End ***** -->
                      <!-- ***** Menu Start ***** -->
                      <ul class="nav">
                          <li><a href="index.html" class="active">Home</a></li>
                          <li><a href="about.jsp">About</a></li>
                          <li ><a href="course.jsp">Course</a></li>
                        
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
        <section class=" bg-dark mt-5" id="main">
  <div class="container py-5 ">
    <div class="row d-flex justify-content-center align-items-center ">
      <div class="col">
        <div class="card card-registration my-4">
          <div class="row g-0">
            <div class="col-xl-6  d-xl-block">
              <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/img4.webp"
                alt="Sample photo" class="img-fluid"
                style="border-top-left-radius: .25rem; border-bottom-left-radius: .25rem;" />
            </div>
            <div class="col-xl-6">
              <div class="card-body p-md-5 text-black">
                <h3 class="mb-5 text-uppercase">Student registration form</h3>
                <form action="Register" method="post">
                
    
    <div class="row">
                    
                  <div class="col-md-12 mb-4">
                    <div class="form-outline">
                        
                        <label class="form-label" for="form3Example1m">Name</label>
                        <input type="text" id="form3Example1m" name="name" class="form-control form-control-lg" placeholder="enter your name" required />
                      
                    </div>
                  </div>
                  
                </div>

                <div class="row">
                  <div class="col-md-12 mb-4">
                    <div class="form-outline">
                        <label class="form-label" for="form3Example1m1">Email</label>
                        
                        <input type="email" id="form3Example1m1"name="email" class="form-control form-control-lg" placeholder="enter email id" required/>
                      
                    </div>
                  </div>
                  <div class="col-md-12 mb-4">
                    <div class="form-outline">
                        <label class="form-label" for="form3Example1n1">Regd. No</label>
                        <input type="text" id="form3Example1n1" name="rollno" class="form-control form-control-lg" placeholder="enter registration number" required />
                      
                    </div>
                  </div>
                </div>
                 <label class="form-label" for="form3Example1n1">Role</label>
                <select class="form-select mb-2" aria-label="Default select example" name="user">
                   
  <option selected>Select your role</option>
  <option value="admin">Admin</option>
  <option value="faculty">Faculty</option>
  <option value="student">Student</option>
</select>

             

                <div class="d-md-flex justify-content-start align-items-center mb-4 py-2">

                  <h6 class="mb-0 me-4">Gender: </h6>

                  <div class="form-check form-check-inline mb-0 me-4">
                    <input class="form-check-input" type="radio" name="gender" id="femaleGender"
                           value="Female" required />
                    <label class="form-check-label" for="femaleGender">Female</label>
                  </div>

                  <div class="form-check form-check-inline mb-0 me-4">
                    <input class="form-check-input" type="radio" name="gender" id="maleGender"
                      value="Male" />
                    <label class="form-check-label" for="maleGender">Male</label>
                  </div> <div class="form-check form-check-inline mb-0 me-4">
                    <input class="form-check-input" type="radio" name="gender" id="maleGender"
                      value="Other" />
                    <label class="form-check-label" for="maleGender">Other</label>
                  </div>
                  

                 

                </div>

               
  <select class="form-select mb-4" aria-label="Default select example" name="dept" required>
                   
  <option selected>Select your branch</option>
  <option value=" ECE">ECE</option>
  <option value="EEE">EEE</option>
  <option value="CSE">CSE</option>
  <option value="AERO">AERO</option>
</select>
                  <div class="col-md-12 mb-4">
                    <div class="form-outline">
                        <label class="form-label" for="form3Example1m1">Create password</label>
                        
                        <input type="text" id="form3Example1m1" class="form-control form-control-lg" placeholder="enter password" name="password" required/>
                      
                    </div>
                <div class="d-flex justify-content-end pt-3">
                    <a type="reset" class="btn btn-light btn-lg" href="">Reset all</a>
                  <button type="submit" class="btn btn-warning btn-lg ms-2" href="login.jsp">Submit form</button>
                </div>
</form>
>>>>>>> 058ff3b2ede13834ffd1b989b6914535a19d1e83
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<<<<<<< HEAD
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
=======
         <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

>>>>>>> 058ff3b2ede13834ffd1b989b6914535a19d1e83
    <script src="assets/js/isotope.min.js"></script>
    <script src="assets/js/owl-carousel.js"></script>
    <script src="assets/js/lightbox.js"></script>
    <script src="assets/js/tabs.js"></script>
    <script src="assets/js/video.js"></script>
    <script src="assets/js/slick-slider.js"></script>
    <script src="assets/js/custom.js"></script>
    <script>
        //according to loftblog tut
        $('.nav li:first').addClass('active');

        var showSection = function showSection(section, isAnimate) {
          var
          direction = section.replace(/#/, ''),
          reqSection = $('.section').filter('[data-section="' + direction + '"]'),
          reqSectionPos = reqSection.offset().top - 0;

          if (isAnimate) {
            $('body, html').animate({
              scrollTop: reqSectionPos },
            800);
          } else {
            $('body, html').scrollTop(reqSectionPos);
          }

        };

        var checkSection = function checkSection() {
          $('.section').each(function () {
            var
            $this = $(this),
            topEdge = $this.offset().top - 80,
            bottomEdge = topEdge + $this.height(),
            wScroll = $(window).scrollTop();
            if (topEdge < wScroll && bottomEdge > wScroll) {
              var
              currentId = $this.data('section'),
              reqLink = $('a').filter('[href*=\\#' + currentId + ']');
              reqLink.closest('li').addClass('active').
              siblings().removeClass('active');
            }
          });
        };

        $('.main-menu, .responsive-menu, .scroll-to-section').on('click', 'a', function (e) {
          e.preventDefault();
          showSection($(this).attr('href'), true);
        });

        $(window).scroll(function () {
          checkSection();
        });
    </script>
    </body>
</html>
