<?php
	session_start();
	include 'connect.php';
	include 'header.php';
	include 'navbar.php';
	
	if(isset($_SESSION['loggedin_admin']) && ($_SESSION['loggedin_admin'] == true || $_SESSION['loggedin_admin'] == false)){
		echo '<br>Sensitive subjects that sparks any unwanted debate may or may not be deleted.<br>Otherwise, have fun!';
		include 'include_topic.php';
		
		if(isset($_POST['topics_btn'])){
			$title = mysqli_real_escape_string($database, $_POST['topics_title']);
			$description = mysqli_real_escape_string($database, $_POST['topics_description']);
			$date = date("y-m-d");
			$username = $_SESSION['username'];
			$mysql = "INSERT INTO topics(topics_id, topics_title, topics_description, topics_user, topics_date) VALUES ('', '$title', '$description', '$username', '$date')";
			if($title && $description){
				if(strlen($title) >= 8 && strlen($title) <= 60){
					$check = mysqli_query($database, $mysql);
					if($check){
						echo "Success! <a href='index.php'>Click here</a> to see it.";
					} else {
						echo "failure";
					}
				} else {
					echo "<p style='color:red'>Topic name must be from 8 to 64 characters long.</p>";
				}
			} else {
				echo "<p style='color:red'>Please fill in all the fields.</p>";
			}
		}
	} else {
		echo "Please <a href='login.php'>log in</a> first to see this page.";
	}
	
include 'footer.php';
?>



