<?php
	session_start();
	include 'connect.php';
	include 'header.php';
	include 'navbar.php';
?>

<h2>Successfully Logged In</h2>
<p>Welcome back, <?php echo $_SESSION['username']; ?>!</p>

<?php
include 'footer.php';
?>
