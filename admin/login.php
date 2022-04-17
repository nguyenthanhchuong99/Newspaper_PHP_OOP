<?php
function inc()
{
	include '../incs/class_db.php';
	include '../incs/class_admin.php';
}
inc();

$adminlib = new adminlib();
if (isset($_POST["login_action"])) {
	$message = $adminlib->login();
	$error = $message[0];
	$data = $message[1];
}

?>

<!-- BOOTSTRAP STYLES-->
<link href="assets/css/bootstrap.css" rel="stylesheet" />
<!-- FONTAWESOME STYLES-->
<link href="assets/css/font-awesome.css" rel="stylesheet" />
<!-- CUSTOM STYLES-->
<link href="assets/css/custom.css" rel="stylesheet" />
<!-- GOOGLE FONTS-->
<div class="container">
	<div class="wrapper">
		<form action="login.php" method="post" name="Login_Form" class="form-signin">
			<h3 class="form-signin-heading">Welcome Back! Please Sign In</h3>
			<hr class="colorgraph"><br>
			<?php
			if (isset($error['message']))
				echo '<div class="alert alert-danger" role="alert">' . $error['message'] . '</div>';
			?>

			<input type="text" class="form-control" name="username" placeholder="Username" required="" autofocus="" value="<?php echo isset($data['username']) ? $data['username'] : ''; ?>" />

			<input type="password" class="form-control" name="password" placeholder="Password" required="" autofocus="" value="<?php echo isset($data['password']) ? $data['password'] : ''; ?>" />

			<button class="btn btn-lg btn-primary btn-block" name="login_action" value="Login" type="Submit">Login</button>
		</form>
	</div>
</div>