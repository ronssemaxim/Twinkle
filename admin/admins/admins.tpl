$header
	<article class="col-sm-9 col-md-10 col-lg-10">
		<div class="row">
			<header class="col-sm-12 col-md-12 col-lg-12">
				<h2>
					<a href="#" id="articlehead"></a><span class="icon-users3"></span>&nbsp;
					{$lng['admin']['admins']} <small>({$admincount})</small>
				</h2>
			</header>
		</div>

		<div class="row middle">
			<div class="col-sm-3 col-md-3 col-lg-3">
				<a href="{$linker->getLink(array('section' => 'admins', 'page' => $page, 'action' => 'add'))}" class="btn btn-link"><span class="icon-plus"></span> {$lng['admin']['admin_add']}</a>
			</div>

			<div class="col-sm-9 col-md-9 col-lg-9">
				<div class="row">
					<form action="{$linker->getLink(array('section' => 'admins'))}" method="post" enctype="application/x-www-form-urlencoded">
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
								<th>
									{$lng['customer']['name']}&nbsp;{$arrowcode['name']}
								</th>
								<th>
									{$lng['login']['username']}&nbsp;{$arrowcode['loginname']}
								</th>
								<th>{$lng['admin']['customers']}</th>
								<th>&nbsp;</th>
								<th>{$lng['panel']['options']}</th>
							</tr>
						</thead>
						<tbody>
							$admins
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
				<if 15 < $count >
					<a href="{$linker->getLink(array('section' => 'admins', 'page' => $page, 'action' => 'add'))}" class="btn btn-link"><span class="icon-plus"></span> {$lng['admin']['admin_add']}</a>
				</if>
			</div>
		</div>
	</article>
$footer