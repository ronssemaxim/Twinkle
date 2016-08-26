<tr>
	<td>{$row['databasename']}</td>
	<td>{$row['description']}</td>
	<td>{$row['size']}</td>
	<if 1 < count($sql_root)><td>{$sql_root[$row['dbserver']]['caption']}</td></if>
	<if $row['apsdb'] != '1'>
		<td>
			<a href="{$linker->getLink(array('section' => 'mysql', 'page' => 'mysqls', 'action' => 'edit', 'id' => $row['id']))}"  title="{$lng['panel']['edit']}">
				<span class="icon-pencil"></span>
			</a>&nbsp;
			<a href="{$linker->getLink(array('section' => 'mysql', 'page' => 'mysqls', 'action' => 'delete', 'id' => $row['id']))}"  title="{$lng['panel']['delete']}">
				<span class="icon-remove"></span>
			</a>
		</td>
	<else>
		<td>{$lng['aps']['cannoteditordeleteapsdb']}</td>
	</if>
</tr>
