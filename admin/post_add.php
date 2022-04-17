<?php
function inc()
{
    include "../incs/class_db.php";
    include "../incs/class_admin.php";
}
inc();

$adminlib = new adminlib();

if (isset($_POST["add_action"])) {
    $message = $adminlib->add_post();
    $error = $message[0];
    $data = $message[1];
}

$sql = "SELECT * FROM category";
$list_category = $adminlib->get_list($sql);

?>

<?php include 'header.php'; ?>
<?php include 'sidebar.php'; ?>
<script src="ckeditor/ckeditor.js"></script>
<!-- /. NAV SIDE  -->
<div id="page-wrapper">
    <div id="page-inner">
        <div class="row">
            <div class="col-lg-12">
                <h2>Thêm bài viết</h2>
            </div>
        </div>
        <!-- /. ROW  -->
        <hr />
        <?php echo isset($error['note']) ? $error['note'] : ''; ?>
        <form action="post_add.php" method="post" enctype="multipart/form-data">

            Tiêu đề:<?php echo isset($error['title']) ? $error['title'] : ''; ?><br>
            <input type="text" name="title" value="<?php echo isset($data['title']) ? $data['title'] : ''; ?>" class="form-control"><br>

            Nội dung:<?php echo isset($error['content']) ? $error['content'] : ''; ?><br>
            <textarea name="content" id="content" rows="25" cols="120"><?php echo isset($data['content']) ? $data['content'] : ''; ?></textarea>
            <script>
                CKEDITOR.replace('content');    
            </script>
            <br>

            Hình ảnh:<?php echo isset($error['image']) ? $error['image'] : ''; ?><br>
            <input name="fileToUpload" type="file"><br>

            Chuyên mục:<?php echo isset($error['category_id']) ? $error['category_id'] : ''; ?><br>
            <select name="category_id">
                <?php echo $adminlib->get_dropdown_category($list_category, $data["category_id"]); ?>
            </select><br><br>

            <input type="submit" name="add_action" value="Thêm bài viết" class="btn btn-success">
        </form>

    </div>
    <!-- /. PAGE INNER  -->
</div>
<!-- /. PAGE WRAPPER  -->
</div>
<?php include 'footer.php'; ?>