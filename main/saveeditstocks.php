<?php
// configuration
include('../connect.php');

// new data
$id = $_POST['memi'];
$a = $_POST['code'];
$b = $_POST['name'];
$c = $_POST['exdate'];
$d = $_POST['price'];
$e = $_POST['supplier'];
$f = $_POST['qty'];
$i = $_POST['date_arrival'];
$j = $_POST['sold'];
// query
$sql = "UPDATE stocks 
        SET stock_code=?, stock_name=?, expiry_date=?, price=?, supplier=?, qty=?,date_arrival=?, qty_sold=?
		WHERE stock_id=?";
$q = $db->prepare($sql);
$q->execute(array($a,$b,$c,$d,$e,$f,$i,$j,$id));
header("location: stocks.php");

?>