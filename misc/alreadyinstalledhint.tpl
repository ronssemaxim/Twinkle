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
	
	<title>Installation - Froxlor Server Management Panel</title>

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
				<div class="alert alert-success fade in">
					<h4><span class="icon-error"></span> Welcome to Froxlor</h4>
					<p>It seems that Froxlor has already been configured.</p>
					<p>Click on the link below to go to the login page.</p>
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
