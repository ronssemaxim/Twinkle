$header
	<article class="col-sm-9 col-md-10 col-lg-10">
		<div class="row">
			<header class="col-sm-12 col-md-12 col-lg-12">
				<h2>
					<span class="icon-cog"></span>&nbsp;
					{$lng['admin']['configfiles']['serverconfiguration']}&nbsp;
					<small>
						[<a href="{$linker->getLink(array('section' => 'configfiles', 'page' => 'configfiles'))}">{$lng['admin']['configfiles']['wizard']}</a>]
					</small>
				</h2>
			</header>
		</div>


		<div class="row">
			<div class="col-sm-12 col-md-12 col-lg-12">				
				<form action="{$linker->getLink(array('section' => 'configfiles'))}" method="get" enctype="application/x-www-form-urlencoded">
					<table class="table table-responsive">
						$distributions
					</table>

					<input type="hidden" name="s" value="$s" />
					<input type="hidden" name="page" value="$page" />
				</form>
			</div>
		</div>
	</article>
$footer
