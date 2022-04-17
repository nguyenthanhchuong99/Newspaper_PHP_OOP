<?php 
setcookie("admin", "", time() - 3600);
echo 'Đăng xuất thành công!';

header("Location:login.php");
die();
?>
