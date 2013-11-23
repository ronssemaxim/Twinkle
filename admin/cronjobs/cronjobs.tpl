$header
	<article class="col-sm-9 col-md-10 col-lg-10">
		<div class="row">
			<header class="col-sm-12 col-md-12 col-lg-12">
				<h2>
					<a href="#" id="articlehead"></a><span class="icon-clock3"></span>&nbsp;
					{$lng['admin']['cron']['cronsettings']}
				</h2>
			</header>
		</div>

		<div class="row">
			<div class="col-sm-12 col-md-12 col-lg-12">

				<div class="alert alert-danger fade in">
					<h4><span class="icon-info"></span> {$lng['admin']['warning']}</h4>
					<p>{$lng['cron']['changewarning']}</p>
				</div>
				
				<div class="table-responsive">
					<table class="table table-hover">
						<thead>
							<tr>
								<th>{$lng['cron']['description']}</th>
								<th>{$lng['cron']['lastrun']}</th>
								<th>{$lng['cron']['interval']}</th>
								<th>{$lng['cron']['isactive']}</th>
								<th>{$lng['panel']['options']}</th>
							</tr>
						</thead>
						<tbody>
							$crons
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</article>
$footer
