<?php
	session_start();

	include 'connect.php';
	include 'header.php';
	
	if (isset($_POST['login_btn'])){
		$username = mysqli_real_escape_string($database, $_POST['username']);
		$password = mysqli_real_escape_string($database, $_POST['password']);
		
		$password = md5($password); // hashes password
		$sql = "SELECT * FROM users WHERE users_name='$username' AND users_pass='$password'";
		$result = mysqli_query($database, $sql);
		
		if(mysqli_num_rows($result)==1) {
			
			$mysql = "SELECT users_privilage FROM `users` WHERE users_name='$username'";
			
			$checkAdmin = mysqli_query($database, $mysql); 
			$admin = mysqli_fetch_array($checkAdmin);
			
			$_SESSION['admin'] = $admin['users_privilage'];
			
			if ($_SESSION['admin'] == 1) {
				$_SESSION['username'] = $username;
				$_SESSION['loggedin_admin'] = true;
				header("location:loggedin.php");
			} else {
				$_SESSION['username'] = $username;
				$_SESSION['loggedin_admin'] = false;
				header("location:loggedin.php");
			}
		} else {
			 echo "<br><p style='color: red'>Username and Password combination is incorrect</p>";
		}
	}
?>

<h1>Login</h1>

<div class="login">
	<p>Login first to join in the discussion</p>

	<form method="post" action="login.php">
		<table class='form'  align="center">
			<tr>
				<td>Username:</td>
				<td><input type="text" name="username" class="textInput"></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type="password" name="password" class="textInput"></td>
			</tr>
		</table>
		<input class="btn" type="submit" name="login_btn" value="Login">
	</form>

	<p>You don't have an account yet?<br>
	<a href="register.php">Register Here!</a></p>
</div>

<?php
include 'footer.php';
?>