<tr>
	<td style="vertical-align:top;"><strong>{$row['description']}</strong></td>
	<td style="vertical-align:top;">{$domains}</td>
	<td style="vertical-align:top;">{$row['binary']}</td>
	<td style="vertical-align:top;">{$row['file_extensions']}</td>
	<td style="vertical-align:top;">
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
