$header
	<article class="col-sm-9 col-md-10 col-lg-10">
		<div class="row">
			<header class="col-sm-12 col-md-12 col-lg-12">
				<h2>
					<a href="#" id="articlehead"></a><span class="icon-drawer3"></span>&nbsp;
					{$lng['menue']['mysql']['databases']} <small>({$mysqls_count})</small>
					<small class="pull-right">
						<a href="#" id="helpbtn" title="{$lng['menue']['mysql']['mysql']}" data-html="true" data-toggle="popover" data-placement="bottom" data-original-title="{$lng['menue']['mysql']['mysql']}" data-content="{$lng['mysql']['description']}"><span class="icon-question2"></span></a>
					</small>
				</h2>
			</header>
		</div>

		<div class="row middle">
			<div class="col-sm-3 col-md-3 col-lg-3">
				<if ($userinfo['mysqls_used'] < $userinfo['mysqls'] || $userinfo['mysqls'] == '-1') >
					<a href="{$linker->getLink(array('section' => 'mysql', 'page' => 'mysqls', 'action' => 'add'))}" class="btn btn-link"><span class="icon-plus"></span> {$lng['mysql']['database_create']}</a>
				</if>
			</div>

			<div class="col-sm-9 col-md-9 col-lg-9">
				<div class="row">
					<form action="{$linker->getLink(array('section' => 'mysql'))}" method="post" enctype="application/x-www-form-urlencoded">
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
								<th>{$lng['mysql']['databasename']}&nbsp;{$arrowcode['databasename']}</th>
								<th>{$lng['mysql']['databasedescription']}&nbsp;{$arrowcode['description']}</th>
								<th>{$lng['mysql']['size']}</th>
								<if 1 < count($sql_root)><th>{$lng['mysql']['mysql_server']}</th></if>
								<th>{$lng['panel']['options']}</th>
							</tr>
						</thead>
						<tbody>
							{$mysqls}
						</tbody>
						<if $pagingcode != ''>
							<tfoot id="pagination">
								<tr>
									<td colspan="5">{$pagingcode}</td>
								</tr>
							</tfoot>
						</if>
					</table>
				</div>
			</div>
		</div>

		<div class="row">
			<div class="col-sm-12 col-md-12 col-lg-12">
				<if ($userinfo['mysqls_used'] < $userinfo['mysqls'] || $userinfo['mysqls'] == '-1') && 15 < $mysqls_count >
					<div class="overviewadd">
						<a href="{$linker->getLink(array('section' => 'mysql', 'page' => 'mysqls', 'action' => 'add'))}" class="btn btn-link"><span class="icon-plus"></span> {$lng['mysql']['database_create']}</a>
					</div>
				</if>
			</div>
		</div>
	</article>
$footer

