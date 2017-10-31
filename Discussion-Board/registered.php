<?php
	session_start();
	include 'connect.php';
	include 'header.php';
?>

<h1>Registered</h1>

<p>Welcome to the famlily, <?php echo $_SESSION['username']; ?>!</p>
<p>You can <a href="login.php">Login</a> here to join the discussion.</p>

<?php
include 'footer.php';
?>