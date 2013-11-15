<tr>
	<td>{$row['email_full']}</td>
	<td><if $row['destination'] == ''>&nbsp;<else>{$row['destination']}</if></td>
	<td><if $row['popaccountid'] != 0>{$lng['panel']['yes']} ({$row['mboxsize']})</if><if $row['popaccountid'] == 0>{$lng['panel']['no']}</if></td>
	<if $settings['catchall']['catchall_enabled'] == '1'><td><if $row['iscatchall'] != 0>{$lng['panel']['yes']}</if><if $row['iscatchall'] == 0>{$lng['panel']['no']}</if></td></if>
	<if $settings['system']['mail_quota_enabled'] == '1'><td><if $row['quota'] == 0>{$lng['emails']['noquota']}<else>{$row['quota']} MB</if></if></td>
	<td>
		<a href="{$linker->getLink(array('section' => 'email', 'page' => $page, 'action' => 'edit', 'id' => $row['id']))}" style="text-decoration:none;" title="{$lng['panel']['edit']}">
			<span class="icon-pencil"></span>
		</a>&nbsp;
		<a href="{$linker->getLink(array('section' => 'email', 'page' => $page, 'action' => 'delete', 'id' => $row['id']))}" style="text-decoration:none;" title="{$lng['panel']['delete']}">
			<span class="icon-remove"></span>
		</a>
	</td>
</tr>
