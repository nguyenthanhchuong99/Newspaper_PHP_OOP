<?php
function inc()
{
	include "../incs/class_db.php";
	include "../incs/class_admin.php";
}
inc();

$adminlib = new adminlib();

$post_id = intval($_GET["id"]);
$sql = "SELECT title, content, category_id FROM posts WHERE post_id = $post_id";
$data = $adminlib->get_row($sql);

$sql = "SELECT * FROM category";
$list_category = $adminlib->get_list($sql);

if (isset($_POST["update_action"])) {
	$message = $adminlib->update_post($post_id);
	$error = $message[0];
	$data = $message[1];
}

?>
<?php include 'header.php'; ?>
<?php include 'sidebar.php'; ?>
<script src="ckeditor/ckeditor.js"></script>
<div id="page-wrapper">
	<div id="page-inner">
		<div class="row">
			<div class="col-md-12">
				<h2>Cập nhật bài viết</h2>
			</div>
		</div>
		<!-- /. ROW  -->
		<hr />

		<?php echo isset($error['note']) ? $error['note'] : ''; ?>
		<form action="post_update.php?id=<?php echo $post_id ?>" method="post" enctype="multipart/form-data">

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

			<input type="submit" name="update_action" value="Cập nhật bài viết" class="btn btn-success">
		</form>

		<!-- /. ROW  -->
	</div>
	<!-- /. PAGE INNER  -->
</div>
<!-- /. PAGE WRAPPER  -->
</div>
<?php include 'footer.php'; ?>