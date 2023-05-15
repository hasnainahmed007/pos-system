<?php
session_start();
include('../connect.php');
$a = $_POST['code'];
$b = $_POST['name'];
$c = $_POST['exdate'];
$d = $_POST['price'];
$e = $_POST['supplier'];
$f = $_POST['qty'];
$g = $_POST['o_price'];
$h = $_POST['profit'];
$j = $_POST['date_arrival'];
$k = $_POST['qty_sold'];
$v = $_POST['vat'];
// query
$sql = "INSERT INTO products (product_code,product_name,expiry_date,price,supplier,qty,o_price,profit,date_arrival,qty_sold,vat) VALUES (:a,:b,:c,:d,:e,:f,:g,:h,:j,:k,:v)";
$q = $db->prepare($sql);
$q->execute(array(':a'=>$a,':b'=>$b,':c'=>$c,':d'=>$d,':e'=>$e,':f'=>$f,':g'=>$g,':h'=>$h,':j'=>$j,':k'=>$k,':v'=>$v));
header("location: products.php");


?>