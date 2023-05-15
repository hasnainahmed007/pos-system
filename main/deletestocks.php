<?php
	include('../connect.php');
	$id=$_GET['stock_id'];
	$result = $db->prepare("DELETE FROM stocks WHERE stock_id= :memid");
	$result->bindParam(':memid', $id);
	$result->execute();
?>