$header
	<article class="col-sm-9 col-md-10 col-lg-10">
		<div class="row">
			<header class="col-sm-12 col-md-12 col-lg-12">
				<h2>
					<a href="#" id="articlehead"></a><span class="icon-mail3"></span>&nbsp;
					{$lng['menue']['email']['emails']} <small>({$emailscount})</small>
				</h2>
			</header>
		</div>

		<div class="row middle">
			<div class="col-sm-3 col-md-3 col-lg-3">
				<if ($userinfo['emails_used'] < $userinfo['emails'] || $userinfo['emails'] == '-1') && $emaildomains_count !=0 >
					<a href="{$linker->getLink(array('section' => 'email', 'page' => $page, 'action' => 'add'))}" class="btn btn-link"><span class="icon-plus"></span> {$lng['emails']['emails_add']}</a>
				</if>
			</div>

			<div class="col-sm-9 col-md-9 col-lg-9">
				<div class="row">
					<form action="{$linker->getLink(array('section' => 'email'))}" method="post" enctype="application/x-www-form-urlencoded">
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
					<table class="table table">
						<thead>
							<tr>
								<th>{$lng['emails']['emailaddress']}&nbsp;{$arrowcode['m.email_full']}</th>
								<th>{$lng['emails']['forwarders']}&nbsp;{$arrowcode['m.destination']}</th>
								<th>{$lng['emails']['account']}</th>
								<if $settings['catchall']['catchall_enabled'] == '1'>
									<th>{$lng['emails']['catchall']}</th></if>
								<if $settings['system']['mail_quota_enabled'] == '1'>
									<th>{$lng['emails']['quota']}</th>
								</if>
								<th>{$lng['panel']['options']}</th>
							</tr>
						</thead>
						<tbody>
							{$accounts}
						</tbody>
						<if $pagingcode != ''>
							<tfoot id="pagination">
								<tr>
									<td colspan="6">{$pagingcode}</td>
								</tr>
							</tfoot>
						</if>
					</table>
				</div>
			</div>
		</div>

		<div class="row">
			<div class="col-sm-12 col-md-12 col-lg-12">
				<if ($userinfo['emails_used'] < $userinfo['emails'] || $userinfo['emails'] == '-1') && 15 < $emails_count && $emaildomains_count !=0 >
					<a href="{$linker->getLink(array('section' => 'email', 'page' => $page, 'action' => 'add'))}" class="btn btn-link"><span class="icon-plus"></span> {$lng['emails']['emails_add']}</a>
				</if>
			</div>
		</div>
	</article>
$footer

