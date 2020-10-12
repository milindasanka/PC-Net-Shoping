<?php  

session_start();
if(!isset($_SESSION["uid"])){
	header("location:index.php");
}

include_once("db.php");
if (isset($_POST["updateCartItem"])) {
		$sql = "SELECT product_qty FROM products WHERE user_id = '$cm_user_id'" && "SELECT qty FROM cart WHERE user_id = '$cm_user_id'";
		$query = mysqli_query($con,$sql);
		if (mysqli_num_rows($query) > 0) {

			while ($row=mysqli_fetch_array($query)) {
			$product_qty[] = $row["product_qty"];
			$qty[] = $row["qty"];
			}
if($product_qty < $qty){
if (isset($_SESSION["uid"])) {
		$sql = "UPDATE cart SET qty='$qty' WHERE p_id = '$update_id' AND user_id = '$_SESSION[uid]'";
	}
	if(mysqli_query($con,$sql)){
		echo "<div class='alert alert-info'>
						<a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a>
						<b>Product is updated</b>
				</div>";
		exit();
	}
}
}
?>

