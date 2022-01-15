<%-- 
    Document   : sidebar.jsp
    Created on : 21-10-2021, 16:01:59
    Author     : nguyenbamang
--%>
<div class="container-fluid page-body-wrapper">
      <!-- partial:partials/_sidebar.html -->
      <nav class="sidebar sidebar-offcanvas" id="sidebar">
        <ul class="nav">
          <li class="nav-item">
            <a class="nav-link" href="index.jsp?id=<%=request.getParameter("id")%>&userid=<%=request.getParameter("userid")%>">
              <i class="mdi mdi-home menu-icon"></i>
              <span class="menu-title">Home</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="newpwd.jsp?id=<%=request.getParameter("id")%>&userid=<%=request.getParameter("userid")%>">
              <i class="mdi mdi-key menu-icon"></i>
              <span class="menu-title">Change password</span>
            </a>
          </li>
         
        </ul>
      </nav>
