<?php
	session_start();
	include 'connect.php';
	include 'header.php';
	include 'navbar.php';
	 
	if (isset($_SESSION['loggedin_admin']) && ($_SESSION['loggedin_admin'] == true || $_SESSION['loggedin_admin'] == false)){
?>
		<br>
		<a href='create_topic.php'><button>Start a Discussion</button></a><br>
		
		<?php
	} 	
	
			if($_GET["id"]){
				$check = mysqli_query($database, "SELECT * FROM topics WHERE topics_id='".$_GET['id']."'");
				if(mysqli_num_rows($check)){
					while($row = mysqli_fetch_assoc($check)){
		?>
			<table border="1px" align="center" id="align">
				<tr>
					<td class="wrapper" colspan="2"><h1><?php echo $row['topics_title'] ?></h1></td></tr>
					<td width='150px' class='id'>
						<h3><?php echo $row['topics_user']; ?></h3>
						<h5><?php echo $row['topics_date']; ?></h5>
					</td>
					<td width='850px' id="content"><p><?php echo $row['topics_description'] ?></p></td>
				</tr>
			</table>
			
			<?php
	
	if (isset($_SESSION['loggedin_admin']) && ($_SESSION['loggedin_admin'] == true || $_SESSION['loggedin_admin'] == false)){
		
	$topic_id = $_GET['id'];
	$reply = mysqli_real_escape_string($database, @$_POST['reply_content']);
	// $reply = @$_POST['reply_content'];
	$date = date("y-m-d");
	$insert = "INSERT INTO reply(reply_id, t_reply_id, reply_content, reply_user, reply_date) VALUES ('', '".$topic_id."', '".$reply."', '".$_SESSION["username"]."', '".$date."')";
	
	echo "<form id='replyForm' method='post' action='topic.php?id=$topic_id'>";
?>
			<textarea id="reply" name="reply_content"></textarea><br>
			<input type="submit" name="reply_btn" value="Submit reply"/>
		</form>
<?php
	} else {
		echo "<p class='pText'><a href='login.php'>Login</a> to reply to this topic</p>";
	}

?>
		
				<table border="1px" align="center" id="align">
<?php		
	if(isset($_POST['reply_btn'])){
			if($reply){
				if(mysqli_query($database, $insert)){
					echo "Reply submitted";
				} else {
					echo "ERROR: please try again";
				}
			} else {
				echo "Please fill in all the fields.";
			}
	}	
					}
				} else {
					echo "Topic not found";
				}
				$reply_mysql = mysqli_query($database, "SELECT * FROM reply WHERE t_reply_id='".$_GET['id']."'");
				if(mysqli_num_rows($reply_mysql)){
					while($row = mysqli_fetch_assoc($reply_mysql)){
						$id = $row['reply_id'];
		?>		
				<tr>
					<td width='150px' class='id'>
						<h3><?php echo $row['reply_user']; ?></h3>
						<h5><?php echo $row['reply_date']; ?></h5>
					</td>
				<?php
					if(isset($_SESSION['loggedin_admin']) && $_SESSION['loggedin_admin'] == true){
						echo " <td width='750px' id='content'>".$row['reply_content']."</p></td>
							   <td width='100px' class='id'><a href='replyDelete.php?id=$id'><input type='submit' name='replyDelete' value='Delete'></a></td>";
						
					} else {
						?>
						<td width='850px' id="content"><p><?php echo $row['reply_content'] ?></p></td>
						<?php
					}
				
				?>
					
				</tr>
			
			
		<?php
					}
				} else {
					echo "There are no replies yet";
				}
			} else {
				header("Location: index.php");
			}
?>
</table>

<?php

include 'footer.php';

?>
		