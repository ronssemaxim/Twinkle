<tr>
	<td>{$description}</td>
	<td>{$row['lastrun']}</td>
	<td>{$row['interval']}</td>
	<td>{$row['isactive']}</td>
	<td>
		<a href="{$linker->getLink(array('section' => 'cronjobs', 'page' => $page, 'action' => 'edit', 'id' => $row['id']))}"  title="{$lng['panel']['edit']}">
			<span class="icon-pencil"></span>
		</a>
	</td>
</tr>
