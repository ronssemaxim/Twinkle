$header
	<article class="col-sm-9 col-md-10 col-lg-10">
		<div class="row">
			<header class="col-sm-12 col-md-12 col-lg-12">
				<h2>
					<span class="icon-pacman"></span>&nbsp;
					{$lng['admin']['updatecounters']}
				</h2>
			</header>
		</div>

		<div class="row">
			<div class="col-sm-12 col-md-12 col-lg-12">
				<table class="table table-responsive" id="settings_overview">
					<thead>
						<tr>
							<th colspan="2">{$lng['admin']['customers']}</th>
						</tr>
					</thead>
					{$customers}
					
					<thead>
						<tr>
							<th colspan="2">{$lng['admin']['admins']}</th>
						</tr>
					</thead>
					{$admins}
				</table>
			</div>
		</div>
	</article>
$footer
