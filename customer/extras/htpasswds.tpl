$header
	<article class="col-sm-9 col-md-10 col-lg-10">
		<div class="row">
			<header class="col-sm-12 col-md-12 col-lg-12">
				<h2>
					<span class="icon-cogs"></span>&nbsp;
					{$lng['menue']['extras']['directoryprotection']}
				</h2>
			</header>
		</div>

		<div class="row middle">
			<div class="col-sm-3 col-md-3 col-lg-3">
				<a href="{$linker->getLink(array('section' => 'extras', 'page' => 'htpasswds', 'action' => 'add'))}" class="btn btn-link"><span class="icon-plus"></span> {$lng['extras']['directoryprotection_add']}</a>
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
				<table class="table table-responsive">
					<thead>
						<tr>
							<th>{$lng['login']['username']}&nbsp;{$arrowcode['username']}</th>
							<th>{$lng['panel']['path']}&nbsp;{$arrowcode['path']}</th>
							<th>{$lng['panel']['options']}</th>
						</tr>
					</thead>
					<if $pagingcode != ''>
						<tfoot>
							<tr>
								<td colspan="3">{$pagingcode}</td>
							</tr>
						</tfoot>
					</if>
					<tbody>
						{$htpasswds}
					</tbody>
				</table>
			</div>
		</div>

		<div class="row">
			<div class="col-sm-12 col-md-12 col-lg-12">
				<if 15 < $count >
					<div class="overviewadd">
						<a href="{$linker->getLink(array('section' => 'extras', 'page' => 'htpasswds', 'action' => 'add'))}" class="btn btn-link"><span class="icon-plus"></span> {$lng['extras']['directoryprotection_add']}</a>
					</div>
				</if>
			</div>
		</div>
	</article>
$footer

