$header
	<article class="col-sm-9 col-md-10 col-lg-10">
		<div class="row">
			<header class="col-sm-12 col-md-12 col-lg-12">
				<h2>
					<a href="#" id="articlehead"></a><span class="icon-cog"></span>&nbsp;
					{$dist_display}
					<small>
						[<a href="{$linker->getLink(array('section' => 'configfiles', 'page' => $page, 'distribution' => $distribution, 'service' => $service))}">{$lng['panel']['back']}</a>]
					</small>
				</h2>
			</header>
		</div>

		<div class="row">
			<div class="col-sm-12 col-md-12 col-lg-12">
				<ol class="breadcrumb">
				  <li>{$dist_display}</li>
				  <li>{$services[$service]->title}</li>
				  <li class="active">{$daemons[$daemon]->title}</li>
				</ol>
			</div>
		</div>

		<div class="row">
			<div class="col-sm-12 col-md-12 col-lg-12">
					{$configpage}
			</div>
		</div>
	</article>
$footer
