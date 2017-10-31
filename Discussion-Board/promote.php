<?php
session_start();
include 'connect.php';
include 'header.php';
include 'navbar.php';
	 
	if (isset($_SESSION['loggedin_admin']) && $_SESSION['loggedin_admin'] == true){
		
?>
		<br>
		<?php
			if($_GET["id"]){
				$userID = $_GET["id"];
				$check = mysqli_query($database, "SELECT * FROM users WHERE users_id='$userID'");
				if(mysqli_num_rows($check)){
					echo "<form method='post' action='promote.php?id=$userID'>Do you really want to promote this user?<br><br><input type='submit' name='yes' value='Yes'></form>";
					$row = mysqli_fetch_assoc($check);
					
					echo "<br>
						  <table class='form'>
							 <tr>
								<td class='del'>Username:</td>
								<td class='by'>".$row['users_name']."</td>
							 </tr>
							 <tr>
								<td class='del'>Email:</td>
								<td class='by'>".$row['users_email']."</td>
							 </tr>
						  </table>";
						  
					echo "<br><br>If otherwise, redirect from this page.";
					
					if(isset($_POST['yes'])){
						$update = "UPDATE users SET users_privilage='1' WHERE users_id='$userID'";
						$query = mysqli_query($database,$update);
						if($query){
							echo "<br><br>User successfully promoted";
						} else {
							echo "<br><br>Failed in promotion";
						}
					}
				} else {
					echo "User not found";
				}
			} else {
				header("Location: index.php"); 
			}
	} else {
		header("Location: index.php"); 
	}
	
include 'footer.php';
?>
