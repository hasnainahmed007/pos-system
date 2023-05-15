 <head>
 <link rel="stylesheet" href="main/font/font.css">
 <link rel="stylesheet" href="main/css/font-awesome.min.css">
 
 </head>

 <div class="navbar navbar-inverse navbar-fixed-top" style="font-family: 'AbandoN'; font-size: 90%;text-shadow:1px 1px 15px #000; color:black; background-color: gray;">
      <div class="navbar-inner">
        <div class="container-fluid">
          <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </a>
		  
           <a class="brand" href="#"><font style="font-family: 'AbandoN'; font-size: 180%; text-shadow:10px 2px 4px #7a7a52; color:#fff800;">F O O D W O R L D</font></a>
          <div class="nav-collapse collapse">
<ul class="nav navbar-nav navbar-right" style="float:right;">
       <li><a><i class="icon-user icon-large"></i> Welcome:<strong> <?php echo $_SESSION['SESS_LAST_NAME'];?></strong></a></li>
       <li><a> <i class="icon-calendar icon-large"></i>
                <?php
                $Today = date('y:m:d',mktime(0, 0, 0, 12, 1, 2022));
                $new = date('l, F d, Y', strtotime($Today));
                echo $new;
                ?>

        </a></li>
              
      <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="../index.php"><font color="red"><i class="icon-off icon-large"></i></font> Log Out</a></li>
    </ul>
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>
	