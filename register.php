<?php
// Hàm include files
function inc()
{
    include 'incs/class_db.php';
    include 'incs/class_home.php';
}

// Gọi hàm inc() để bắt đầu include file
inc();

// Khởi tạo class_home.php
$homelib = new homelib();

// Kiểm tra có bấm nút Đăng ký hay không! nếu có thực hiện đăng ký
if (isset($_POST["register_action"])) {
    $message = $homelib->register();
    $error = $message[0];
    $data = $message[1];
}

?>
<!DOCTYPE html>
<html>

<head>
    <title>Đăng ký</title>
    <meta charset="UTF-8">
</head>

<body>
    <h1>Đăng ký</h1>
    <form method="post" action="register.php">
        <table cellspacing="0" cellpadding="5">
            <tr>
                <?php echo isset($error['note']) ? $error['note'] : ''; ?>
                <td>Tên của bạn</td>
                <td><input type="text" name="username" id="username" value="<?php echo isset($data['username']) ? $data['username'] : ''; ?>" />
                    <?php echo isset($error['username']) ? $error['username'] : ''; ?>
                </td>
            </tr>
            <tr>
                <td>Email của bạn</td>
                <td><input type="text" name="email" id="email" value="<?php echo isset($data['email']) ? $data['email'] : ''; ?>" />
                    <?php echo isset($error['email']) ? $error['email'] : ''; ?>
                </td>
            </tr>
            <tr>
                <td>Mật khẩu của bạn</td>
                <td><input type="password" name="password" id="password" value="<?php echo isset($data['password']) ? $data['password'] : ''; ?>" />
                    <?php echo isset($error['password']) ? $error['password'] : ''; ?>
                </td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" name="register_action" value="Đăng ký" /></td>
            </tr>
        </table>
    </form>
</body>

</html>