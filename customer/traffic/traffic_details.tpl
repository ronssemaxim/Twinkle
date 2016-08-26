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
							<th>{$lng['traffic']['sumftp']} MB</th>
							<th>{$lng['traffic']['sumhttp']} MB</th>
							<th>{$lng['traffic']['summail']} MB</th>
						</tr>
						<tr>
							<td><div >{$traffic_complete['ftp']}</div></td>
							<td><div >{$traffic_complete['http']}</div></td>
							<td><div >{$traffic_complete['mail']}</div></td>
						</tr>
					</table>

					<table class="table table-responsive" id="datatable">
						<tr id="datalegend">
							<th>{$lng['traffic']['day']}</th>
							<th>{$lng['traffic']['ftp']}</th>
							<th>{$lng['traffic']['http']}</th>
							<th>{$lng['traffic']['mail']}</th>
							<th>{$lng['traffic']['mb']}</th>
						</tr>
						$traffic
					</table>
				</form>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-12 col-md-12 col-lg-12">
				<div id="chartdiv" ></div>
			</div>
		</div>
	</article>
$footer
