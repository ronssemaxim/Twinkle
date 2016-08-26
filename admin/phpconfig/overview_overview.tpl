<tr>
	<td ><strong>{$row['description']}</strong></td>
	<td >{$domains}</td>
	<td >{$row['binary']}</td>
	<td >{$row['file_extensions']}</td>
	<td >
		<a href="{$linker->getLink(array('section' => 'phpsettings', 'page' => $page, 'action' => 'edit', 'id' => $row['id']))}" title="{$lng['panel']['edit']}">
			<span class="icon-pencil"></span>
		</a>
		<if $row['id'] != 1>
			&nbsp;<a href="{$linker->getLink(array('section' => 'phpsettings', 'page' => $page, 'action' => 'delete', 'id' => $row['id']))}" title="{$lng['panel']['delete']}">
				<span class="icon-remove"></span>
			</a>
		</if>
	</td>
</tr>
