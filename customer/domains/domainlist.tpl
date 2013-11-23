$header
	<article class="col-sm-9 col-md-10 col-lg-10">
		<div class="row">
			<header class="col-sm-12 col-md-12 col-lg-12">
				<h2>
					<a href="#" id="articlehead"></a><span class="icon-globe2"></span>&nbsp;
					{$lng['domains']['domainsettings']} <small>({$domains_count})</small>
				</h2>
			</header>
		</div>

		<div class="row middle">
			<div class="col-sm-3 col-md-3 col-lg-3">
				<if ($userinfo['subdomains_used'] < $userinfo['subdomains'] || $userinfo['subdomains'] == '-1') && $parentdomains_count != 0 >
					<a href="{$linker->getLink(array('section' => 'domains', 'page' => 'domains', 'action' => 'add'))}" class="btn btn-link"><span class="icon-plus"></span> {$lng['domains']['subdomain_add']}</a>
				</if>
			</div>

			<div class="col-sm-9 col-md-9 col-lg-9">
				<div class="row">
					<form action="{$linker->getLink(array('section' => 'domains'))}" method="post" enctype="application/x-www-form-urlencoded">
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
								<th>{$lng['domains']['domainname']}&nbsp;{$arrowcode['d.domain']}</th>
								<th>{$lng['panel']['path']}</th>
								<th>{$lng['panel']['options']}</th>
							</tr>
						</thead>
						<tbody>
							{$domains}
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
				<if ($userinfo['subdomains_used'] < $userinfo['subdomains'] || $userinfo['subdomains'] == '-1') && 15 < $domains_count && $parentdomains_count != 0 >
					<a href="{$linker->getLink(array('section' => 'domains', 'page' => 'domains', 'action' => 'add'))}" class="btn btn-link"><span class="icon-plus"></span> {$lng['domains']['subdomain_add']}</a>
				</if>
			</div>
		</div>
	</article>
$footer
