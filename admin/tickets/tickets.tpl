$header
	<article class="col-sm-9 col-md-10 col-lg-10">
		<div class="row">
			<header class="col-sm-12 col-md-12 col-lg-12">
				<h2>
					<span class="icon-ticket"></span>&nbsp;
					{$lng['menue']['ticket']['ticket']}
				</h2>
			</header>
		</div>

		<div class="row middle">
			<div class="col-sm-3 col-md-3 col-lg-3">
				<if ($userinfo['tickets_used'] < $userinfo['tickets'] || $userinfo['tickets'] == '-1') && $countcustomers !=0 >	
					<a href="{$linker->getLink(array('section' => 'tickets', 'page' => 'tickets', 'action' => 'new'))}" class="btn btn-link"><span class="icon-plus"></span> {$lng['ticket']['ticket_new']}</a>
				</if>
			</div>
			<div class="col-sm-9 col-md-9 col-lg-9">
				<div class="row">
					<form action="{$linker->getLink(array('section' => 'tickets'))}" method="post" enctype="application/x-www-form-urlencoded">
						{$searchcode}
						<input type="hidden" name="s" value="$s"/>
						<input type="hidden" name="page" value="$page"/>
						<input type="hidden" name="send" value="send" />
					</form>
				</div>
			</div>
		</div>
		
		<div class="row">
			<div class="col-sm-12 col-md-12 col-lg-12">
				<table class="table table-responsive">
					<thead>
						<tr>
							<th>{$lng['ticket']['lastchange']}&nbsp;{$arrowcode['lastchange']}</th>
							<th>{$lng['ticket']['ticket_answers']}&nbsp;{$arrowcode['ticket_answers']}</th>
							<th>{$lng['ticket']['subject']}&nbsp;{$arrowcode['subject']}</th>
							<th>{$lng['ticket']['status']}&nbsp;{$arrowcode['status']}</th>
							<th>{$lng['ticket']['lastreplier']}&nbsp;{$arrowcode['lastreplier']}</th>
							<th>{$lng['ticket']['priority']}&nbsp;{$arrowcode['priority']}</th>
							<th>{$lng['panel']['options']}</th>
						</tr>
					</thead>
					<if $pagingcode != ''>
						<tfoot>
							<tr>
								<td colspan="7">{$pagingcode}</td>
							</tr>
						</tfoot>
					</if>
					<tbody>
						{$tickets}
					</tbody>
				</table>
			</div>
		</div>

		<div class="row">
			<div class="col-sm-12 col-md-12 col-lg-12">
				<if ($userinfo['tickets_used'] < $userinfo['tickets'] || $userinfo['tickets'] == '-1') && 15 < $tickets_count >
					<a href="{$linker->getLink(array('section' => 'tickets', 'page' => 'tickets', 'action' => 'new'))}" class="btn btn-link"><span class="icon-plus"></span> {$lng['ticket']['ticket_new']}</a>
				</if>
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
	</article>
$footer

