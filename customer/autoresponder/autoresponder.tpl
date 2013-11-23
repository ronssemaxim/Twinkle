$header
	<article class="col-sm-9 col-md-10 col-lg-10">
		<div class="row">
			<header class="col-sm-12 col-md-12 col-lg-12">
				<h2>
					<a href="#" id="articlehead"></a><span class="icon-mail3"></span>&nbsp;
					{$lng['menue']['email']['autoresponder']}
				</h2>
			</header>
		</div>

		<div class="row middle">
			<div class="col-sm-3 col-md-3 col-lg-3">
				<if ($userinfo['email_autoresponder_used'] < $userinfo['email_autoresponder'] || $userinfo['email_autoresponder'] == '-1') >
					<a href="{$linker->getLink(array('section' => 'autoresponder', 'action' => 'add'))}" class="btn btn-link"><span class="icon-plus"></span> {$lng['autoresponder']['autoresponder_add']}</a>
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
								<th>{$lng['emails']['emailaddress']}</th>
								<th>{$lng['autoresponder']['active']}</th>
								<th>{$lng['autoresponder']['startenddate']}</th>
								<th>{$lng['panel']['options']}</th>
							</tr>
						</thead>

						<tbody>
							{$autoresponder}
						</tbody>
					</table>
				</div>
			</div>
		</div>

		<div class="row">
			<div class="col-sm-12 col-md-12 col-lg-12">
				<if ($userinfo['email_autoresponder_used'] < $userinfo['email_autoresponder'] || $userinfo['email_autoresponder'] == '-1') && 15 < $count >
					<a href="{$linker->getLink(array('section' => 'autoresponder', 'action' => 'add'))}" class="btn btn-link"><span class="icon-plus"></span> {$lng['autoresponder']['autoresponder_add']}</a>
				</if>
			</div>
		</div>
	</article>
$footer

