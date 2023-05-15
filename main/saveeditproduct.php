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
$g = $_POST['o_price'];
$v = $_POST['vat'];
$h = $_POST['profit'];
$i = $_POST['date_arrival'];
$j = $_POST['sold'];

// query
$sql = "UPDATE products 
        SET product_code=?, product_name=?, expiry_date=?, price=?, supplier=?, qty=?, o_price=?, vat=?, profit=?, date_arrival=?, qty_sold=?
		WHERE product_id=?";
$q = $db->prepare($sql);
$q->execute(array($a,$b,$c,$d,$e,$f,$g,$v,$h,$i,$j,$id));
header("location: products.php");

?>