$header
	<article class="col-sm-9 col-md-10 col-lg-10">
		<div class="row">
			<header class="col-sm-12 col-md-12 col-lg-12">
				<h2>
					<a href="#" id="articlehead"></a><span class="icon-stats"></span>&nbsp;
					{$lng['menue']['traffic']['traffic']}
				</h2>
			</header>
		</div>

		<div class="row">
			<div class="col-sm-12 col-md-12 col-lg-12">
				<form action="{$linker->getLink(array('section' => 'traffic'))}" method="post" enctype="application/x-www-form-urlencoded">
					<div class="table-responsive">
						<table class="table">
							<tr>
								<th>{$lng['traffic']['sumftp']} GB</th>
								<th>{$lng['traffic']['sumhttp']} GB</th>
								<th>{$lng['traffic']['summail']} GB</th>
							</tr>
							<tr>
								<td><div >{$traffic_complete['ftp']}</div></td>
								<td><div >{$traffic_complete['http']}</div></td>
								<td><div >{$traffic_complete['mail']}</div></td>
							</tr>
						</table>
					</div>
					
					<div class="table-responsive">
						<table class="table" id="datatable">
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
					</div>
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
