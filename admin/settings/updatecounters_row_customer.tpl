<li class="list-group-item">
	<h4>
		<if $customer['name'] != '' && $customer['firstname'] != ''>
			{$customer['name']}, {$customer['firstname']}
		</if>
		<if $customer['name'] != '' && $customer['firstname'] != '' && $customer['company'] != ''>
		 | 
		</if>
		<if $customer['company'] != ''>
			{$customer['company']}
		</if>

		<small>(<a href="{$linker->getLink(array('section' => 'customers', 'page' => 'customers', 'action' => 'su', 'id' => $customer['customerid']))}" target="_blank">
			{$customer['loginname']}
		</a>)</small>
	</h4>
</li>

<li class="list-group-item">
	<if $customer['subdomains_used'] == $customer['subdomains_used_new']>
		<span class="badge">{$customer['subdomains_used']} -&gt; {$customer['subdomains_used_new']}</span>
	<else>
		<span class="badge badge-important">{$customer['subdomains_used']} -&gt; {$customer['subdomains_used_new']}</span>
	</if>
	
	{$lng['customer']['subdomains']}
</li>

<li class="list-group-item">
	<if $customer['mysqls_used'] == $customer['mysqls_used_new']>
		<span class="badge">{$customer['mysqls_used']} -&gt; {$customer['mysqls_used_new']}</span>
	<else>
		<span class="badge badge-important">{$customer['mysqls_used']} -&gt; {$customer['mysqls_used_new']}</span>
	</if>
	{$lng['customer']['mysqls']}
</li>

<li class="list-group-item">
	<if $customer['emails_used'] == $customer['emails_used_new']>
		<span class="badge">{$customer['emails_used']} -&gt; {$customer['emails_used_new']}</span>
	<else>
		<span class="badge badge-important">{$customer['emails_used']} -&gt; {$customer['emails_used_new']}</span>
	</if>
	{$lng['customer']['emails']}
</li>

<li class="list-group-item">
	<if $customer['email_accounts_used'] == $customer['email_accounts_used_new']>
		<span class="badge">{$customer['email_accounts_used']} -&gt; {$customer['email_accounts_used_new']}</span>
	<else>
		<span class="badge badge-important">{$customer['email_accounts_used']} -&gt; {$customer['email_accounts_used_new']}</span>
	</if>
	{$lng['customer']['accounts']}
</li>

<li class="list-group-item">
	<if $customer['email_forwarders_used'] == $customer['email_forwarders_used_new']>
		<span class="badge">{$customer['email_forwarders_used']} -&gt; {$customer['email_forwarders_used_new']}</span>
	<else>
		<span class="badge badge-important">{$customer['email_forwarders_used']} -&gt; {$customer['email_forwarders_used_new']}</span>
	</if>
	{$lng['customer']['forwarders']}
</li>

<if $settings['system']['mail_quota_enabled'] == 1>
	<li class="list-group-item">
		<if $customer['email_quota_used'] == $customer['email_quota_used_new']>
			<span class="badge">{$customer['email_quota_used']} -&gt; {$customer['email_quota_used_new']}</span>
		<else>
			<span class="badge badge-important">{$customer['email_quota_used']} -&gt; {$customer['email_quota_used_new']}</span>
		</if>
		{$lng['customer']['email_quota']}
	</li>
</if>

<if $settings['autoresponder']['autoresponder_active'] == 1>
	<li class="list-group-item">
		<if $customer['autoresponder'] == $customer['email_autoresponder_used_new']>
			<span class="badge">{$customer['autoresponder']} -&gt; {$customer['email_autoresponder_used_new']}</span>
		<else>
			<span class="badge badge-important">{$customer['autoresponder']} -&gt; {$customer['email_autoresponder_used_new']}</span>
		</if>
		{$lng['customer']['autoresponder']}
	</li>
</if>

<li class="list-group-item">
	<if $customer['ftps_used'] == $customer['ftps_used_new']>
		<span class="badge">{$customer['ftps_used']} -&gt; {$customer['ftps_used_new']}</span>
	<else>
		<span class="badge badge-important">{$customer['ftps_used']} -&gt; {$customer['ftps_used_new']}</span>
	</if>
	{$lng['customer']['ftps']}
</li>

<if $settings['ticket']['enabled'] == '1'>
	<li class="list-group-item">
		<if $customer['tickets_used'] == $customer['tickets_used_new']>
			<span class="badge">{$customer['tickets_used']} -&gt; {$customer['tickets_used_new']}</span>
		<else>
			<span class="badge badge-important">{$customer['tickets_used']} -&gt; {$customer['tickets_used_new']}</span>
		</if>
		{$lng['customer']['tickets']}
	</li>
</if>