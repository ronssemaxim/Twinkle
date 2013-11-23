<if $admin['adminid'] != $userinfo['userid']>
	<li class="list-group-item">
		<h4>
			<a href="{$linker->getLink(array('section' => 'admins', 'page' => 'admins', 'action' => 'su', 'id' => $admin['adminid']))}" target="_blank">{$admin['loginname']}</a>
		</h4>
	</li>
</if>
<if $admin['adminid'] == $userinfo['userid']>
	<li class="list-group-item">
		<h4>
			{$admin['loginname']}
		</h4>
	</li>
</if>

<li class="list-group-item">
	<if $admin['customers_used'] == $admin['customers_used_new']>
		<span class="badge">{$admin['customers_used']} -&gt; {$admin['customers_used_new']}</span>
	<else>
		<span class="badge badge-important">{$admin['customers_used']} -&gt; {$admin['customers_used_new']}</span>
	</if>
	{$lng['admin']['customers']}
</li>

<li class="list-group-item">
	<if $admin['domains_used'] == $admin['domains_used_new']>
		<span class="badge">{$admin['domains_used']} -&gt; {$admin['domains_used_new']}</span>
	<else>
		<span class="badge iportant">{$admin['domains_used']} -&gt; {$admin['domains_used_new']}</span>
	</if>
	{$lng['customer']['domains']}
</li>

<li class="list-group-item">
	<if $admin['subdomains_used'] == $admin['subdomains_used_new']>
		<span class="badge">{$admin['subdomains_used']} -&gt; {$admin['subdomains_used_new']}</span>
	<else>
		<span class="badge iportant">{$admin['subdomains_used']} -&gt; {$admin['subdomains_used_new']}</span>
	</if>
	{$lng['customer']['subdomains']}
</li>
	
<li class="list-group-item">
	<if $admin['diskspace_used'] == $admin['diskspace_used_new']>
		<span class="badge">{$admin['diskspace_used']} -&gt; {$admin['diskspace_used_new']}</span>
	<else>
		<span class="badge iportant">{$admin['diskspace_used']} -&gt; {$admin['diskspace_used_new']}</span>
	</if>
	{$lng['customer']['diskspace']}
</li>

<li class="list-group-item">
	<if $admin['traffic_used'] == $admin['traffic_used_new']>
		<span class="badge">{$admin['traffic_used']} -&gt; {$admin['traffic_used_new']}</span>
	<else>
		<span class="badge iportant">{$admin['traffic_used']} -&gt; {$admin['traffic_used_new']}</span>
	</if>
	{$lng['customer']['traffic']}
</li>

<li class="list-group-item">
	<if $admin['mysqls_used'] == $admin['mysqls_used_new']>
		<span class="badge">{$admin['mysqls_used']} -&gt; {$admin['mysqls_used_new']}</span>
	<else>
		<span class="badge iportant">{$admin['mysqls_used']} -&gt; {$admin['mysqls_used_new']}</span>
	</if>
	{$lng['customer']['mysqls']}
</li>

<li class="list-group-item">
	<if $admin['emails_used'] == $admin['emails_used_new']>
		<span class="badge">{$admin['emails_used']} -&gt; {$admin['emails_used_new']}</span>
	<else>
		<span class="badge iportant">{$admin['emails_used']} -&gt; {$admin['emails_used_new']}</span>
	</if>
	{$lng['customer']['emails']}
</li>

<li class="list-group-item">
	<if $admin['email_accounts_used'] == $admin['email_accounts_used_new']>
		<span class="badge">{$admin['email_accounts_used']} -&gt; {$admin['email_accounts_used_new']}</span>
	<else>
		<span class="badge iportant">{$admin['email_accounts_used']} -&gt; {$admin['email_accounts_used_new']}</span>
	</if>
	{$lng['customer']['accounts']}
</li>

<li class="list-group-item">
	<if $admin['email_forwarders_used'] == $admin['email_forwarders_used_new']>
		<span class="badge">{$admin['email_forwarders_used']} -&gt; {$admin['email_forwarders_used_new']}</span>
	<else>
		<span class="badge iportant">{$admin['email_forwarders_used']} -&gt; {$admin['email_forwarders_used_new']}</span>
	</if>
	{$lng['customer']['forwarders']}
</li>

<if $settings['system']['mail_quota_enabled'] == 1>
	<li class="list-group-item">
		<if $admin['email_quota_used'] == $admin['email_quota_used_new']>
			<span class="badge">{$admin['email_quota_used']} -&gt; {$admin['email_quota_used_new']}</span>
		<else>
			<span class="badge iportant">{$admin['email_quota_used']} -&gt; {$admin['email_quota_used_new']}</span>
		</if>
		{$lng['customer']['email_quota']}
	</li>
</if>

<if $settings['autoresponder']['autoresponder_active'] == 1>
	<li class="list-group-item">
		<if $admin['email_autoresponder_used'] == $admin['email_autoresponder_used_new']>
			<span class="badge">{$admin['email_autoresponder_used']} -&gt; {$admin['email_autoresponder_used_new']}</span>
		<else>
			<span class="badge iportant">{$admin['email_autoresponder_used']} -&gt; {$admin['email_autoresponder_used_new']}</span>
		</if>
		{$lng['customer']['autoresponder']}
	</li>
</if>

<li class="list-group-item">
	<if $admin['ftps_used'] == $admin['ftps_used_new']>
		<span class="badge">{$admin['ftps_used']} -&gt; {$admin['ftps_used_new']}</span>
	<else>
		<span class="badge iportant">{$admin['ftps_used']} -&gt; {$admin['ftps_used_new']}</span>
	</if>
	{$lng['customer']['ftps']}
</li>

<if $settings['ticket']['enabled'] == '1'>
	<li class="list-group-item">
		<if $admin['tickets_used'] == $admin['tickets_used_new']>
			<span class="badge">{$admin['tickets_used']} -&gt; {$admin['tickets_used_new']}</span>
		<else>
			<span class="badge iportant">{$admin['tickets_used']} -&gt; {$admin['tickets_used_new']}</span>
		</if>
		{$lng['customer']['tickets']}
	</li>
</if>