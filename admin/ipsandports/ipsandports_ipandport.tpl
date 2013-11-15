<tr>
	<td>{$row['ip']}</td>
	<td>{$row['port']}</td>
	<td><if $row['listen_statement']=='1'>{$lng['panel']['yes']}<else>{$lng['panel']['no']}</if></td>
	<td><if $row['namevirtualhost_statement']=='1'>{$lng['panel']['yes']}<else>{$lng['panel']['no']}</if></td>
	<td><if $row['vhostcontainer']=='1'>{$lng['panel']['yes']}<else>{$lng['panel']['no']}</if></td>
	<td><if $row['specialsettings']!=''>{$lng['panel']['yes']}<else>{$lng['panel']['no']}</if></td>
	<td><if $row['vhostcontainer_servername_statement']=='1'>{$lng['panel']['yes']}<else>{$lng['panel']['no']}</if></td>
	<td><if $row['ssl']=='1'>{$lng['panel']['yes']}<else>{$lng['panel']['no']}</if></td>
	<td>
		<a href="{$linker->getLink(array('section' => 'ipsandports', 'page' => $page, 'action' => 'edit', 'id' => $row['id']))}" style="text-decoration:none;" title="{$lng['panel']['edit']}">
			<span class="icon-pencil"></span>
		</a>&nbsp;
		<a href="{$linker->getLink(array('section' => 'ipsandports', 'page' => $page, 'action' => 'delete', 'id' => $row['id']))}" style="text-decoration:none;" title="{$lng['panel']['delete']}">
			<span class="icon-remove"></span>
		</a>
	</td>
</tr>
