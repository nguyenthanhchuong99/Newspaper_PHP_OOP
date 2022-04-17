<?php
function inc()
{
	include "../incs/class_db.php";
	include "../incs/class_admin.php";
}
inc();

$adminlib = new adminlib();

$sql = "SELECT count(*) FROM posts";
$total_records = $adminlib->get_row_number($sql);

$limit = 3;

$current_page = isset($_GET['page']) ? $_GET['page'] : 1;

$total_page = ceil($total_records / $limit);

if ($current_page > $total_page) {
	$current_page = $total_page;
} else if ($current_page < 1) {
	$current_page = 1;
}

$start = ($current_page - 1) * $limit;

$sql = "SELECT * FROM posts a JOIN category b on a.category_id = b.category_id ORDER BY createdate DESC LIMIT $start, $limit";
$data = $adminlib->get_list($sql);

?>
<?php include 'header.php'; ?>
<?php include 'sidebar.php'; ?>
<!-- /. NAV SIDE  -->
<div id="page-wrapper">
	<div id="page-inner">
		<div class="row">
			<div class="col-lg-12">
				<h2>Quản lý bài viết</h2>
			</div>
		</div>
		<!-- /. ROW  -->
		<hr />
		<a href="post_add.php"><input type="button" class="btn btn-success" value="Thêm bài viết"></a><br><br>

		<table class="table table-striped table-bordered table-hover">
			<thead>
				<tr>
					<th>Hình ảnh</th>
					<th>Tiêu đề</th>
					<th>Chuyên mục</th>
					<th>Xử lý</th>
				</tr>
			</thead>
			<tbody>
				<?php
				for ($i = 0; $data != 0 && $i < count($data); $i++) {
					$id = $data[$i]["post_id"];
				?>
					<tr>
						<td><img src="../images/<?php echo $data[$i]["image"]; ?>" width="50px" height="50px"></td>
						<td><?php echo $data[$i]["title"]; ?></td>
						<td><?php echo $data[$i]["name"]; ?></td>
						<td><a href="post_update.php?id=<?php echo $id; ?>">update</a> | <a style="color: red;" href="post_remove.php?id=<?php echo $id; ?>">remove</a></td>
					</tr>
				<?php
				}
				?>
			</tbody>
		</table>
		<ul class="pagination">
			<?php
			if ($current_page > 1 && $total_page > 1) {
				echo '<li><a href="post.php?page=' . ($current_page - 1) . '">Prev</a></li>';
			}

			for ($i = 1; $i <= $total_page; $i++) {

				if ($current_page == $i)
					echo '<li class="disabled"><a href="#">' . $i . '</a></li>';
				else
					echo '<li><a href="post.php?page=' . $i . '">' . $i . '</a></li>';
			}

			if ($current_page < $total_page && $total_page > 1) {
				echo '<li><a href="post.php?page=' . ($current_page + 1) . '">Next</a></li>';
			}

			?>
		</ul>
	</div>
	<!-- /. PAGE INNER  -->
</div>
<!-- /. PAGE WRAPPER  -->
</div>
<?php include 'footer.php'; ?>