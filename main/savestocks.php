<?php
session_start();
include('../connect.php');
$a = $_POST['code'];
$b = $_POST['name'];
$c = $_POST['exdate'];
$d = $_POST['price'];
$e = $_POST['supplier'];
$f = $_POST['qty'];

$j = $_POST['date_arrival'];
$k = $_POST['qty_sold'];
// query
$sql = "INSERT INTO stocks (stock_code,stock_name,expiry_date,price,supplier,qty,date_arrival,qty_sold) VALUES (:a,:b,:c,:d,:e,:f,:j,:k)";
$q = $db->prepare($sql);
$q->execute(array(':a'=>$a,':b'=>$b,':c'=>$c,':d'=>$d,':e'=>$e,':f'=>$f,':j'=>$j,':k'=>$k));
header("location: stocks.php");


?>