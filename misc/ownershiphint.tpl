<!-- 

  these are not the droids you're looking for.
                                                                       
    	.-.
       /_ _\
       |o^o|
       \ _ /
      .-'-'-.
    /`)  .  (`\
   / /|.-'-.|\ \
   \ \| (_) |/ /  .-""-.
    \_\'-.-'/_/  /[] _ _\
    /_/ \_/ \_\ _|_o_LII|_
      |'._.'|  / | ==== | \
      |  |  |  |_| ==== |_|
       \_|_/    ||" ||  ||
       |-|-|    ||LI  o ||
       |_|_|    ||'————'||
      /_/ \_\  /__|    |__\


-->

<!DOCTYPE html>
<html lang="en">
<head>
	<head>
	<meta charset="utf-8" />
	<meta http-equiv="Default-Style" content="text/css" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="robots" content="noindex, nofollow, noarchive" />
	<meta name="GOOGLEBOT" content="nosnippet" />

	<link rel="stylesheet" href="templates/Twinkle/css/latest/bootstrap.min.css" type="text/css" media="all">
	<link rel="stylesheet" href="templates/Twinkle/css/twinkle.css" type="text/css" media="all" />

	<link href="templates/Twinkle/favicon.ico" rel="icon" type="image/x-icon" />
	
	<title>Configuration Error - Froxlor Server Management Panel</title>
</head>
<body>
	<article class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
		<div class="row">
			<header class="col-xs-12 col-sm-10 col-md-8 col-lg-5 col-sm-offset-1 col-md-offset-2 col-lg-offset-3 text-center">
				<p>
					<img src="templates/Twinkle/assets/img/logo.png" alt="Froxlor Server Management Panel" />
				</p>
			</header>
		</div>

		<div class="row">
			<div class="col-xs-12 col-sm-10 col-md-8 col-lg-5 col-sm-offset-1 col-md-offset-2 col-lg-offset-3 panel">
				<div class="alert alert-danger fade in">
					<h4><span class="icon-error"></span> The configuration file <b>lib/userdata.inc.php</b> cannot be read from the webserver.</h4>
					<p>&nbsp;</p>
					<p>This mostly happens due to wrong ownership.<br />Try the following command to correct the ownership:</p>
					<p>&nbsp;</p>
					<p><pre>chown -R <USER>:<GROUP> <FROXLOR_INSTALL_DIR></pre></p>
					<p>
						<a class="btn btn-danger" href="../index.php" title="Click to go to the login page">Go to login</a>
					</p>
				</div>	
			</div>
		</div>
	</article>

	<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
	<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/jquery-ui.min.js"></script>

	<script>
	  // CDN Fallback
	  if(typeof jQuery == 'undefined') { 
	    document.write(unescape('%3Cscript src="templates/Twinkle/js/latest/jquery.min.js"%3E%3C/script%3E'));
	    document.write(unescape('%3Cscript src="templates/Twinkle/js/stable/jquery-ui.min.js"%3E%3C/script%3E'));
	  }
	</script>
	<script type="text/javascript" src="js/jquery.tablesorter.min.js"></script>
	<script type="text/javascript" src="templates/Twinkle/js/latest/bootstrap.min.js"></script>
	<script type="text/javascript" src="templates/Twinkle/js/stable/jquery-passy.js"></script> 

	<script type="text/javascript" src="templates/Twinkle/js/twinkle.js"></script> 
</body>
</html>