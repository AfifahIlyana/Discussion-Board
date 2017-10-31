<?php

	session_start();
	include 'connect.php';
	include 'header.php';
	include 'navbar.php';


	if(isset($_SESSION['loggedin_admin']) && ($_SESSION['loggedin_admin'] == true || $_SESSION['loggedin_admin'] == false)){
		
?>

		<h4>Welcome to the member's area, <?php echo $_SESSION['username'];?>!</h4>
		<a href='create_topic.php'><button>Start a Discussion</button></a>
		
<?php
	} else {
		echo "<p><a href='login.php'>Login</a> to start a discussion</p>";
	}

?>
		
		<table border="1px solid" align="center">
			<tr>
				<?php
					if(isset($_SESSION['loggedin_admin']) && $_SESSION['loggedin_admin'] == true){
						echo "<td class='id' width='100px'>Manage</td>";
					}
				?>
				<td class="id" width="30px"><span>ID</span></td>
				<td class="title" width="700px">Title</td>
				<td class="date" width="100px">Date Posted</td>
			<tr>
	

		
<?php
		$idCount = 0;
		$check = mysqli_query($database, "SELECT * FROM topics");
		if (mysqli_num_rows($check) != 0){
			while($row = mysqli_fetch_assoc($check)){
				$id = $row['topics_id'];
				echo "<tr>";
				if(isset($_SESSION['loggedin_admin']) && $_SESSION['loggedin_admin'] == true){
					echo "<td class='id'><a href='delete.php?id=$id'><input type='submit' name='delete' value='Delete'></a></td>";
				}
				echo "  <td class='id'>".++$idCount."</td>
						<td class='title'><a href='topic.php?id=$id'>".$row['topics_title']."</a><br>By ".$row['topics_user']."</td>
						<td class='date'>".$row['topics_date']."</td>
					</tr>";
			}
		} else {
			echo "<br><br>No topics found, be the first one to start!";
		}
		echo "</table>";
	
include 'footer.php';
?>
