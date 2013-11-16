$header
	<article class="col-sm-9 col-md-10 col-lg-10">
		<div class="row">
			<header class="col-sm-12 col-md-12 col-lg-12">
				<h2>
					<a href="#" id="articlehead"></a><span class="icon-stats"></span>&nbsp;
					{$lng['menue']['traffic']['traffic']} $show
				</h2>
			</header>
		</div>

		<div class="row">
			<div class="col-sm-12 col-md-12 col-lg-12">
				<form action="{$linker->getLink(array('section' => 'traffic'))}" method="post" enctype="application/x-www-form-urlencoded">
					<table class="table table-responsive">
						<tr>
							<td>{$lng['traffic']['sumftp']} MB</td>
							<td>{$lng['traffic']['sumhttp']} MB</td>
							<td>{$lng['traffic']['summail']} MB</td>
						</tr>
						<tr>
							<td><div style="color:#019522;text-align:center">{$traffic_complete['ftp']}</div></td>
							<td><div style="color:#0000FF;text-align:center">{$traffic_complete['http']}</div></td>
							<td><div style="color:#800000;text-align:center">{$traffic_complete['mail']}</div></td>
						</tr>
					</table>

					<table class="table table-responsive" id="datatable">
						<tr id="datalegend">
							<td>{$lng['traffic']['day']}</td>
							<td>{$lng['traffic']['ftp']}</td>
							<td>{$lng['traffic']['http']}</td>
							<td>{$lng['traffic']['mail']}</td>
							<td>{$lng['traffic']['mb']}</td>
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
