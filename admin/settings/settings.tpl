	<article class="col-sm-9 col-md-10 col-lg-10">
		<div class="row">
			<header class="col-sm-12 col-md-12 col-lg-12">
				<h2>
					<a href="#" id="articlehead"></a><span class="icon-cogs"></span>&nbsp;
					{$lng['admin']['serversettings']}&nbsp;
					<small>
						[<a href="$filename?page=overview&amp;part=&amp;s=$s">{$lng['admin']['configfiles']['compactoverview']}
						</a>]
					</small>
				</h2>
			</header>
		</div>
		
		<div class="row">
			<div class="col-sm-12 col-md-12 col-lg-12">
				<table class="table table-responsive">
					<colgroup>
						<col class="col-xs-6">
						<col class="col-xs-6">
					</colgroup>
					$fields
					<tfoot>
						<tr>
							<td colspan="2" style="text-align:right;">
								<input type="submit" class="btn btn-primary" value="{$lng['panel']['save']}" />
							</td>
						</tr>
					</tfoot>
				</table>
			</div>
		</div>
	</article>
