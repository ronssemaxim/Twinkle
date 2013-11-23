$header
	<article class="col-sm-9 col-md-10 col-lg-10">
		<div class="row">
			<header class="col-sm-12 col-md-12 col-lg-12">
				<h2>
					<a href="#" id="articlehead"></a><span class="icon-pacman"></span>&nbsp;
					{$lng['admin']['updatecounters']}
				</h2>
			</header>
		</div>

		<div class="row">
			<div class="col-sm-12 col-md-12 col-lg-12" id="settings_overview">
				<div class="row">
						
					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 visible-xs visible-sm">
						<div class="panel panel-default">
							<div class="panel-body">
								Jump to: <a href="#{$lng['admin']['customers']}">{$lng['admin']['customers']}</a> | <a href="#{$lng['admin']['admins']}">{$lng['admin']['admins']}</a>
							</div>
						</div>
					</div>
					<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
						<h3><a href="#" id="{$lng['admin']['customers']}"></a>{$lng['admin']['customers']}</h3>
						<div class="list-group">
							{$customers}
						</div>
					</div>
						
					<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
						<h3><a href="#" id="{$lng['admin']['admins']}"></a>{$lng['admin']['admins']}</h3>
						<div class="list-group">
							{$admins}
						</div>
					</div>
				</div>
			</div>
		</div>
	</article>
$footer
