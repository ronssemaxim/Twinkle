$header
	<article class="col-sm-9 col-md-10 col-lg-10">
		<div class="row">
			<header class="col-sm-12 col-md-12 col-lg-12">
				<h2>
					<a href="#" id="articlehead"></a><span class="icon-users2"></span>&nbsp;
					{$lng['menue']['ftp']['accounts']} <small>({$ftps_count})</small>

					<small class="pull-right">
						<a href="#" id="helpbtn" title="{$lng['menue']['ftp']['ftp']}" data-html="true" data-toggle="popover" data-placement="bottom" data-original-title="{$lng['menue']['ftp']['ftp']}" data-content="{$lng['ftp']['description']}"><span class="icon-question2"></span></a>
					</small>
				</h2>
			</header>
		</div>

		<div class="row middle">
			<div class="col-sm-3 col-md-3 col-lg-3">
				<if ($userinfo['ftps_used'] < $userinfo['ftps'] || $userinfo['ftps'] == '-1') >
					<a href="{$linker->getLink(array('section' => 'ftp', 'page' => 'accounts', 'action' => 'add'))}" class="btn btn-link"><span class="icon-plus"></span> {$lng['ftp']['account_add']}</a>
				</if>
			</div>

			<div class="col-sm-9 col-md-9 col-lg-9">
				<div class="row">
					<form action="{$linker->getLink(array('section' => 'ftp'))}" method="post" enctype="application/x-www-form-urlencoded">
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
								<th>{$lng['login']['username']}&nbsp;{$arrowcode['username']}</th>
								<th>{$lng['panel']['path']}&nbsp;{$arrowcode['homedir']}</th>
								<th>{$lng['panel']['options']}</th>
							</tr>
						</thead>
						<tbody>
							{$accounts}
						</tbody>
						<if $pagingcode != ''>
							<tfoot id="pagination">
								<tr>
									<td colspan="3">{$pagingcode}</td>
								</tr>
							</tfoot>
						</if>
					</table>
				</div>
			</div>
		</div>

		<div class="row">
			<div class="col-sm-12 col-md-12 col-lg-12">
				<if ($userinfo['ftps_used'] < $userinfo['ftps'] || $userinfo['ftps'] == '-1') && 15 < $ftps_count >
					<a href="{$linker->getLink(array('section' => 'ftp', 'page' => 'accounts', 'action' => 'add'))}" class="btn btn-link"><span class="icon-plus"></span> {$lng['ftp']['account_add']}</a>
				</if>
			</div>
		</div>
	</article>
$footer

