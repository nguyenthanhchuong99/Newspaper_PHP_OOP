<?php
function inc()
{
	include "../incs/class_db.php";
	include "../incs/class_admin.php";
}
inc();

$adminlib = new adminlib();
$post_id = intval($_GET["id"]);
if (isset($_POST["remove_action"])) {
	$adminlib->remove_post($post_id);
}

?>
<?php include 'header.php'; ?>
<?php include 'sidebar.php'; ?>
<script src="ckeditor/ckeditor.js"></script>
<div id="page-wrapper">
	<div id="page-inner">
		<div class="row">
			<div class="col-md-12">
				<h2>Xóa bài viết</h2>
			</div>
		</div>
		<!-- /. ROW  -->
		<hr />

		<form action="post_remove.php?id=<?php echo $post_id ?>" method="post">
			Bạn chắc chắn muốn xóa?<br>
			<input type="submit" name="remove_action" value="Xóa bài viết" class="btn btn-success">
		</form>

		<!-- /. ROW  -->
	</div>
	<!-- /. PAGE INNER  -->
</div>
<!-- /. PAGE WRAPPER  -->
</div>
<?php include 'footer.php'; ?>