	<article class="col-sm-9 col-md-10 col-lg-10">
		<div class="row">
			<header class="col-sm-12 col-md-12 col-lg-12">
				<h2>
					<span class="icon-cogs"></span>&nbsp;
					{$lng['admin']['serversettings']}&nbsp;
					<small>
						[<a href="$filename?page=overview&amp;part=all&amp;s=$s">{$lng['admin']['configfiles']['overview']}
						</a>]
					</small>
				</h2>
			</header>
		</div>
		
		<div class="row">
			<div class="col-sm-12 col-md-12 col-lg-12">
				<table class="table table-responsive" id="settings_overview">
					<colgroup>
						<col class="col-xs-5">
						<col class="col-xs-5">
						<col class="col-xs-2">
					</colgroup>
					<thead>
						<tr>
							<th colspan="3" style="text-align:right;">
								<input type="submit" class="btn btn-primary" value="{$lng['panel']['save']}" />
							</th>
						</tr>
					</thead>
					<tbody>
						$fields
					</tbody>
					<tfoot>
						<tr>
							<td colspan="3" style="text-align:right;">
								<input type="submit" class="btn btn-primary" value="{$lng['panel']['save']}" />
							</td>
						</tr>
					</tfoot>
				</table>
			</div>
		</div>
	</article>
