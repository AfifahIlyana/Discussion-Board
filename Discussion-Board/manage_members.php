<?php
session_start();
include 'connect.php';
include 'header.php';
			
if (isset($_SESSION['loggedin_admin']) && $_SESSION['loggedin_admin'] == true){
	echo "<h2>Manage Members</h2>";
	echo "<form method='post' action='manage_members.php'>
			<table border='1px'>
				<tr>
					<td class='id' width='50px'>User ID</td>
					<td class='title' width='150px'>Name</td>
					<td class='title' width='250px'>Email</td>
					<td class='id'>Privilege</td>	
					<td class='id' width='100px'>Manage</td>
				</tr>";
					
	$users_list = mysqli_query($database, "SELECT * FROM users");
		if (mysqli_num_rows($users_list) != 0){
			while($row = mysqli_fetch_assoc($users_list)){
				$id = $row['users_id'];
				echo "<tr>
						<td class='id' width='50px'>".$row['users_id']."</td>
						<td class='title' width='150px'>".$row['users_name']."</td>
						<td class='title' width='250px'>".$row['users_email']."</td>
						<td class='id'>".$row['users_privilage']."</td>";
				if($row['users_privilage'] == 0){
					echo "<td class='id'><a class='mote' href='promote.php?id=$id'>< Promote ></a></td>";
				} else {
					echo "<td class='id'><a class='mote' href='demote.php?id=$id'>< Demote ></a></td>";
				}
				echo "</tr>";
			}
			echo "</table></form>";
		} else {
			echo "No users found";
		}
} else {
	header("location: index.php");
}
		
include 'footer.php';
?>

