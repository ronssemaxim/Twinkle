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

		<div class="row visible-xs">
			<div class="col-sm-12 col-md-12 col-lg-6">
				<table class="table table-responsive">
					<thead>
						<tr>
							<th colspan="2">{$lng['admin']['ressourcedetails']}</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>{$lng['admin']['customers']} ({$lng['admin']['usedmax']}):</td>
							<td>{$overview['number_customers']} ({$userinfo['customers']})</td>
						</tr>
						<tr>
							<td>{$lng['customer']['domains']} ({$lng['admin']['usedmax']}):</td>
							<td>{$overview['number_domains']} ({$userinfo['domains']})</td>
						</tr>
						<tr>
							<td>{$lng['customer']['subdomains']} ({$lng['admin']['used']} ({$lng['admin']['assignedmax']})):</td>
							<td>{$overview['subdomains_used']} ({$userinfo['subdomains_used']}/{$userinfo['subdomains']})</td>
						</tr>
						<tr>
							<td>{$lng['customer']['diskspace']} ({$lng['admin']['used']} ({$lng['admin']['assignedmax']})):</td>
							<td>{$overview['diskspace_used']} ({$userinfo['diskspace_used']}/{$userinfo['diskspace']})</td>
						</tr>
						<tr>
							<td>{$lng['customer']['traffic']} ({$lng['admin']['used']} ({$lng['admin']['assignedmax']})):</td>
							<td>{$overview['traffic_used']} ({$userinfo['traffic_used']}/{$userinfo['traffic']})</td>
						</tr>
						<tr>
							<td>{$lng['customer']['mysqls']} ({$lng['admin']['used']} ({$lng['admin']['assignedmax']})):</td>
							<td>{$overview['mysqls_used']} ({$userinfo['mysqls_used']}/{$userinfo['mysqls']})</td>
						</tr>
						<tr>
							<td>{$lng['customer']['emails']} ({$lng['admin']['used']} ({$lng['admin']['assignedmax']})):</td>
							<td>{$overview['emails_used']} ({$userinfo['emails_used']}/{$userinfo['emails']})</td>
						</tr>
						<tr>
							<td>{$lng['customer']['accounts']} ({$lng['admin']['used']} ({$lng['admin']['assignedmax']})):</td>
							<td>{$overview['email_accounts_used']} ({$userinfo['email_accounts_used']}/{$userinfo['email_accounts']})</td>
						</tr>
						<tr>
							<td>{$lng['customer']['forwarders']} ({$lng['admin']['used']} ({$lng['admin']['assignedmax']})):</td>
							<td>{$overview['email_forwarders_used']} ({$userinfo['email_forwarders_used']}/{$userinfo['email_forwarders']})</td>
						</tr>
						<if $settings['system']['mail_quota_enabled'] == 1>
						<tr>
							<td>{$lng['customer']['email_quota']} ({$lng['admin']['used']} ({$lng['admin']['assignedmax']})):</td>
							<td>{$overview['email_quota_used']} ({$userinfo['email_quota_used']}/{$userinfo['email_quota']})</td>
						</tr>
						</if>
						<if $settings['autoresponder']['autoresponder_active'] == 1>
						<tr>
							<td>{$lng['customer']['autoresponder']}  ({$lng['admin']['usedmax']}):</td>
							<td>{$userinfo['email_autoresponder_used']} ({$userinfo['email_autoresponder']})</td>
						</tr>
						</if>
						<if (int)$settings['aps']['aps_active'] == 1>
						<tr>
							<td>{$lng['aps']['numberofapspackages']} ({$lng['admin']['used']} ({$lng['admin']['assignedmax']})):</td>
							<td>{$overview['aps_packages_used']} ({$userinfo['aps_packages_used']}/{$userinfo['aps_packages']})</td>
						</tr>
						</if>
						<tr>
							<td>{$lng['customer']['ftps']} ({$lng['admin']['used']} ({$lng['admin']['assignedmax']})):</td>
							<td>{$overview['ftps_used']} ({$userinfo['ftps_used']}/{$userinfo['ftps']})</td>
						</tr>
						<if $settings['ticket']['enabled'] == 1>
						<tr>
							<td>{$lng['customer']['tickets']} ({$lng['admin']['used']} ({$lng['admin']['assignedmax']})):</td>
							<td>{$overview['tickets_used']} ({$userinfo['tickets_used']}/{$userinfo['tickets']})</td>
						</tr>
						</if>
					</tbody>
				</table>
			</div>
		</div>

		<div class="row">
			<div class="col-sm-12 col-md-12 col-lg-6">
				<table class="table table-responsive">
					<tr>
						<th colspan="2">{$lng['admin']['froxlordetails']}</th>
					</tr>
					{$outstanding_tasks}
				</table>
			</div>

			<div class="col-sm-12 col-md-12 col-lg-6">
				<table class="table table-responsive">
					{$cron_last_runs}
					<tr>
						<td>{$lng['admin']['installedversion']}:</td>
						<td>{$version}{$branding}</td>
					</tr>
					<tr>
						<td>{$lng['admin']['latestversion']}:</td>
						<if $isnewerversion != 0 >
							<td><a href="$lookfornewversion_link"><strong>$lookfornewversion_lable</strong></a></td>
						<else>
							<td><a href="$lookfornewversion_link">$lookfornewversion_lable</a></td>
						</if>
					</tr>
					<if $isnewerversion != 0 >
						<tr>
							<td colspan="2"><strong>{$lng['admin']['newerversionavailable']}</strong></td>
						</tr>
						<if $lookfornewversion_addinfo != ''>
							<tr>
								<td colspan="2">$lookfornewversion_addinfo</td>
							</tr>
						</if>
					</if>
				</table>
			</div>
		</div>

		<div class="row">
			<div class="col-sm-12 col-md-12 col-lg-6">
				<table class="table table-responsive">
					<tr>
						<th colspan="2">{$lng['admin']['systemdetails']}</th>
					</tr>
					<tr>
						<td width="50%">{$lng['admin']['serversoftware']}:</td>
						<td>{$_SERVER['SERVER_SOFTWARE']}</td>
					</tr>
					<tr>
						<td>{$lng['admin']['phpversion']}:</td>
						<td>$phpversion</td>
					</tr>
					<tr>
						<td>{$lng['admin']['phpmemorylimit']}:</td>
						<td>$phpmemorylimit</td>
					</tr>
					<tr>
						<td>{$lng['admin']['mysqlserverversion']}:</td>
						<td>$mysqlserverversion</td>
					</tr>
					<tr>
						<td>{$lng['admin']['mysqlclientversion']}:</td>
						<td>$mysqlclientversion</td>
					</tr>
					<tr>
						<td>{$lng['admin']['webserverinterface']}:</td>
						<td>$webserverinterface</td>
					</tr>
					<tr>
						<td>{$lng['admin']['sysload']}:</td>
						<td>$load</td>
					</tr>
					<if $showkernel == 1>
						<tr>
							<td>Kernel:</td>
							<td>$kernel</td>
						</tr>
					</if>
					<if $uptime != ''>
						<tr>
							<td>Uptime:</td>
							<td>$uptime</td>
						</tr>
					</if>
				</table>
			</div>
		</div>
	</article>
$footer

