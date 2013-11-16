$header
	<article class="col-sm-9 col-md-10 col-lg-10">
		<div class="row">
			<header class="col-sm-12 col-md-12 col-lg-12">
				<h2>
					<a href="#" id="articlehead"></a><span class="icon-list3"></span>&nbsp;
					{$lng['menue']['logger']['logger']}
				</h2>
			</header>
		</div>

		
		<div class="row middle">		
			<div class="col-sm-3 col-md-3 col-lg-3">
				<a href="{$linker->getLink(array('section' => 'logger', 'page' => $page, 'action' => 'truncate'))}" class="btn btn-link"><span class="icon-remove"></span> {$lng['logger']['truncate']}</a>
			</div>

			<div class="col-sm-9 col-md-9 col-lg-9">
				<div class="row">
					<form action="{$linker->getLink(array('section' => 'logger'))}" method="post" enctype="application/x-www-form-urlencoded">
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
							<th>{$lng['logger']['date']}&nbsp;{$arrowcode['date']}</th>
							<th>{$lng['logger']['type']}&nbsp;{$arrowcode['type']}</th>
							<th>{$lng['logger']['user']}&nbsp;{$arrowcode['user']}</th>
							<th style="width: 60%;">{$lng['logger']['action']}</th>
						</tr>
					</thead>
					<tbody>
						$log
					</tbody>
				</table>
			</div>
		</div>

		<if 15 < $log_count >
			<div class="row">
				<div class="col-sm-12 col-md-12 col-lg-12">
					<a href="{$linker->getLink(array('section' => 'logger', 'page' => $page, 'action' => 'truncate'))}" class="btn btn-link"><span class="icon-remove"></span> {$lng['logger']['truncate']}</a>
				</div>
			</div>
		</if>
	</article>
$footer
