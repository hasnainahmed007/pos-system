<!DOCTYPE html>
<html>
<head>
<title>
POS
</title>
 <link href="css/bootstrap.css" rel="stylesheet" />
 <link href="css/bootstrap-responsive.css" rel="stylesheet" />
 <link rel="stylesheet" href="main/font/font.css">  <!--for font style-->

  <link rel="stylesheet" type="text/css" href="css/DT_bootstrap.css" /> 
  
  <link rel="stylesheet" href="css/font-awesome.min.css">
	   <style type="text/css">
     body {
	/* background-image: url("images/pic01.jpg"); */
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
           margin:left;
			font:bold 15px 'Aleo';
        padding: 9px 5px;
		color: black;

		
		
      }
	  .contentheader{
		width:100%;
	  }
    </style>

<link href="../style.css" media="screen" rel="stylesheet" type="text/css" />
<link href="src/facebox.css" media="screen" rel="stylesheet" type="text/css" />
<script src="lib/jquery.js" type="text/javascript"></script>
<script src="src/facebox.js" type="text/javascript"></script>
<script type="text/javascript">
  jQuery(document).ready(function($) {
    $('a[rel*=facebox]').facebox({
      loadingImage : 'src/loading.gif',
      closeImage   : 'src/closelabel.png'
    })
  })
</script>
<?php
	require_once('auth.php');
?>
<?php
function createRandomPassword() {
	$chars = "003232303232023232023456789";
	srand((double)microtime()*1000000);
	$i = 0;
	$pass = '' ;
	while ($i <= 7) {

		$num = rand() % 33;

		$tmp = substr($chars, $num, 1);

		$pass = $pass . $tmp;

		$i++;

	}
	return $pass;
}
$finalcode='RS-'.createRandomPassword();
?>

 <script language="javascript" type="text/javascript">
/* Visit http://www.yaldex.com/ for full source code
and get more free JavaScript, CSS and DHTML scripts! */
<!-- Begin
var timerID = null;
var timerRunning = false;
function stopclock (){
if(timerRunning)
clearTimeout(timerID);
timerRunning = false;
}
function showtime () {
var now = new Date();
var hours = now.getHours();
var minutes = now.getMinutes();
var seconds = now.getSeconds()
var timeValue = "" + ((hours >12) ? hours -12 :hours)
if (timeValue == "0") timeValue = 12;
timeValue += ((minutes < 10) ? ":0" : ":") + minutes
timeValue += ((seconds < 10) ? ":0" : ":") + seconds
timeValue += (hours >= 12) ? " P.M." : " A.M."
document.clock.face.value = timeValue;
timerID = setTimeout("showtime()",1000);
timerRunning = true;
}
function startclock() {
stopclock();
showtime();
}
window.onload=startclock;
// End -->
</script>	
</head>
<body>
<?php include('navfixed.php');?>
<?php
$position=$_SESSION['SESS_LAST_NAME'];
if($position=='Cashier') {
?>

<!--a href="../index.php">Logout</a-->
<div class="container-fluid">
      <div class="row-fluid">
	<div class="span2">
          <div class="sidebar-nav">
                     <ul class="nav nav-list">
              <li class="active"><a href="#"><i class="icon-dashboard icon-1x"></i> Dashboard </a></li> 
			<li><a href="sales.php?id=cash&invoice=<?php echo $finalcode ?>"><i class="icon-shopping-cart icon-2x"></i> Sales</a>  </li>             
			<li><a href="products.php"><i class="icon-list-alt icon-2x"></i> Foods</a>                                     </li>
			<li><a href="customer.php"><i class="icon-group icon-2x"></i> Customers</a>                                    </li>
			<li><a href="supplier.php"><i class="icon-group icon-2x"></i> Suppliers</a>                                    </li>
			<li><a href="stocks.php"><i class="icon-bar-chart icon-2x"></i> Stocks</a>                                    </li>
			
			<br><br><br><br><br><br>		
			<li>
			 <div class="hero-unit-clock">
		
			<form name="clock">
			<font color="white">Time: <br></font>&nbsp;<input style="width:150px;" type="submit" class="trans" name="face" value="">
			</form>
			  </div>
			</li>
				</ul>                               
          </div><!--/.well -->
        </div><!--/span-->
	<div class="span10">
	<div class="contentheader">
			<center><i class="icon-dashboard"></i> Dashboard</center>
			</div>
			<br>
		
			
		
		
		
<div id="mainmain">



<a href="sales.php?id=cash&invoice=<?php echo $finalcode ?>"><font color="green"><i class="icon-shopping-cart icon-3x"></i></font><br> Sales</a>               
<a href="products.php"><i class="icon-list-alt icon-3x"></i><br> Foods</a>   </br>   
<a href="customer.php"><i class="icon-group icon-3x"></i><br> Customers</a>     
<a href="supplier.php"><i class="icon-group icon-3x"></i><br> Suppliers</a>     


<div class="clearfix"></div>
</div>
</div>
</div>
</div>
<?php
}
if($position=='admin') {
?>
	
	<div class="container-fluid">
      <div class="row-fluid">
	<div class="span2">
          <div class="sidebar-nav">
                     <ul class="nav nav-list">
              <li class="active"><a href="#"><i class="icon-dashboard icon-1x"></i> Dashboard </a></li> 
			<li><a href="sales.php?id=cash&invoice=<?php echo $finalcode ?>"><i class="icon-shopping-cart icon-2x"></i> Sales</a>  </li>             
			<li><a href="products.php"><i class="icon-list-alt icon-2x"></i> Foods</a>                                     </li>
			<li><a href="customer.php"><i class="icon-group icon-2x"></i> Customers</a>                                    </li>
			<li><a href="supplier.php"><i class="icon-group icon-2x"></i> Suppliers</a>                                    </li>
			<li><a href="stocks.php"><i class="icon-bar-chart icon-2x"></i> Stocks</a>                                    </li>
			<li><a href="salesreport.php?d1=0&d2=0"><i class="icon-bar-chart icon-2x"></i> Sales Report</a>                </li>
			<li><a href="salesreportanalysis.php?d1=0&d2=0"><i class="icon-bar-chart icon-2x"></i> Sales Analysis</a></li>
			<li><a href="sales_inventory.php"><i class="icon-table icon-2x"></i>Sales Invoice</a>                </li>
			<br><br><br><br><br><br>		
			<li>
			 <div class="hero-unit-clock">
		
			<form name="clock">
			<font color="white">Time: <br></font>&nbsp;<input style="width:150px;" type="submit" class="trans" name="face" value="">
			</form>
			  </div>
			</li>
				</ul>                               
          </div><!--/.well -->
        </div><!--/span-->
	<div class="span10">
	<div class="contentheader">
			<center><i class="icon-dashboard"></i> Dashboard</center>
			</div>
			<br>
		
			
			<!-- <center><font style="font-family: 'AbandoN'; font-size: 250%; text-shadow:5px 3px 5px blue; font-weight: bolder; color: yellow;">F O O D W O R L D</font> </center> -->
		
		
<div id="mainmain">



<a href="sales.php?id=cash&invoice=<?php echo $finalcode ?>"><i class="icon-shopping-cart icon-2x"></i><br> Sales</a>               
<a href="products.php"><i class="icon-list-alt icon-2x"></i><br> Foods</a>      
<a href="customer.php"><i class="icon-group icon-2x"></i><br> Customers</a>     
<a href="supplier.php"><i class="icon-group icon-2x"></i><br> Suppliers</a>
<a href="stocks.php"><i class="icon-list-alt icon-2x"></i><br>Stock</a>     
<a href="salesreport.php?d1=0&d2=0"><i class="icon-bar-chart icon-2x"></i><br> Sales Report</a>
<a href="salesreport.php?d1=0&d2=0"><i class="icon-list-alt icon-2x"></i><br>Sales Analysis</a>
<a href="sales_inventory.php"><i class="icon-list-alt icon-2x"></i><br>Sales Invoice</a>

<a href="../index.php"><font color="red"><i class="icon-off icon-2x"></i></font><br> Logout</a> 
<?php
}
?>
<div class="clearfix"></div>
</div>
</div>
</div>
</div>
</body>
<?php include('footer.php'); ?>
</html>
