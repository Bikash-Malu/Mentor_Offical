<!-- Sidebar -->
        <aside id="sidebar">
            <div class="sidebar-title">
                <div class="sidebar-brand">
                    <span class="fa-solid fa-user-tie"></span> <%=session.getAttribute("user") %>
                </div>
                <span class="material-icons-outlined" onclick="closeSidebar()">close</span>
            </div>

            <ul class="sidebar-list">
                
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
                        <span class="material-icons-outlined"></span> Logout  
                    </a>
                </li>
            </ul>
        </aside>