<tr>
	<td>{$row['email']}</td>
	<td>
		<if $row['enabled'] != 0>{$lng['panel']['yes']}</if>
		<if $row['enabled'] == 0>{$lng['panel']['no']}</if>
	</td>
	<td>$activated_date</td>
	<td>
		<a href="{$linker->getLink(array('section' => 'autoresponder', 'action' => 'edit', 'email' => $row['email']))}" title="{$lng['panel']['edit']}">
			<span class="icon-pencil"></span>
		</a>&nbsp;
		<a href="{$linker->getLink(array('section' => 'autoresponder', 'action' => 'delete', 'email' => $row['email']))}" title="{$lng['panel']['delete']}">
			<span class="icon-remove"></span>
		</a>
	</td>
</tr>

