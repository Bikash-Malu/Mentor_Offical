<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
          <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
          <style>
              html,body { height: 100%; }

body{
	display: -ms-flexbox;
	display: -webkit-box;
	display: flex;
	-ms-flex-align: center;
	-ms-flex-pack: center;
	-webkit-box-align: center;
	align-items: center;
	-webkit-box-pack: center;
	justify-content: center;
	background-color: #f5f5f5;
}

form{
	padding-top: 10px;
	font-size: 20px;
	margin-top: 30px;
}

.card-title{ font-weight:300; }

.btn{
	font-size: 13px;
}

.login-form{ 
	width:320px;
	margin:20px;
}

.sign-up{
	text-align:center;
	padding:20px 0 0;
}

span{
	font-size:14px;
}

.submit-btn{
	margin-top:20px;
}
          </style>
    </head>
    
    <body>
    
    <div class="card login-form">
	<div class="card-body">
		<h3 class="card-title text-center">Change password</h3>
		
		<!--Password must contain one lowercase letter, one number, and be at least 7 characters long.-->
		
		<div class="card-text">
			<form action="UpdatePass" method="post">
				<input type="hidden" value="<% out.println(request.getParameter("page"));%>" name="page">
				<div class="form-group">
					<label for="exampleInputEmail1">Your new password</label>
                                        <input type="password" class="form-control form-control-sm" name="password" id="p1">
				</div>
				<div class="form-group">
					<label for="exampleInputEmail1">Repeat password</label>
                                        <input type="password" class="form-control form-control-sm" name="Rpassword" id="p2">
				</div>
                            <a class="btn btn-danger btn-block submit-btn" href="<% out.println(request.getParameter("page"));%>.jsp" >Cancel</a>
                            <button type="submit" onclick="main1()" class="btn btn-primary btn-block submit-btn">Confirm</button>
                            
			</form>
		</div>
	</div>
</div>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    </body>
    <script>
  		function main1(){
  		if(document.getElementById('p1').value===document.getElementById('p2').value){
  			Swal.fire(
  				  'Good job!',
  				  'You clicked the button!',
  				  'success'
  				)

  		}else{
  			Swal.fire({
  			  icon: 'error',
  			  title: 'Oops...',
  			  text: 'Something went wrong!',
  			  footer: '<a href="">Why do I have this issue?</a>'
  			})
      	}
  	}
	</script>
</html>