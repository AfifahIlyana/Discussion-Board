<?php
if(isset($_SESSION['loggedin_admin']) && $_SESSION['loggedin_admin'] == true){
	?>
	<p><a href="manage_members.php">Manage Members</a></p> 
	<?php
	
}

?>