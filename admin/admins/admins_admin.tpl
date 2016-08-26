<tr>
	<td>
		{$row['name']}
	</td>
	<td>
		<if $row['adminid'] != $userinfo['userid']>
		<a href="{$linker->getLink(array('section' => 'admins', 'page' => $page, 'action' => 'su', 'id' => $row['adminid']))}" rel="external">{$row['loginname']}</a>
		</if>
		<if $row['adminid'] == $userinfo['userid']>
		{$row['loginname']}
		</if>
	</td>
	<td>
		{$row['customers_used']}
	</td>
	<td>
		<div>
			<span class="overviewcustomerextras">
				<span>Webspace:</span>
				<if $row['diskspace'] != 'UL'>
					<if (($row['diskspace']/100)*(int)Settings::Get('system.report_webmax')) < $row['diskspace_used']>
						<div class="progress progress-danger">
							<div class="bar" ></div>
						</div>
					<else>
						<div class="progress">
							<div class="bar" ></div>
						</div>
					</if>
				<else>
					<div class="progress text-center">∞
							<div class="bar" ></div>
					</div>
				</if>
			</span>
			<span class="overviewcustomerextras">
				<span>Traffic:</span>
				<if $row['traffic'] != 'UL'>
					<if (($row['traffic']/100)*(int)Settings::Get('system.report_trafficmax')) < $row['traffic_used']>
						<div class="progress progress-danger">
							<div class="bar" ></div>
						</div>
					<else>
						<div class="progress">
							<div class="bar" ></div>
						</div>
					</if>
				<else>
					<div class="progress text-center">∞
						<div class="bar" ></div>
					</div>
				</if>
			</span>
		</div>
	</td>
	<td>
		<a href="{$linker->getLink(array('section' => 'admins', 'page' => $page, 'action' => 'edit', 'id' => $row['adminid']))}"  title="{$lng['panel']['edit']}">
			<span class="icon-pencil"></span>
		</a>&nbsp;
		<a href="{$linker->getLink(array('section' => 'admins', 'page' => $page, 'action' => 'delete', 'id' => $row['adminid']))}"  title="{$lng['panel']['delete']}">
			<span class="icon-remove"></span>
		</a>
	</td>
</tr>
