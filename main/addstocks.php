<link href="../style.css" media="screen" rel="stylesheet" type="text/css" />
<form action="savestocks.php" method="post">
<center><h4><i class="icon-plus-sign icon-large"></i> Add Stocks</h4></center>
<hr>
<div id="ac">
<span>Raw Code : </span><input type="text" style="width:265px; height:30px;" name="code" ><br>
<span>Raw Name : </span><textarea style="width:265px; height:50px;" name="name"> </textarea><br>
<span>Date Arrival: </span><input type="date" style="width:265px; height:30px;" name="date_arrival" /><br>
<span>Expiry Date : </span><input type="date" value="<?php echo date ('M-d-Y'); ?>" style="width:265px; height:30px;" name="exdate" /><br>
<span>Price per/(kg/ltr) : </span><input type="text" id="txt1" style="width:265px; height:30px;" name="price" Required/><br>
<span>Supplier : </span>
<select name="supplier"  style="width:265px; height:30px; margin-left:-5px;" >
<option></option>
	<?php
	include('../connect.php');
	$result = $db->prepare("SELECT * FROM supliers");
		$result->bindParam(':userid', $res);
		$result->execute();
		for($i=0; $row = $result->fetch(); $i++){
	?>
		<option><?php echo $row['suplier_name']; ?></option>
	<?php
	}
	?>
</select><br>
<span>Quantity : </span><input type="number" style="width:265px; height:30px;" min="0" id="txt11" onkeyup="sum();" name="qty" Required ><br>
<span></span><input type="hidden" style="width:265px; height:30px;" id="txt22" name="qty_sold" Required ><br>
<div style="float:right; margin-right:10px;">
<button class="btn btn-success btn-block btn-large" style="width:267px;"><i class="icon icon-save icon-large"></i> Save</button>
</div>
</div>
</form>
