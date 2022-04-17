<?php
function inc()
{
  include 'incs/class_db.php';
  include 'incs/class_home.php';
}
inc();

$homelib = new homelib();

$sql = "SELECT * FROM category";
$data = $homelib->get_list($sql);

?>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Blog Home - Start Bootstrap Template</title>

  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/blog-home.css" rel="stylesheet">

</head>

<body>

  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
      <a class="navbar-brand" href="index.php">NEWSPAPER ONLINE</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">

          <?php
          for ($i = 0; $i < count($data); $i++) {
          ?>
            <li class="nav-item">
              <a class="nav-link" href="index.php?cat=<?php echo $data[$i]["category_id"]; ?>"><?php echo $data[$i]["name"]; ?></a>
            </li>

          <?php
          }
          ?>

          <?php if (isset($_COOKIE["user"])) { ?>
            <li class="nav-item">
              <span class="nav-link">Xin Chào! <?php echo $_COOKIE["user"]; ?></span>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="logout.php">Đăng xuất</a>
            </li>
          <?php
          } else {
          ?>
            <li class="nav-item">
              <a class="nav-link" href="login.php">Đăng nhập</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="register.php">Đăng ký</a>
            </li>
          <?php
          }
          ?>

        </ul>
      </div>
    </div>
  </nav>