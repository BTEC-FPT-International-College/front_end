<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="css/login.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css">
</head>

<div class="container" id="container">
	<div class="form-container sign-up-container">
		<form action="RegisterController" method="POST">
			<h1>Create Account</h1>
			<input type="text" placeholder="Name" />
			<input type="email" placeholder="Email" />
                        <input type="number" placeholder="Phone" />
                        <input type="username" placeholder="Username" />       
			<input type="password" placeholder="Password" />
                        <input type="password" placeholder="Repeat password" />
			<br><button>Sign Up</button>

		</form>
	</div>
	<div class="form-container sign-in-container">
		<form action="LoginController" method="POST">
			<h1>Sign in</h1>
			<input type="username" placeholder="Username" id="username" name="user"/>
			<input type="password" placeholder="Password" id="password" name="pass"/>
			<a href="#">Forgot your password?</a>
			<button>Sign In</button>
            <br><span>or login with</span>
                        <div class="social-container">
				<a href="https://accounts.google.com/o/oauth2/auth?scope=profile&redirect_uri=http://localhost:8080/LoginGoogleController&response_type=code
		   &client_id=955512294158-rksaj6lpbhrq41ui7decvr5tuqu01qhb.apps.googleusercontent.com&approval_prompt=force" class="social"><i class="fab fa-google"></i></a>
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
<script src="js/login.js"></script>
</html>
