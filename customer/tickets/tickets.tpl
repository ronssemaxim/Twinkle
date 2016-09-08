$header
	<article class="col-sm-9 col-md-10 col-lg-10">
		<div class="row">
			<header class="col-sm-12 col-md-12 col-lg-12">
				<h2>
					<a href="#" id="articlehead"></a><span class="icon-ticket"></span>&nbsp;
					{$lng['menue']['ticket']['ticket']}
					<small class="pull-right">
						<a href="#" id="helpbtn" title="{$lng['menue']['ticket']['ticket']}" data-html="true" data-toggle="popover" data-placement="bottom" data-original-title="{$lng['menue']['ticket']['ticket']}" data-content="{$lng['ticket']['description']}"><span class="icon-question2"></span></a>
					</small>
				</h2>
			</header>
		</div>

		<div class="row">
			<div class="col-sm-12 col-md-12 col-lg-12">
				<if 0 < $supportavailable >
					<div class="alert alert-success">
						<strong>{$lng['ticket']['supportstatus']}</strong> {$lng['ticket']['supportavailable']}
					</div>
				</if>
				<if $supportavailable < 1 >
					<div class="alert alert-success">
						<strong>{$lng['ticket']['supportstatus']}</strong> {$lng['ticket']['supportnotavailable']}
					</div>
				</if>
			</div>
		</div>

		<div class="row middle">
			<div class="col-sm-3 col-md-3 col-lg-3">
				<if ($userinfo['tickets_used'] < $userinfo['tickets'] || $userinfo['tickets'] == '-1') && ($ticketsopen < Settings::Get('ticket.concurrently_open') || (Settings::Get('ticket.concurrently_open') == '-1' || Settings::Get('ticket.concurrently_open') == '')) >
					<a href="{$linker->getLink(array('section' => 'tickets', 'page' => 'tickets', 'action' => 'new'))}" class="btn btn-link"><span class="icon-plus"></span> {$lng['ticket']['ticket_new']}</a>
				</if>
			</div>

			<div class="col-sm-9 col-md-9 col-lg-9">
				<div class="row">
					<form action="{$linker->getLink(array('section' => 'tickets'))}" method="post" enctype="application/x-www-form-urlencoded">
						{$searchcode}
						<input type="hidden" name="s" value="$s" />
						<input type="hidden" name="page" value="$page" />
						<input type="hidden" name="send" value="send" />
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
								<th>{$lng['ticket']['lastchange']}&nbsp;{$arrowcode['lastchange']}</th>
								<th>{$lng['ticket']['ticket_answers']}</th>
								<th>{$lng['ticket']['subject']}&nbsp;{$arrowcode['subject']}</th>
								<th>{$lng['ticket']['status']}&nbsp;{$arrowcode['status']}</th>
								<th>{$lng['ticket']['lastreplier']}&nbsp;{$arrowcode['lastreplier']}</th>
								<th>{$lng['ticket']['priority']}</th>
								<th>{$lng['panel']['options']}</th>
							</tr>
						</thead>
						<tbody>
							{$tickets}
						</tbody>
						<if $pagingcode != ''>
							<tfoot id="pagination">
								<tr>
									<td colspan="7">{$pagingcode}</td>
								</tr>
							</tfoot>
						</if>
					</table>
				</div>
			</div>
		</div>

		<div class="row">
			<div class="col-sm-12 col-md-12 col-lg-12">
				<if ($userinfo['tickets_used'] < $userinfo['tickets'] || $userinfo['tickets'] == '-1') && 15 < $tickets_count && ($ticketsopen < Settings::Get('ticket.concurrently_open') || (Settings::Get('ticket.concurrently_open') == '-1' || Settings::Get('ticket.concurrently_open') == '')) >
					<a href="{$linker->getLink(array('section' => 'tickets', 'page' => 'tickets', 'action' => 'new'))}" class="btn btn-link"><span class="icon-plus"></span> {$lng['ticket']['ticket_new']}</a>
				</if>
			</div>
		</div>
	</article>
$footer

