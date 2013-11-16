$header
	<article class="col-sm-9 col-md-10 col-lg-10">
		<div class="row">
			<header class="col-sm-12 col-md-12 col-lg-12">
				<h2>
					<a href="#" id="articlehead"></a><span class="icon-globe2"></span>&nbsp;
					{$lng['admin']['domains']} <small>({$domainscount})</small>
				</h2>
			</header>
		</div>

		<div class="row middle">			
			<div class="col-sm-3 col-md-3 col-lg-3">
				<if ($userinfo['domains_used'] < $userinfo['domains'] || $userinfo['domains'] == '-1') && $countcustomers !=0 >
					<a href="{$linker->getLink(array('section' => 'domains', 'page' => $page, 'action' => 'add'))}" class="btn btn-link"><span class="icon-plus"></span> {$lng['admin']['domain_add']}</a>
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
				<table class="table table-responsive">
					<thead>
						<tr>
							<th>{$lng['domains']['domainname']}&nbsp;{$arrowcode['d.domain']}</th>
							<th>{$lng['admin']['ipsandports']['ip']}</th>
							<th>{$lng['admin']['customer']}&nbsp;{$arrowcode['c.loginname']}</th>
							<th>{$lng['panel']['options']}</th>
						</tr>
					</thead>

					<tbody>
						{$domains}
					</tbody>
					
					<if $pagingcode != ''>
						<tfoot>
							<tr>
								<td colspan="4">{$pagingcode}</td>
							</tr>
						</tfoot>
					</if>
				</table>
			</div>
		</div>

		<if $countcustomers == 0 >
			<div class="alert alert-danger fade in">
				<h4><span class="icon-info"></span> {$lng['admin']['warning']}</h4>
				<p>{$lng['admin']['domain_nocustomeraddingavailable']}</p>
				<p>
					<a class="btn btn-primary" href="{$linker->getLink(array('section' => 'customers', 'page' => 'customers', 'action' => 'add'))}" class="btn btn-link"> {$lng['admin']['customer_add']}</a>
				</p>
			</div>
		</if>

		<div class="row">
			<div class="col-sm-12 col-md-12 col-lg-12">
				<if ($userinfo['domains_used'] < $userinfo['domains'] || $userinfo['domains'] == '-1') && 15 < $count && 0 < $countcustomers >
					<a href="{$linker->getLink(array('section' => 'domains', 'page' => $page, 'action' => 'add'))}" class="btn btn-link"><span class="icon-plus"></span> {$lng['admin']['domain_add']}</a>
				</if>
			</div>
		</div>
	</article>
$footer
