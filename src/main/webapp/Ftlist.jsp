<%@ page import="org.json.*"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <title>Student List</title>
    
    

    <!-- Montserrat Font -->
    <link
        href="https://fonts.googleapis.com/css2?family=Montserrat:wght@100;200;300;400;500;600;700;800;900&display=swap"
        rel="stylesheet">

    <!-- Material Icons -->
    <!-- <link href="https://fonts.googleapis.com/icon?family=Material+Icons+Outlined" rel="stylesheet"> -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	
    <!-- Custom CSS -->
    <link rel="stylesheet" href="assets/css/styless.css">
    <!-- Form -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <style>
    	.header-right a{
    		font-size: 25px;
    		margin-left:10px;
    	}
    	.main{
    	float:right;
    	}
    	
    	
    </style>
</head>
<body>
	<div class="grid-container">
		<jsp:include page="Header.jsp"/>
	
		<table class="table table-striped mt-5"   style="margin-left:180px; display:flex; text-align:center; position:relative; right:120px">
		<tr>
			<th>Faculty Regd. </th>
			<th>Name </th> 
			<th>Email </th>
			<th>Role</th>
			<th>Department</th>
			<th>Address</th>
			<th colspan="2">Action </th>
		</tr>
		<%
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3307/mentoringsystem","root","");
			Statement stmt=conn.createStatement();
			String admin_id=String.valueOf(session.getAttribute("user_id"));
			String sql="select * from student_master where role ='faculty'";
			ResultSet rs = stmt.executeQuery(sql);
			
			while(rs.next())
			{
			
				out.print("<form method=post action=manageServlet>");
				out.print("<tr>");
				out.print("<td>" + rs.getString("rollno")+ "</td>");
				out.print("<td>" + rs.getString("name")+ "</td>");
				out.print("<td>" + rs.getString("email")+ "</td>");
				out.print("<td>" + rs.getString("role")+ "</td>");
				out.print("<td>" + rs.getString("dept")+ "</td>");
				out.print("<td>" + rs.getString("adress")+ "</td>");
				out.print("<td class='main'> <input type=hidden value="+rs.getString("email")+" name=user_id /> <input type=submit value='edit' name='btn' class='btn btn-primary' />  </td>");
				out.print("<td><input type=submit value='delete' name='btn' class='btn btn-danger main' /></td>");
				out.print("</tr>");
				out.print("</form>");
				
			}
			
			
			conn.close();
		}catch(Exception e) {
			response.getWriter().append(e.toString()).append(request.getContextPath());
		}
		
		
		%>
		
	
		<jsp:include page="Sidebar.jsp"/>
	</div>
</body>
</html>