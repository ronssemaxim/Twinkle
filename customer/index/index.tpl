$header
	<article class="col-sm-9 col-md-10 col-lg-10">
		<div class="row">
			<header class="col-sm-12 col-md-12 col-lg-12">
				<h2>
					<a href="#" id="articlehead"></a><span class="icon-globe2"></span>&nbsp;
					{$lng['panel']['dashboard']}
				</h2>
			</header>
		</div>

		<div class="row">
			<div class="col-sm-12 col-md-12 col-lg-12">
		        <table>
			       	<tr>
						<th colspan="2">{$lng['index']['accountdetails']}</th>
					</tr>
				<tr>
					<td>{$lng['login']['username']}:</td>
					<td>{$userinfo['loginname']}</td>
				</tr>
				<tr>
					<td>{$lng['customer']['domains']}:</td>
					<td>$domains</td>
				</tr>
				<tr>
					<td>{$lng['customer']['services']}:</td>
					<td>$services_enabled</td>
				</tr>
				<tr>
					<th colspan="2">{$lng['index']['customerdetails']}</th>
				</tr>
		        <if $userinfo['customernumber'] >
			        <tr>
			            <td>{$lng['customer']['customernumber']}:</td>
			            <td>{$userinfo['customernumber']}</td>
			        </tr>
		        </if>
		        <if $userinfo['company'] >
			        <tr>
			            <td>{$lng['customer']['company']}:</td>
			            <td>{$userinfo['company']}</td>
			        </tr>
		        </if>
		        <if $userinfo['name'] >
			        <tr>
			            <td>{$lng['customer']['name']}:</td>
			            <td>{$userinfo['firstname']} {$userinfo['name']}</td>
			        </tr>
		        </if>
		        <if $userinfo['street'] >
			        <tr>
			            <td>{$lng['customer']['street']}:</td>
			            <td>{$userinfo['street']}</td>
			        </tr>
		        </if>
		        <if $userinfo['city'] >
			        <tr>
			            <td>{$lng['customer']['zipcode']}/{$lng['customer']['city']}:</td>
			            <td>{$userinfo['zipcode']} {$userinfo['city']}</td>
			        </tr>
		        </if>
		        <if $userinfo['email'] >
			        <tr>
			            <td>{$lng['customer']['email']}:</td>
			            <td>{$userinfo['email']}</td>
			        </tr>
		        </if>
			</table>
			</div>
		</div>
	</article>
$footer

