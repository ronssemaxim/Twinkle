$header
	<article class="col-sm-9 col-md-10 col-lg-10">
		<div class="row">
			<header class="col-sm-12 col-md-12 col-lg-12">
				<h2>
					<a href="#" id="articlehead"></a><span class="icon-earth"></span>&nbsp;
					{$lng['admin']['ipsandports']['ipsandports']}
				</h2>
			</header>
		</div>

		<div class="row middle">
			<div class="col-sm-3 col-md-3 col-lg-3">
				<a href="{$linker->getLink(array('section' => 'ipsandports', 'page' => $page, 'action' => 'add'))}" class="btn btn-link"><span class="icon-plus"></span> {$lng['admin']['ipsandports']['add']}</a>
			</div>

			<div class="col-sm-9 col-md-9 col-lg-9">
				<div class="row">
					<form action="{$linker->getLink(array('section' => 'ipsandports'))}" method="post" enctype="application/x-www-form-urlencoded">
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
							<th>{$lng['admin']['ipsandports']['ip']}&nbsp;{$arrowcode['ip']}</th>
							<th>{$lng['admin']['ipsandports']['port']}&nbsp;{$arrowcode['port']}</th>
							<th>Listen</th>
							<th>NameVirtualHost</th>
							<th>vHost-Container</th>
							<th>Specialsettings</th>
							<th>ServerName</th>
							<th>SSL</th>
							<th>{$lng['panel']['options']}</th>
						</tr>
					</thead>
					<tbody>
						$ipsandports
					</tbody>
					<if $pagingcode != ''>
						<tfoot id="pagination">
							<tr>
								<td colspan="8">{$pagingcode}</td>
							</tr>
						</tfoot>
					</if>
				</table>
			</div>
		</div>
			
		<div class="row">
			<div class="col-sm-12 col-md-12 col-lg-12">	
				<if 15 < $count>
					<a href="{$linker->getLink(array('section' => 'ipsandports', 'page' => $page, 'action' => 'add'))}" class="btn btn-link"><span class="icon-plus"></span> {$lng['admin']['ipsandports']['add']}</a>
				</if>
			</div>
		</div>
	</article>
$footer
