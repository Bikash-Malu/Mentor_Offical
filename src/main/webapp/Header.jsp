<%@ page import="Entity.User" %>
<header class="header">
            <div class="menu-icon" onclick="openSidebar()">
                <!-- MENU -->
                <span class="fa-solid fa-bars"></span>
            </div>
            <div class="header-left">
                <!-- search -->
                <% 
	User user=(User)session.getAttribute("currentuser"); 
	if(user==null){
		response.sendRedirect("login.jsp");
	}
%>
                <b><H1 style="color:#5272F2; font-weight:650">Welcome , <%= user.getName() %></H1></b>
                <!-- <span class="fa-solid fa-magnifying-glass"></span> -->
            </div>
            <div class="header-right">
                <a class="fa-solid fa-bell" href="admin.jsp"></a>
                
                <a class="fa-solid fa-envelope"></a>
                <a class="fa-solid fa-circle-user" href="profile.jsp"></a>
            </div>
</header>