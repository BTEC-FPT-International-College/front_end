<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="login.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css">
</head>

<div class="container" id="container">
	<div class="form-container sign-up-container">
		<form action="#">
			<h1>Create Account</h1>
			<input type="text" placeholder="Name" />
			<input type="email" placeholder="Email" />
            <input type="number" placeholder="Phone" />
			<input type="password" placeholder="Password" />
            <input type="password" placeholder="Repeat password" />
			<br><button>Sign Up</button>
		</form>
	</div>
	<div class="form-container sign-in-container">
		<form name="frm-login"  id="frm-login">
			<h1>Sign in</h1>
			<input  placeholder="Username" id="username" name="username"/>
			<input type="password" placeholder="Password" id="password" name="password"/>
			<a href="home.jsp?action=loginss">Forgot your password?</a>
			<button type="button" value="Login" onclick="login()">Sign In</button>
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
				<button class="ghost" id="signUp" >Sign In</button>
			</div>
		</div>
	</div> 
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	var msg = null; //mesenger
	function login(){
		if($('#username').val()== ""){
			return false;
		}else if($('#password').val()== ""){
			return false;
		}
		var data = $("#frm-login").serialize();
		$.ajax({
			type : 'POST',
			url : '/loginss',
			data : data,
			dataType : 'JSON',
			success: function(data){
				msg = data[0].msg
				if(msg == 1){
					window.location.replace("view/web/home.jsp");
				}else if(msg == 3){
					$(""#err").hide().html("UserName or Password Do not match").fadeIn('slow');
				}
			}
		})
	}
</script>

