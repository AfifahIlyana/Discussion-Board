
<footer>
<?php
	if(isset($_SESSION['loggedin_admin']) && ($_SESSION['loggedin_admin'] == true || $_SESSION['loggedin_admin'] == false)){
		echo "<p><a href='index.php'>Homepage</a> | <a href='logout.php'>Logout</a></p>";
	} else {
		echo "<p><a href='index.php'>Homepage</a></p>";
	}
?>
</footer>
</body>
</html>