<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@include file="/common/taglib.jsp"%>

<div class="container">
    <!--<img src="img/img-logo-fe.png">-->
    <h1>Login</h1>
    </div>
     ${error}
     <form action="login" method="POST">
        <div class="form-group">
          <label for="Username">Username:</label> 
            <input type="text" class="form-control" placeholder="Enter Username" id="Username" name="user"/>
          </div>
          <div class="form-group">
            <label for="pwd">Password:</label>
            <input type="password" class="form-control" placeholder="Enter password" id="pass" name="pass">
          </div>
          <div style="text-align: center">
          <button type="submit" value="Login" class="btn btn-primary"><i class="fas fa-sign-in-alt"> Login</i></button>
        </div>
      </form>
