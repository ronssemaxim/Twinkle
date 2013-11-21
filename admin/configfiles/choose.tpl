$header
	<article class="col-sm-9 col-md-10 col-lg-10">
		<div class="row">
			<header class="col-sm-12 col-md-12 col-lg-12">
				<h2>
					<a href="#" id="articlehead"></a><span class="icon-cog"></span>&nbsp;
					{$lng['admin']['configfiles']['serverconfiguration']}&nbsp;
					<small>
						[<a href="{$linker->getLink(array('section' => 'configfiles', 'page' => 'configfiles'))}">{$lng['admin']['configfiles']['wizard']}</a>]
					</small>
				</h2>
			</header>
		</div>


		<div class="row">
			<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">					
				$distributions
			</div>
		</div>
	</article>
$footer
