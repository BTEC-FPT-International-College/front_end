<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="./thaicss/login.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  
  <!-- jQuery -->
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
</head>
 <!-- for successful add-->
            <div class="modal" style="display: none; padding: 20px;" tabindex="-1" id="show" role="dialog">
                <div class="modal-dialog alert-success" role="document">
                    <div class="modal-content">
                        
                        <div class="modal-body">
                            <p style="margin-bottom: 4px;">You are creating a new account successfully!</p>
                            <p>You will move to home page</p>
                        </div>
                        <div class="modal-footer">
                            <a href="login.jsp"><button id="chuyen" style="background-color: #77e84e;" type="button" class="btn btn-warning"><i class="mdi mdi-close"></i>Stay</button></a>
                            <a href="index.jsp"><button id="close" type="button" class="btn btn-success" data-dismiss="modal"><i class="mdi mdi-arrow-right-bold"></i>Move</button></a>
                        </div>
                    </div>
                </div>
            </div>
<div class="container" id="container">
   
	<div class="form-container sign-up-container">
		<form>
			<h1>Create Account</h1>
			<input id="namesg" type="text" placeholder="Name" required/>
			<input id="emailsg" type="email" placeholder="Email" required/>
                        <input id="phonesg" type="number" placeholder="Phone" maxlength="10" required/>
			<input id="pwdsg" type="password" placeholder="Password" required/>
            <input id="repwdsg" type="password" placeholder="Repeat password" />
			<br><button id="sign-up">Sign Up</button>

		</form>
	</div>
	<div class="form-container sign-in-container">
                ${error}
		<form action="LoginController?ac=login" method="POST">
			<h1>Sign in</h1>
			<input type="email" placeholder="Your Email" id="username" name="email" required/>
			<input type="password" placeholder="Password" id="password" name="pass" required/>
			<a href="#">Forgot your password?</a>
			<button type="submit" value="Login">Sign In</button>
            <br><span>or login with</span>
                        <div class="social-container">
				<a href="#" class="social"><i class="fab fa-google"></i></a>
			</div>
		</form>
	</div>
	<div class="overlay-container">
		<div class="overlay">
			<div class="overlay-panel overlay-left">
				<h1>Hello, Friend</h1>
				<p>Enter your personal details and start journey with us</p>
				<button class="ghost" id="signIn">Sign Up</button>
			</div>
			<div class="overlay-panel overlay-right">
				<h1>Welcome Back!</h1>
				<p>To keep connected with us please login with your personal info</p>
				<button class="ghost" id="signUp">Sign In</button>
			</div>
		</div>
	</div>
</div>
                <script>
                    $("#x").click(function () {
                        $("#show").hide()
                        $("#form").trigger("reset");
                        $("#add").prop('disabled', true);
                        $("#check").hide()
                    })
                    $("#chuyen").click(function () {
                        $("#show").hide()
                        $("#myForm").trigger("reset");
                        $("#add").prop('disabled', true);
                        $("#checkid").text("")
                        $("#checkemail").text("")
                        $("#checkphone").text("")
                    })
                    var p = {};
                    $("#sign-up").click(function(e) {
                        e.preventDefault();
                        p.fullName = $('#namesg').val();
                        p.email = $('#emailsg').val();
                        p.phone = $('#phonesg').val();
                        p.password = $('#pwdsg').val();
                        const pr = JSON.stringify(p)
                        console.log(pr)
                        let namesg = $('#namesg').val();
                        let emailsg = $('#emailsg').val();
                        let phonesg = $('#phonesg').val();
                        let pwd = $('#pwdsg').val();
                        let repwd = $('#repwdsg').val();
                        if (namesg != "" && emailsg != "" && phonesg != "" && pwd != "") {
                            if (pwd == repwd) {
                                $.ajax({
                                    url: "ProfileController?ac=add",
                                    type: "post",
                                    data: {get: pr},
                                    success: function (data) {
                                        let rs = $.parseJSON(data);
                                        console.log(rs)
                                         if(rs === 3){
                                            alert("Your email already exists.");
                                        }
                                        if(rs === 1){
                                            alert("Registration failed");
                                        }
                                        if(rs === 2){
                                            alert("Registration failed");
                                        }
                                        if ( rs === 10){
                                        alert("You are creating a new account successfully!");
                                        location.reload();
                                        }
                                       // 
                                    },
                                    error: function () {
                                        alert("error");
                                    }
                                });
                            } else {
                                alert('Password does not match, please re-enter')
                            }
                        }
                    });
                </script>
<script src="js/login.js"></script>
</html>
