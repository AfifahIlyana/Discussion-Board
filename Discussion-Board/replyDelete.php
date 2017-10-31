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
				$deleteReply = $_GET["id"];
				$check = mysqli_query($database, "SELECT * FROM reply WHERE reply_id='$deleteReply'");
				if(mysqli_num_rows($check)){
					echo "<form method='post' action='replyDelete.php?id=$deleteReply'> Do you really want to remove this reply?<br><br><input type='submit' name='yes' value='Yes'></form>";
					$row = mysqli_fetch_assoc($check);
					
					echo "<br>
						  <table border='1px solid' class='delTable'>
							 <tr>
								<td width='100px' class='del'>By:</td>
								<td width='800px' class='by'>".$row['reply_user']."</td>
							 </tr>
							 <tr>
								<td width='100px' class='del'>Content:</td>
								<td width='800px' class='by'>".$row['reply_content']."</td>
							 </tr>
						  </table>";
						  
					echo "<br><br><p class='delOtherwise'>If otherwise, redirect from this page.</p>";
					
					if(isset($_POST['yes'])){
						$replace = "<b>[ Removed ]</b>";
						$update = "UPDATE reply SET reply_content='$replace' WHERE reply_id='$deleteReply'";
						$query = mysqli_query($database,$update);
						if($query){
							echo "<br><br>Post removed successfully";
						} else {
							echo "<br><br>Failed to remove post";
						}
					}
					
					
				} else {
					echo "Reply not found";
				}
			} else {
				header("Location: index.php"); 
			}
	} else {
		header("Location: index.php");
	}
	
include 'footer.php';
?>
		