$header
	<article class="col-sm-9 col-md-10 col-lg-10">
		<div class="row">
			<header class="col-sm-12 col-md-12 col-lg-12">
				<h2>
					<a href="#" id="articlehead"></a><span class="icon-home4"></span>&nbsp;
					{$lng['panel']['dashboard']}
				</h2>
			</header>
		</div>

		<div class="row">
			<div id="customer_col1" class="connectedSortable col-sm-12 col-md-6 col-lg-6">
				<div id="customer_item_1">
					<ul class="list-group" id="domaindetails">
						<li class="list-group-item">
							<h4 class="list-group-item-heading">
								<div class="pull-right">
									<span class="badge" id="customerdomaincount"></span>&nbsp;
									<button type="button" class="btn btn-info btn-xs" id="customerdomaintriggerbtn" title="Expand domainlist"><span class="icon-minus" id="customericon"></span></button>
								</div>
								<div>
									<span class="icon-globe2"></span>&nbsp;
									{$lng['customer']['domains']}
								</div>
							</h4>
						</li>
						
						<li class="list-group-item" id="customerdomains">
							$domains
						</li>
					</ul>
				</div>

				<div id="customer_item_2">
					<ul class="list-group" id="accountdetails">
						<li class="list-group-item">
							<h4 class="list-group-item-heading">
								<span class="icon-user2" title="{$lng['index']['accountdetails']}"></span> {$lng['index']['accountdetails']}
							</h4>
						</li>
						
						<li class="list-group-item">
							<small><span class="pull-right">{$userinfo['loginname']}</span></small>
							{$lng['login']['username']}
						</li>						

						<li class="list-group-item">
							<small><span class="pull-right">$services_enabled</span></small>
							{$lng['customer']['services']}
						</li>
					</ul>
				</div>
			</div>

			<div id="customer_col2" class="connectedSortable col-sm-12 col-md-6 col-lg-6">
				<div id="customer_item_3">
					<ul class="list-group" id="customerdetails">
						<li class="list-group-item">
							<h4 class="list-group-item-heading">
								<span class="icon-users2" title="{$lng['index']['customerdetails']}"></span> {$lng['index']['customerdetails']}
							</h4>
						</li>

						<if $userinfo['customernumber'] >
							<li class="list-group-item">
								<small><span class="pull-right">{$userinfo['customernumber']}</span></small>
								{$lng['customer']['customernumber']}
							</li>
						</if>
						<li class="list-group-item">
							<address>
								<if $userinfo['company'] >	
									<strong>{$userinfo['company']}</strong><br />
								</if>

								<if $userinfo['name'] >
									{$userinfo['firstname']} {$userinfo['name']}<br />
								</if>

								<if $userinfo['street'] >
									{$userinfo['street']}<br />
								</if>

								<if $userinfo['city'] >
									{$userinfo['zipcode']} {$userinfo['city']}<br />
								</if>

								<if $userinfo['email'] >
									<a href="mailto:{$userinfo['email']}">{$userinfo['email']}</a><br />
								</if>
							</address>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</article>
$footer

