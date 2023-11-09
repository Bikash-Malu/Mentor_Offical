<%@ page import="org.json.*"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <title>Student List</title>
    
    <style>
    	.header-right a{
    		font-size: 25px;
    		margin-left:10px;
    	}
    	.jeet{
    	margin-left:400px;
    	background:transparent;
    	    	}
    	    	
    	    	
    	
    </style>

    <!-- Montserrat Font -->
    <link
        href="https://fonts.googleapis.com/css2?family=Montserrat:wght@100;200;300;400;500;600;700;800;900&display=swap"
        rel="stylesheet">

    <!-- Material Icons -->
    <!-- <link href="https://fonts.googleapis.com/icon?family=Material+Icons+Outlined" rel="stylesheet"> -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <!-- Custom CSS -->
    <link rel="stylesheet" href="assets/css/styless.css">
    <!-- Form -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>
	<div class="grid-container ">
		<jsp:include page="Header.jsp"/>
		
		
		<div class="container-fluid mt-3 shadow-lg p-3 rounded">
		<div class="col-md-8 jeet">
		<div class="card" style="background-color:#FFF5E0">
		<div class="card-header text-center">
		<span><img  height="80px"src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAHsAAAB7CAMAAABjGQ9NAAAAaVBMVEUAAAD////8/Pz5+fm9vb3x8fHV1dXc3NzY2Nj09PTg4OBkZGQxMTGysrItLS0iIiIXFxcLCwt3d3eBgYHPz8+RkZGZmZk8PDyhoaGLi4tGRkbr6+teXl5ubm6qqqooKChWVlZOTk7Gxsaj+TN3AAAECklEQVRogc2b2ZqqOhBGI0MLKIpMQiMivP9D7lb7O0ehkhogjf89LENSc1QbiSKvSvtDopLu3JZx4IheslHsJ5w8O6p3JRcv/AO2X50VpEMdWWY71wNIfiw+822yv7615Ac9tscujOS7dqxTR2eH5kX/Lv3LBrsZH25YJ295dpSQ0D+ibzqRTVz1Q8OybH9PRytF3XMa+8ZBq4Ro6CR2zUIrdVuOnTPRSpWLsVmb/dCJ5NwJ7Csb/ePglmE7JwGbdNZxtmTZtIWjbBeO16iaBdj8Q/5UtQA7E7K/8XCKsV1K5ASFf3SMvZWiCfEMY3tidjqbjedJOl3QDcfYFzF7j0YzjC207rvQw4awHX4c+U9oPEHY7gz2diY7nMFGw8kHr3vN/V7znG9uYnQ3276lYewnWXXnsmMxu8XQKDsQs/HkAWP74sOGp8lo3tIK0cf5eYs4gNcoGmf7jOr3VYQEHc/PuYXgU2ccTWD7Ijal9UGoxyQLpyybwnYFbFLfg1ID8ysy3KdR2eyE8UhrepDYYcdjE5s9tF7PFwtN7bAR+2sc70ZrttDZjFiaUdH0fupARBP8OJtN3PMrHc3pn/u4qXUBA83q3TsVgk55ExvevKTZGch9znoXf06U6+jfHntKxp+PRSWQTdTcNcvYd3yc/d8COrcVZ0jCYDtbL67qwpsm+k4TBdsGKgCauCgqb5hXjzXepfvtpnZkw3WL39FKsm8HY0AzsKP0bWN7tKZ9aHirXPeFoSLUsptpJVaiFdbGT8cPnfRP6dhg4DpjhyqGJlkH3VMatq78zExG3Nw0T2nOCsh2DJ77qvuEjaENCAc3iO2YPKc61EDAcPLUODgsqGy03u/j6HX1YVSi3WboswNsUkrcp5UXRFG0jcuWVCYDB27Kbihv4qujsMXNekTTPG7CljdYME384pjt6i9TzNVkbDVmy6ZhNI2P24gdzugjohovfMS2t9t3BUZ2b5WdmtjyTh5JoxHKO1vW16HLM7DtGdhTOz1bPgQk6uhq2TaN+6lcy75ZZ5datnW06nXsyD5b6dh2ndpTkYZt27rvijVs+cyXrkLDJl9Rm6EWZod/gFZ7mG3dqz3kgmz51QaOfJBt36PeFYBs+bUKjjyQLR99cnQF2ZOy3YpKkG2sPhdTDbFNRfeCyiC2azdH/Vy2rQL0c9jpx617xf1e075X9anYNGQZDSBbehOVpxBkS+bcbL0O5V9zxb84bKWGvWZtsGY9tmoNPOemHEnv9yDe2ZbNrGsMbMv+ZXTzZNzTtFmLju9BTPrI9rL0yRWMaf/ckpUn02ktMLMIbATyFpgPQrMaN17a1m7g/SZ4NucMF9E/WkAlqWYwqJ2Hhnmc7Q7JnJ9wSvZtHevnmP8A8+82fcwtypoAAAAASUVORK5CYII="></span>
		<br></br>Update here!!!!!
		</div>
		<div class="card-body">
		<form method="get" action="manageServlet">
		User ID : <% out.println(request.getParameter("user_id")); %><br></br>
		Regd no:<input type="text" class="form-control" value="<%=request.getParameter("rollno")%>" name="rollno" />
		<br>
		Name : <input type="text" class="form-control" value="<%=request.getParameter("user_name")%>" name="user_name" />
		<br>
		Role Name : <input class="form-control" type="text" value="<%= request.getParameter("role_name") %>" name="role_name" />
		<br>
		<input type="hidden" value="<%=request.getParameter("user_id")%>" name="user_id" />
	
		Department : <input type="text" class="form-control" value="<%=request.getParameter("dept") %>" name="dept" />
		<br>
		<input type="submit" value="update" class="btn btn-warning " style="margin-left:150px" />
		</form>
		</div>
		<div class="card-footer">
		</div>
		</div>
		</div>
		</div>
		
		
		<jsp:include page="Sidebar.jsp"/>
	</div>
</body>
</html>