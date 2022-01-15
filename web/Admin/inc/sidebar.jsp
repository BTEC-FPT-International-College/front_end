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
            <a class="nav-link" href="./../index.jsp">
              <i class="mdi mdi-home menu-icon"></i>
              <span class="menu-title">Home</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="../pages/recharge_history.jsp">
              <i class="mdi mdi-history"></i>
              <span class="menu-title" style="margin-left: 20px;">Recharge history </span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="../pages/user.jsp">
              <i class="mdi mdi-account"></i>
              <span class="menu-title" style="margin-left: 20px;">User Management</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#aut" aria-expanded="false" aria-controls="auth">
              <i class="mdi mdi-account menu-icon"></i>
              <span class="menu-title">Supervisor Management</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="aut">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item"> <a class="nav-link" href="../pages/suppervisor.jsp"> View </a></li>
                <li class="nav-item"> <a class="nav-link" href="../pages/addSuppervisor.jsp"> Add </a></li>
              </ul>
            </div>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#auth" aria-expanded="false" aria-controls="auth">
              <i class="mdi mdi-bitbucket"></i>
              <span class="menu-title" style="margin-left: 20px;">Category Management</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="auth">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item"> <a class="nav-link" href="../pages/cate.jsp"> View </a></li>
                <li class="nav-item"> <a class="nav-link" href="../pages/addCate.jsp"> Add </a></li>
              </ul>
            </div>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#a" aria-expanded="false" aria-controls="auth">
              <i class="mdi mdi-file-document-box-outline menu-icon"></i>
              <span class="menu-title" >User'Post Management</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="a">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item"> <a class="nav-link" href="../pages/post.jsp"> View</a></li>
                <li class="nav-item"> <a class="nav-link" href="../pages/tran_post.jsp">Transaction history</a></li>
              </ul>
            </div>
          </li>
        </ul>
      </nav>
