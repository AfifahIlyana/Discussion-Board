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
				$deleteTopic = $_GET["id"];
				$check = mysqli_query($database, "SELECT * FROM topics WHERE topics_id='$deleteTopic'");
				if(mysqli_num_rows($check)){
					echo "<form method='post' action='delete.php?id=$deleteTopic'> Do you really want to delete this topic?<br><br><input type='submit' name='yes' value='Yes'></form>";
					$row = mysqli_fetch_assoc($check);
					
					echo "<br>
						  <table border='1px solid' class='delTable'>
							 <tr>
								<td width='100px;' class='del'>Title:</td>
								<td width='800px' class='by'>".$row['topics_title']."</td>
							 </tr>
							  <tr>
								<td width='100px;' class='del'>Description:</td>
								<td width='800px' class='by'>".$row['topics_description']."</td>
							 </tr>
							 <tr>
								<td width='100px;' class='del'>By:</td>
								<td width='800px' class='by'>".$row['topics_user']."</td>
							 </tr>
							 <tr>
								<td width='100px;' class='del'>Date:</td>
								<td width='800px' class='by'>".$row['topics_date']."</td>
							 </tr>
						  </table>";
						  
					echo "<br><br><p class='delOtherwise'>If otherwise, redirect from this page.</p>";
					
					if(isset($_POST['yes'])){
						$delete = "DELETE FROM topics WHERE topics_id ='$deleteTopic'";
						$query = mysqli_query($database,$delete);
						if($query){
							echo "<br><br>DELETED";
						} else {
							echo "<br><br>FAILED";
						}
					}
					
					
				} else {
					echo "Topic not found";
				}
			} else {
				header("Location: index.php"); 
			}
	} else {
		header("Location: index.php"); 
	}
	
include 'footer.php';	
?>
		