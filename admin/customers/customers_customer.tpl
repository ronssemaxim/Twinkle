<tr <if $row['deactivated'] == 1>class="disabled"</if>>
	<td>
		<if $row['company'] != '' && $row['name'] != ''>
			{$row['company']}<br />
			<small>{$row['name']}, {$row['firstname']}</small>
		</if>
		<if $row['company'] != '' && $row['name'] == ''>
			{$row['company']}
		</if>
		<if $row['company'] == ''>
			{$row['name']}, {$row['firstname']}
		</if>
	</td>
	<td>
		<a href="{$linker->getLink(array('section' => 'customers', 'page' => $page, 'action' => 'su', 'sort' => $row['loginname'], 'id' => $row['customerid']))}" rel="external">{$row['loginname']}</a>
	</td>
	<td>
		{$row['adminname']}
	</td>
	<td>
		{$last_login}
	</td>

	<td>
		<div class="row">
			<div class="col-md-12 col-sm-12 col-lg-12">
				<span>Webspace:</span>
				<if $row['diskspace'] != 'UL'>
					<if (($row['diskspace']/100)*(int)$settings['system']['report_webmax']) < $row['diskspace_used']>
						<div class="progress">
							<div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="{$disk_percent}" aria-valuemin="0" aria-valuemax="100" style="width: 60%;" title="{$disk_percent}%"></div>
						</div>
					<else>
						<div class="progress">
							<div class="progress-bar" role="progressbar" aria-valuenow="{$disk_percent}" aria-valuemin="0" aria-valuemax="100" style="width: 60%;" title="{$disk_percent}%"></div>
						</div>
					</if>
				<else>
					<div class="progress">∞
						<div role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 60%;" title="unlimited"></div>
					</div>
				</if>
			</div>

			<div class="col-md-12 col-sm-12 col-lg-12">
				<span>Traffic:</span>
				<if $row['traffic'] != 'UL'>
					<if (($row['traffic']/100)*(int)$settings['system']['report_trafficmax']) < $row['traffic_used']>
						<div class="progress progress-danger">
							<div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="{$traffic_percent}" aria-valuemin="0" aria-valuemax="100" style="width: 60%;" title="{$traffic_percent}%"></div>
						</div>
					<else>
						<div class="progress">
							<div class="progress-bar" role="progressbar" aria-valuenow="{$traffic_percent}" aria-valuemin="0" aria-valuemax="100" style="width: 60%;" title="{$traffic_percent}"></div>
						</div>
					</if>
				<else>
					<div class="progress">∞
						<div role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 60%;" title="unlimited"></div>
					</div>
				</if>
			</div>
		</div>
	</td>
	<td style="white-space: nowrap;">
		<a href="{$linker->getLink(array('section' => 'customers', 'page' => $page, 'action' => 'edit', 'id' => $row['customerid']))}" title="{$lng['panel']['edit']}">
			<span class="icon-pencil"></span>
		</a>&nbsp;
		<a href="{$linker->getLink(array('section' => 'customers', 'page' => $page, 'action' => 'delete', 'id' => $row['customerid']))}" title="{$lng['panel']['delete']}">
			<span class="icon-remove"></span>
		</a>&nbsp;
		<if $islocked == 1>
		<a href="{$linker->getLink(array('section' => 'customers', 'page' => $page, 'action' => 'unlock', 'id' => $row['customerid']))}" title="{$lng['panel']['unlock']}">
			<span class="icon-lock"></span>
		</a>
		</if>
	</td>

</tr>
