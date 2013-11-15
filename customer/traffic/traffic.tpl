$header
	<article class="col-sm-9 col-md-10 col-lg-10">
		<div class="row">
			<header class="col-sm-12 col-md-12 col-lg-12">
				<h2>
					<span class="icon-stats"></span>&nbsp;
					{$lng['menue']['traffic']['traffic']}
				</h2>
			</header>
		</div>

		<div class="row">
			<div class="col-sm-12 col-md-12 col-lg-12">
				<form action="{$linker->getLink(array('section' => 'traffic'))}" method="post" enctype="application/x-www-form-urlencoded">
					<table class="table table-responsive">
						<tr>
							<th>{$lng['traffic']['sumftp']} GB</th>
							<th>{$lng['traffic']['sumhttp']} GB</th>
							<th>{$lng['traffic']['summail']} GB</th>
						</tr>
						<tr>
							<td><div style="color:#019522;">{$traffic_complete['ftp']}</div></td>
							<td><div style="color:#0000FF;">{$traffic_complete['http']}</div></td>
							<td><div style="color:#800000;">{$traffic_complete['mail']}</div></td>
						</tr>
					</table>

					<table class="table table-responsive" id="datatable">
						<tr id="datalegend">
							<th>{$lng['traffic']['month']}</td>
							<th>{$lng['traffic']['ftp']}</th>
							<th>{$lng['traffic']['http']}</th>
							<th>{$lng['traffic']['mail']}</th>
							<th class="text-align:right;">{$lng['customer']['traffic']}</th>
							<th></th>
						</tr>
						$traffic
					</table>
				</form>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-12 col-md-12 col-lg-12">
				<div id="chartdiv" style="height:300px;width:100%"></div>
			</div>
		</div>
	</article>
$footer
