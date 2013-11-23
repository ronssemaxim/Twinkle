$header
	<article class="col-sm-9 col-md-10 col-lg-10">
		<div class="row">
			<header class="col-sm-12 col-md-12 col-lg-12">
				<h2>
					<a href="#" id="articlehead"></a><span class="icon-cogs"></span>&nbsp;
					{$lng['menue']['extras']['pathoptions']}
				</h2>
			</header>
		</div>

		<div class="row middle">
			<div class="col-sm-3 col-md-3 col-lg-3">
				<a href="{$linker->getLink(array('section' => 'extras', 'page' => 'htaccess', 'action' => 'add'))}" class="btn btn-link"><span class="icon-plus"></span> {$lng['extras']['pathoptions_add']}</a>
			</div>

			<div class="col-sm-9 col-md-9 col-lg-9">
				<div class="row">
					<form action="{$linker->getLink(array('section' => 'extras'))}" method="post" enctype="application/x-www-form-urlencoded">
						{$searchcode}
						<input type="hidden" name="s" value="$s" />
						<input type="hidden" name="page" value="$page" />
					</form>
				</div>
			</div>
		</div>

		<div class="row">
			<div class="col-sm-12 col-md-12 col-lg-12">
				<div class="table-responsive">
					<table class="table">
						<thead>
							<tr>
								<th>{$lng['panel']['path']}&nbsp;{$arrowcode['path']}</th>
								<th>{$lng['extras']['view_directory']}&nbsp;{$arrowcode['options_indexes']}</th>
								<th>{$lng['extras']['error404path']}&nbsp;{$arrowcode['error404path']}</th>
								<th>{$lng['extras']['error403path']}&nbsp;{$arrowcode['error403path']}</th>
								<th>{$lng['extras']['error500path']}&nbsp;{$arrowcode['error500path']}</th>
								<if $cperlenabled == 1 >
								<th>{$lng['extras']['execute_perl']}&nbsp;{$arrowcode['options_cgi']}</th>
								</if>
								<th>{$lng['panel']['options']}</th>
							</tr>
						</thead>
						<tbody>
							{$htaccess}
						</tbody>
						<if $pagingcode != ''>
							<tfoot id="pagination">
								<tr>
									<td colspan="7">{$pagingcode}</td>
								</tr>
							</tfoot>
						</if>
					</table>
				</div>
			</div>
		</div>

		<div class="row">
			<div class="col-sm-12 col-md-12 col-lg-12">
				<if 15 < $count >
					<div class="overviewadd">
						<a href="{$linker->getLink(array('section' => 'extras', 'page' => 'htaccess', 'action' => 'add'))}" class="btn btn-link"><span class="icon-plus"></span> {$lng['extras']['pathoptions_add']}</a>
					</div>
				</if>
			</div>
		</div>
	</article>
$footer

