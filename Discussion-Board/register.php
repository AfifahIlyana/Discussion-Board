<?php
	include 'connect.php';
	include 'header.php';
	
	if (isset($_POST['register_btn'])){
		session_start();
		$username = mysqli_real_escape_string($database, $_POST['username']);
		$email = mysqli_real_escape_string($database, $_POST['email']);
		$password = mysqli_real_escape_string($database, $_POST['password']);
		$password2 = mysqli_real_escape_string($database, $_POST['password2']);
		
		if($username && $email && $password && $password2){
			if ($password == $password2) {
				$password = md5($password);
				
				$insert = "INSERT INTO users(users_name, users_email, users_pass) VALUES('$username', '$email', '$password')";
				$select = "SELECT * FROM users WHERE users_name='$username'";
				
				$checkUsername = mysqli_query($database, $select);
				$rows = mysqli_num_rows($checkUsername);
				
				if(strlen($username) >= 3 && strlen($username) <= 18){
				
					if($rows == 1){
						echo "Username taken, please choose another one.";
					} else {
						mysqli_query($database, $insert);
						$_SESSION['message'] = "You are now logged in";
						$_SESSION['username'] = $username;
						header("location: registered.php");
					}
				} else {
					echo "<br><p style='color: red'>Username must be from 3 to 18 characters long.</p>";
				}
			} else {
				echo "<br><p style='color: red'>The two passwords do not match</p>";
			}
		} else {
			echo "<br><p style='color: red'>Please fill in all requirements.</p>";
		}
	}
?>

	<h1>Registration</h1>

<?php
if(isset($_SESSION['message'])){
		echo "<div id='error_msg'>" .$_SESSION['message']. "</div>";
		unset($_SESSION['message']);
	}
?>

<form method="post" action="register.php">
	<table class='form' align="center">
		<tr>
			<td>Username:</td>
			<td><input type="text" name="username" class="textInput"></td>
		</tr>
		<tr>
			<td>Email:</td>
			<td><input type="email" name="email" class="textInput"></td>
		</tr>
		<tr>
			<td>Password:</td>
			<td><input type="password" name="password" class="textInput"></td>
		</tr>
		<tr>
			<td>Confirm Password:</td>
			<td><input type="password" name="password2" class="textInput"></td>
		</tr>
	</table>
	<input class="btn" type="submit" name="register_btn" value="Register">
	
</form>
<p>Already have an account? Click here to <a href="login.php">Login</a></p>

<?php
include 'footer.php';
?>
