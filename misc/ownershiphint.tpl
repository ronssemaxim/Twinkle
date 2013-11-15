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
	<meta charset="utf-8" />
	<meta http-equiv="Default-Style" content="text/css" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<if $settings['panel']['no_robots'] == '0'>
		<meta name="robots" content="noindex, nofollow, noarchive" />
		<meta name="GOOGLEBOT" content="nosnippet" />
	</if>

	<if $settings['panel']['use_webfonts'] == '1'>
		<link href="//fonts.googleapis.com/css?family={$settings['panel']['webfont']}" rel="stylesheet">
	</if>
	<link rel="stylesheet" href="templates/{$theme}/css/bootstrap.min.css" type="text/css" media="all">
	<link rel="stylesheet" href="css/theme.bootstrap.css" type="text/css" media="all">
	<link rel="stylesheet" href="templates/{$theme}/css/twinkle.css" type="text/css" media="all" />
	<!--[if IE]><link rel="stylesheet" href="templates/{$theme}/css/main_ie.css" type="text/css" /><![endif]-->
	<link href="templates/{$theme}/favicon.ico" rel="icon" type="image/x-icon" />
	
	<title>Database error - Froxlor Server Management Panel</title>

	<style type="text/css">
	body {
        font-family: <if $settings['panel']['use_webfonts'] == '1'>{$webfont},</if> Verdana, Geneva, sans-serif;
	}
	</style>
</head>
<body>
	<article class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
		<div class="row">
			<header class="col-xs-12 col-sm-10 col-md-8 col-lg-5 col-sm-offset-1 col-md-offset-2 col-lg-offset-3 text-center">
				<p>
					<img src="{$header_logo}" alt="Froxlor Server Management Panel" />
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
						<a href="../index.php" title="Click to go to the login page">Go to login</a>
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
	    document.write(unescape('%3Cscript src="templates/{$theme}/js/libs/jquery.min.js"%3E%3C/script%3E'));
	    document.write(unescape('%3Cscript src="templates/{$theme}/js/libs/jquery-ui.min.js"%3E%3C/script%3E'));
	  }
	</script>
	<script type="text/javascript" src="templates/{$theme}/js/libs/bootstrap.min.js"></script> 
</body>
</html>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<meta http-equiv="Default-Style" content="text/css" />
	<link rel="stylesheet" href="templates/Sparkle/assets/css/main.css" />
	<!--[if IE]><link rel="stylesheet" href="templates/Sparkle/assets/css/main_ie.css" /><![endif]-->
	<!--[if lt IE 9]><script src="js/html5shiv.js"></script><![endif]-->
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="templates/Sparkle/assets/js/main.js"></script>
	<link href="templates/Sparkle/assets/img/favicon.ico" rel="icon" type="image/x-icon" />
	<title>Froxlor Server Management Panel - Installation</title>
	<style type="text/css">
	body {
        font-family: Verdana, Geneva, sans-serif;
	}
	</style>
</head>
<body>
<div class="loginpage">
	
	<article class="login bradius">
		<header class="dark">
			<img src="templates/Sparkle/assets/img/logo.png" alt="Froxlor Server Management Panel" />
		</header>

		<section class="loginsec">
			<div class="errorcontainer bradius">
				<div class="errortitle">Whoops!</div>
				<div class="error">
					<p>The configuration file <b>lib/userdata.inc.php</b> cannot be read from the webserver.</p>
					<p>&nbsp;</p>
					<p>This mostly happens due to wrong ownership.<br />Try the following command to correct the ownership:</p>
					<p>&nbsp;</p>
					<p><pre>chown -R <USER>:<GROUP> <FROXLOR_INSTALL_DIR></pre></p>
				</div>
			</div>
			<aside class="right">
				<a href="index.php" title="Click to refresh">Refresh</a>
			</aside>
		</section>

	</article>

</div>
<footer>
	<span>
		Froxlor &copy; 2009-2013 by <a href="http://www.froxlor.org/" rel="external">the Froxlor Team</a>
	</span>
</footer>
</body>
</html>
