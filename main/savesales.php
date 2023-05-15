<?php
session_start();
include('../connect.php');
$a = $_POST['invoice'];
$b = $_POST['cashier'];
$c = $_POST['date'];
$d = $_POST['ptype'];
$e = $_POST['amount'];
$z = $_POST['profit'];
$gtotal = $_POST['grand_total_amount'];
$damount = $_POST['discount_amount'];
$vamount = $_POST['vat_amount'];
$cname = $_POST['cname'];
if($d=='credit') {
$f = $_POST['due'];
$sql = "INSERT INTO sales (invoice_number,cashier,date,type,amount, grandtotal,vat,discount, profit,due_date,name) VALUES (:a,:b,:c,:d,:e, :gtotal,:vamount,:damount,:z,:f,:g)";
$q = $db->prepare($sql);
$q->execute(array(':a'=>$a,':b'=>$b,':c'=>$c,':d'=>$d,':e'=>$e, ':gtotal'=>$gtotal,':vamount'=>$vamount,':damount'=>$damount, ':z'=>$z,':f'=>$f,':g'=>$cname));
header("location: preview.php?invoice=$a");
exit();
}
if($d=='cash') {
$f = $_POST['cash'];
$sql = "INSERT INTO sales (invoice_number,cashier,date,type,amount, grandtotal,vat,discount, profit,due_date,name) VALUES (:a,:b,:c,:d,:e, :gtotal,:vamount,:damount,:z,:f,:g)";
$q = $db->prepare($sql);
$q->execute(array(':a'=>$a,':b'=>$b,':c'=>$c,':d'=>$d,':e'=>$e, ':gtotal'=>$gtotal,':vamount'=>$vamount,':damount'=>$damount,':z'=>$z,':f'=>$f,':g'=>$cname));
header("location: preview.php?invoice=$a");
exit();
}
// query



?>