<!DOCTYPE html>
<html>

<head>
	<!-- js -->
	<link href="src/facebox.css" media="screen" rel="stylesheet" type="text/css" />
	<script src="lib/jquery.js" type="text/javascript"></script>
	<script src="src/facebox.js" type="text/javascript"></script>
	<script type="text/javascript">
		jQuery(document).ready(function($) {
			$('a[rel*=facebox]').facebox({
				loadingImage: 'src/loading.gif',
				closeImage: 'src/closelabel.png'
			})
		})
	</script>
	<title>
		POS
	</title>
	<?php
	require_once('auth.php');
	?>

	<link href="vendors/uniform.default.css" rel="stylesheet" media="screen">
	<link href="css/bootstrap.css" rel="stylesheet">

	<link rel="stylesheet" type="text/css" href="css/DT_bootstrap.css">

	<link rel="stylesheet" href="css/font-awesome.min.css">
	<style type="text/css">
		body {
			/* background-image: url("images/47807401-food-wallpaper.jpg"); */
			background-color:gray;
			background-repeat: no-repeat;
			background-attachment: fixed;
			background-position: center;
			padding-top: 60px;
			padding-bottom: 0px;
			background-size: cover;

		}

		.sidebar-nav {
			background-color: rgba(255, 255, 255, 0.4);

			font: bold 15px 'Aleo';
			padding: 9px 5px;
			color: black;
		}
	</style>
	<link href="css/bootstrap-responsive.css" rel="stylesheet">

	<!-- combosearch box-->

	<script src="vendors/jquery-1.7.2.min.js"></script>
	<script src="vendors/bootstrap.js"></script>
	<link href="../style.css" media="screen" rel="stylesheet" type="text/css" />
	<!--sa poip up-->




	<script language="javascript" type="text/javascript">
		/* Visit http://www.yaldex.com/ for full source code
and get more free JavaScript, CSS and DHTML scripts! */
		<!-- Begin
		var timerID = null;
		var timerRunning = false;

		function stopclock() {
			if (timerRunning)
				clearTimeout(timerID);
			timerRunning = false;
		}

		function showtime() {
			var now = new Date();
			var hours = now.getHours();
			var minutes = now.getMinutes();
			var seconds = now.getSeconds()
			var timeValue = "" + ((hours > 12) ? hours - 12 : hours)
			if (timeValue == "0") timeValue = 12;
			timeValue += ((minutes < 10) ? ":0" : ":") + minutes
			timeValue += ((seconds < 10) ? ":0" : ":") + seconds
			timeValue += (hours >= 12) ? " P.M." : " A.M."
			document.clock.face.value = timeValue;
			timerID = setTimeout("showtime()", 1000);
			timerRunning = true;
		}

		function startclock() {
			stopclock();
			showtime();
		}
		window.onload = startclock;
		// End -->
	</SCRIPT>

</head>
<?php
function createRandomPassword()
{
	$chars = "003232303232023232023456789";
	srand((float)microtime() * 1000000);
	$i = 0;
	$pass = '';
	while ($i <= 7) {

		$num = rand() % 33;

		$tmp = substr($chars, $num, 1);

		$pass = $pass . $tmp;

		$i++;
	}
	return $pass;
}
$finalcode = 'RS-'.createRandomPassword();
?>

<body>
	<?php include('navfixed.php'); ?>
	<?php
	$position = $_SESSION['SESS_LAST_NAME'];
	if ($position == 'Cashier') {
	?>
		<a href="sales.php?id=cash&invoice=<?php echo $finalcode ?>">Cash</a>

		<a href="../index.php">Logout</a>

	<?php
	}
	if ($position == 'admin') {
	?>

		<div class="container-fluid">
			<div class="row-fluid">
				<div class="span2">
					<div class="sidebar-nav">
						<ul class="nav nav-list">
							<li><a href="index.php"><i class="icon-dashboard icon-2x"></i> Dashboard </a></li>
							<li class="active"><a href="sales.php?id=cash&invoice=<?php echo $finalcode ?>"><i class="icon-shopping-cart icon-2x"></i> Sales</a> </li>
							<li><a href="products.php"><i class="icon-list-alt icon-2x"></i>Foods</a> </li>
							<li><a href="customer.php"><i class="icon-group icon-2x"></i> Customers</a> </li>
							<li><a href="supplier.php"><i class="icon-group icon-2x"></i> Suppliers</a> </li>
							<li><a href="stocks.php"><i class="icon-bar-chart icon-2x"></i> Stocks</a> </li>
							<li><a href="salesreport.php?d1=0&d2=0"><i class="icon-bar-chart icon-2x"></i> Sales Report</a> </li>
							<li><a href="salesreportanalysis.php?d1=0&d2=0"><i class="icon-bar-chart icon-2x"></i> Sales Analysis</a></li>
							<li><a href="sales_inventory.php"><i class="icon-table icon-2x"></i>Sales Invoice</a> </li>
							<br><br><br><br><br><br>
							<li>
								<div class="hero-unit-clock">

									<form name="clock">
										<font color="white">Time: <br></font>&nbsp;<input style="width:140px;" type="text" class="trans" name="face" value="" disabled>
									</form>
								</div>
							</li>

						</ul>
					<?php } ?>
					</div>
					<!--/.well -->
				</div>
				<!--/span-->
				<div class="span10">
					<div class="contentheader">
						<center>
							<i class="icon-money"></i> :<font color="green" style="font:bold 42px 'Aleo';">
								<?php
								include('../connect.php');
								$result = $db->prepare("SELECT * FROM products");
								$result = $db->query("SELECT SUM(amount) as total FROM sales WHERE date = '" . date('m/d/y') . "'");
								$row = $result->fetch();
								echo 0 + $row['total'];
								?> </font>
						</center>
					</div>
					<ul class="breadcrumb">
						<a href="index.php">
							<li>Dashboard</li>
						</a> /
						<li class="active">Sales</li>
					</ul>
					<div style="margin-top: -19px; margin-bottom: 21px;">
						<a href="index.php"><button class="btn btn-default btn-large" style="float: none;"><i class="icon icon-circle-arrow-left icon-large"></i> Back</button></a>
					</div>



					<form action="incoming.php" method="post">

						<input type="hidden" name="pt" value="<?php echo $_GET['id']; ?>" />
						<input type="hidden" name="invoice" value="<?php echo $_GET['invoice']; ?>" />
						<select name="product" style="width:650px; " class="chzn-select" required>
							<option></option>
							<?php
							include('../connect.php');
							$result = $db->prepare("SELECT * FROM products");
							$result->bindParam(':userid', $res);
							$result->execute();
							for ($i = 0; $row = $result->fetch(); $i++) {
							?>
								<option value="<?php echo $row['product_id']; ?>"><?php echo $row['product_code']; ?> - <?php echo $row['product_name']; ?> | Expires at: <?php echo $row['expiry_date']; ?></option>
							<?php
							}
							?>
						</select>
						<input type="number" name="qty" value="1" min="1" placeholder="Qty" autocomplete="off" style="width: 68px; height:30px; padding-top:6px; padding-bottom: 4px; margin-right: 4px; font-size:15px;" / required>
						<input type="hidden" name="discount" value="" autocomplete="off" style="width: 68px; height:30px; padding-top:6px; padding-bottom: 4px; margin-right: 4px; font-size:15px;" />
						<input type="hidden" name="date" value="<?php echo date("m/d/y"); ?>" />
						<Button type="submit" class="btn btn-info" style="width: 123px; height:35px; margin-top:-5px;" /><i class="icon-plus-sign icon-large"></i> Add</button>

					</form>




					<table class="table table-bordered" id="resultTable" data-responsive="table">
						<thead>
							<tr>
								<th> Food Code </th>
								<th> Food Name </th>
								<th> Unit Price </th>
								<!--th> Vat %</th-->
								<th> Qty </th>
								<th> Amount </th>

								<th> Action </th>
							</tr>
						</thead>
						<tbody>

							<?php
							$id = $_GET['invoice'];
							include('../connect.php');
							$result = $db->prepare("SELECT * FROM sales_order WHERE invoice= :userid");
							$result->bindParam(':userid', $id);
							$result->execute();
							for ($i = 1; $row = $result->fetch(); $i++) {
							?>
								<tr class="record">
									<td hidden><?php echo $row['product']; ?></td>
									<td><?php echo $row['product_code']; ?></td>
									<td><?php echo $row['name']; ?></td>
									<td>
										<?php
										$ppp = $row['price'];
										echo formatMoney($ppp, true);
										?>
									</td>

									<!-- For Vate -->
									<!--td>
				<?php
								$vat = $row['vat'];
								echo $row['vat']; ?>
			</td-->


									<td><?php echo $row['qty']; ?></td>
									<td>
										<?php

										$dfdf = $row['amount'];
										echo formatMoney($dfdf, true);
										?>
									</td>
									<!--td>
			<?php
								$profit = $row['profit'];
								echo formatMoney($profit, true);
			?>
			</td-->
									<td width="90"><a href="delete.php?id=<?php echo $row['transaction_id']; ?>&invoice=<?php echo $_GET['invoice']; ?>&dle=<?php echo $_GET['id']; ?>&qty=<?php echo $row['qty']; ?>&code=<?php echo $row['product']; ?>"><button class="btn btn-mini btn-warning"><i class="icon icon-remove"></i> Cancel </button></a></td>
								</tr>
							<?php
							}
							?>
							<tr>
								<th> </th>
								<th> </th>
								<th> </th>
								<th> </th>
								<th> </th>
								<td> Total Amount: </td>
								<!--td> Profit: </td-->
								<th> </th>
							</tr>
							<tr>
								<th colspan="5"><strong style="font-size: 12px; color: #222222;">Total:</strong></th>
								<td colspan="1"><span style="font-size: 12px; color: #222222;" id="result1">
										<?php
										function formatMoney($number, $fractional = false)
										{
											if ($fractional) {
												$number = sprintf('%.2f', $number);
											}
											while (true) {
												$replaced = preg_replace('/(-?\d+)(\d\d\d)/', '$1,$2', $number);
												if ($replaced != $number) {
													$number = $replaced;
												} else {
													break;
												}
											}
											return $number;
										}
										$sdsd = $_GET['invoice'];
										$resultas = $db->prepare("SELECT sum(amount) FROM sales_order WHERE invoice= :a");
										$resultas->bindParam(':a', $sdsd);
										$resultas->execute();
										for ($i = 0; $rowas = $resultas->fetch(); $i++) {
											$total = $rowas['sum(amount)'];
											echo number_format(ceil($total), 2, '.', '');
										}
										?>
									</span></td>
								<!--td colspan="1"><strong style="font-size: 12px; color: #222222;">

			<?php
			$resulta = $db->prepare("SELECT sum(profit) FROM sales_order WHERE invoice= :b");
			$resulta->bindParam(':b', $sdsd);
			$resulta->execute();
			for ($i = 0; $qwe = $resulta->fetch(); $i++) {
				$asd = $qwe['sum(profit)'];
				echo formatMoney($asd, true);
			}
			?>
		
				</td-->
								<th></th>
							</tr>

							<!--for vat-->
							<tr>
								<th colspan="5"><strong style="font-size: 12px; color: #222222;">Vat:</strong></th>
								<td colspan="1"><strong style="font-size: 12px; color: #222222;">
										<input type="checkbox" name="checkbox" id="checkbox" value="1" onclick="setVat()">
										<span id="show_vat" style="display: none">
											<input id="result2" value="" type="number"></input>
											<button class="btn btn-big btn-info" onclick="vat()" style="float: right;">Vat</button>
									</strong>
									</span>
								</td>
								<td colspan="1"><span style="font-size: 12px; color: #222222;" id="result3">


									</span></td>
							</tr>
							<!--for discount-->
							<tr>
								<th colspan="5"><strong style="font-size: 12px; color: #222222;">Discount:</strong></th>
								<td colspan="1"><strong style="font-size: 12px; color: #222222;">
										<input type="checkbox" name="checkbox" id="checkbox" value="1" onclick="setDiscount()">
										<span id="show_discount" style="display: none">
											<input id="result4" value="" type="number"> </input> <button class="btn btn-big btn-info" onclick="sum()" style="float: right;">Discount</button>
									</strong>
									</span>
								</td>
								<td colspan="1"><span style="font-size: 12px; color: #222222;" id="result">

									</span></td>
							</tr>
							<!--for grand Total-->
							<tr>
								<th colspan="5"><strong style="font-size: 12px; color: #222222;">Grand Total:</strong></th>
								<td colspan="1"><span style="font-size: 12px; color: #222222;">
										<?php
										$str = '<p id="result5"></p>';
										echo "$str";
										?>

									</span></td>
							</tr>

						</tbody>
					</table><br>


					<button class="btn btn-success btn-large btn-block" id="myBtn"><i class="icon icon-save icon-large"></i> SAVE</button>

					</form>

					<div class="clearfix"></div>
				</div>
			</div>
		</div>

		<div id="myModal" class="modal">

			<!-- Modal content -->
			<div class="modal-content">
				<div class="modal-header">
					<span class="close">&times;</span>
					<h2>Cash</h2>
				</div>
				<div class="modal-body">
					<form action="savesales.php" method="post">

						<input type="text" size="25" value="" name="cname" id="country" onkeyup="suggest(this.value);" onblur="fill();" class="" autocomplete="off" placeholder="Enter Customer Name" style="width: 268px; height:30px;" />
						<input type="hidden" name="date" value="<?php echo date("m/d/y"); ?>" />
						<input type="number" name="cash" placeholder="Cash" style="width: 268px; height:30px;  margin-bottom: 15px;" required />
						<input type="hidden" name="ptype" value="<?php echo $_GET['id']; ?>" />
						<input type="hidden" name="invoice" value="<?php echo $_GET['invoice']; ?>" />
						<input type="hidden" name="profit" value="<?php echo $asd; ?>" />
						<input type="hidden" name="cashier" value="<?php echo $_SESSION['SESS_FIRST_NAME']; ?>" />
						<input type="hidden" name="amount" id="total_amount" value="" />
						<input type="hidden" name="grand_total_amount" id="grand_total_amount" value="" />
						<input type="hidden" name="discount_amount" id="discount_amount" value="" />
						<input type="hidden" name="vat_amount" id="vat_amount" value="" /><br><br>
						<button class="btn btn-success btn-block btn-large" style="width:267px;"><i class="icon icon-save icon-large"></i> Save</button>
					</form>
				</div>
				<div class="modal-footer">
					<center>
						<h5>Food World</h5>
					</center>
				</div>
			</div>

		</div>

		<style>
			/* The Modal (background) */
			.modal {
				display: none;
				/* Hidden by default */


			}


			/* Add Animation */
			@-webkit-keyframes animatetop {
				from {
					top: -300px;
					opacity: 0
				}

				to {
					top: 0;
					opacity: 1
				}
			}

			@keyframes animatetop {
				from {
					top: -300px;
					opacity: 0
				}

				to {
					top: 0;
					opacity: 1
				}
			}

			/* The Close Button */
			.close {
				color: white;
				float: right;
				font-size: 28px;
				font-weight: bold;
			}

			.close:hover,
			.close:focus {
				color: #000;
				text-decoration: none;
				cursor: pointer;
			}

			.modal-header {
				padding: 2px 16px;
				background-color: #5cb85c;
				color: white;
			}

			.modal-body {
				padding: 2px 16px;
			}

			.modal-footer {
				padding: 2px 16px;
				background-color: #5cb85c;
				color: white;
			}
		</style>


		<script>
			function vat() {

				var x = document.getElementById('result1').innerHTML;
				var y = document.getElementById('result2').value;

				var z = (parseFloat(x) + (parseFloat(y) * (parseFloat(x) / 100)));
				document.getElementById('result3').innerHTML = z.toFixed(2);
				document.getElementById('vat_amount').value = document.getElementById("result2").value;
				//document.getElementById('result').style.display;

			}

			function sum() {

				var x = document.getElementById('result3').innerHTML;
				var y = document.getElementById('result4').value;

				var value = (parseFloat(x) * parseFloat(y) / 100);
				var z = parseFloat(x) - value;
				document.getElementById('result5').innerHTML = z.toFixed(2);
				document.getElementById('grand_total_amount').value = z.toFixed(2);
				document.getElementById('total_amount').value = document.getElementById("result1").innerHTML;
				document.getElementById('discount_amount').value = document.getElementById("result4").value;



			}

			function setDiscount() {

				var y = document.getElementById('checkbox').checked;

				if (y) {
					document.getElementById('show_discount').style.display = "block";
				} else {
					document.getElementById('show_discount').style.display = "none";
				}
			}

			function setVat() {

				var y = document.getElementById('checkbox').checked;

				if (y) {
					document.getElementById('show_vat').style.display = "block";
				} else {
					document.getElementById('show_vat').style.display = "none";
				}
			}
		</script>

		<script>
			// Get the modal
			var modal = document.getElementById('myModal');

			// Get the button that opens the modal
			var btn = document.getElementById("myBtn");

			// Get the <span> element that closes the modal
			var span = document.getElementsByClassName("close")[0];

			// When the user clicks the button, open the modal 
			btn.onclick = function() {
				modal.style.display = "block";
			}

			// When the user clicks on <span> (x), close the modal
			span.onclick = function() {
				modal.style.display = "none";
			}

			// When the user clicks anywhere outside of the modal, close it
			window.onclick = function(event) {
				if (event.target == modal) {
					modal.style.display = "none";
				}
			}
		</script>



</body>
<?php include('footer.php'); ?>

</html>