$header
	<article class="col-sm-9 col-md-10 col-lg-10">
		<div class="row">
			<header class="col-sm-12 col-md-12 col-lg-12">
				<h2>
					<span class="icon-users2"></span>&nbsp;
					{$lng['admin']['customers']} <small>({$customercount})</small>
				</h2>
			</header>
		</div>

		<div class="row middle">
			<div class="col-sm-3 col-md-3 col-lg-3">
				<if $userinfo['customers_used'] < $userinfo['customers'] || $userinfo['customers'] == '-1'>		
					<a href="{$linker->getLink(array('section' => 'customers', 'page' => $page, 'action' => 'add'))}" class="btn btn-link"><span class="icon-plus"></span> {$lng['admin']['customer_add']}</a>
				</if>
			</div>
			<div class="col-sm-9 col-md-9 col-lg-9">
				<div class="row">
					<form action="{$linker->getLink(array('section' => 'customers'))}" method="post" enctype="application/x-www-form-urlencoded">
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
					<colgroup>
						<col class="col-xs-2 col-sm-2 col-md-3 col-lg-3">
						<col class="col-xs-3 col-sm-2 col-md-2 col-lg-3">
						<col class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
						<col class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
						<col class="col-xs-2 col-sm-2 col-md-2 col-lg-1">
						<col class="col-xs-1 col-sm-2 col-md-1 col-lg-1">
					</colgroup>
					<thead>
						<tr>
							<th>
								{$lng['customer']['name']},
								{$lng['customer']['firstname']}&nbsp;{$arrowcode['c.name']}
							</th>
							<th>
								{$lng['login']['username']}&nbsp;{$arrowcode['c.loginname']}
							</th>
							<th>
								{$lng['admin']['admin']}&nbsp;{$arrowcode['a.loginname']}
							</th>
							<th>{$lng['admin']['lastlogin_succ']}</th>
							<th></th>
							<th>{$lng['panel']['options']}</th>
						</tr>
					</thead>

					<tbody>
						$customers
					</tbody>
			
					<if $pagingcode != ''>
						<tfoot>
							<tr>
								<td colspan="6">{$pagingcode}</td>
							</tr>
						</tfoot>
					</if>
				</table>
			</div>
		</div>

		<div class="row">
			<div class="col-sm-12 col-md-12 col-lg-12">
				<if ($userinfo['customers_used'] < $userinfo['customers'] || $userinfo['customers'] == '-1') && 15 < $userinfo['customers_used'] >
					<a href="{$linker->getLink(array('section' => 'customers', 'page' => $page, 'action' => 'add'))}" class="btn btn-link"><span class="icon-plus"></span> {$lng['admin']['customer_add']}</a>
				</if>
			</div>
		</div>
	</article>
$footer
