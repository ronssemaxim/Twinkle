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
	<link rel="stylesheet" href="templates/{$theme}/css/latest/bootstrap.min.css" type="text/css" media="all">
	<link rel="stylesheet" href="templates/{$theme}/css/twinkle.css" type="text/css" media="all" />

	<link href="templates/{$theme}/favicon.ico" rel="icon" type="image/x-icon" />
	
	<title><if isset($userinfo['loginname']) && $userinfo['loginname'] != ''>{$userinfo['loginname']} - </if>Froxlor Server Management Panel</title>
</head>
<body>

<if isset($userinfo['loginname'])>
	<header>
		<div class="container container-full">
			<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="{$linker->getLink(array('section' => 'index'))}" title="{$lng['panel']['dashboard']}">
						<img src="{$header_logo}" class="header-logo" alt="Froxlor Server Management Panel" />
					</a>
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse" id="bs-navbar-collapse-1">
					<ul class="nav navbar-nav navbar-right">
						<if $settings['ticket']['enabled'] == 1>
							<li>
								<a href="{$linker->getLink(array('section' => 'tickets', 'page' => 'tickets'))}">
									<span class="icon-envelop" alt="{$lng['menue']['ticket']['ticket']}" /></span> 
									<if 0 < $awaitingtickets>
										<span class="badge badge-important">{$awaitingtickets}</span>
									</if>
								</a>
							</li>
						</if>
						<li><a href="{$linker->getLink(array('section' => 'index'))}"><span class="icon-home3"></span> {$lng['panel']['dashboard']}</a></li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="icon-user3"></span> {$userinfo['loginname']} <b class="caret"></b></a>
							<ul class="dropdown-menu">
								<!-- PASSWORD -->
								<li><a href="{$linker->getLink(array('section' => 'index', 'page' => 'change_password'))}"><span class="icon-lock3"></span> {$lng['login']['password']}</a></li>

								<!-- LANGUAGE -->	
								<li><a href="{$linker->getLink(array('section' => 'index', 'page' => 'change_language'))}"><span class="icon-flag"></span> {$lng['login']['language']}</a></li>

								<if $settings['panel']['allow_theme_change_admin'] == '1' && $userinfo['adminsession'] == 1>
									<!-- THEME -->
									<li>
										<a href="{$linker->getLink(array('section' => 'index', 'page' => 'change_theme'))}"><span class="icon-insert-template"></span> {$lng['panel']['theme']}</a>
									</li>
								</if>
								<if $settings['panel']['allow_theme_change_customer'] == '1' && $userinfo['adminsession'] == 0>
									<!-- THEME -->
									<li>
										<a href="{$linker->getLink(array('section' => 'index', 'page' => 'change_theme'))}"><span class="icon-insert-template"></span> {$lng['panel']['theme']}</a>
									</li>
								</if>
								<li class="divider"></li>
								<!-- LOGOUT -->
								<li><a href="{$linker->getLink(array('section' => 'index', 'action' => 'logout'))}"><span class="icon-exit"></span> {$lng['login']['logout']}</a></li>
							</ul>
						</li>
					</ul>
				</div><!-- /.navbar-collapse -->
			</nav>
		</div>
	</header>
	<section class="container container-full">
		<div class="row">
			<nav class="col-sm-3 col-md-2 col-lg-2">
					$navigation
			</nav>
</if>
