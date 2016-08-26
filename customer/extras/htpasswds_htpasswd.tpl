<tr>
	<td>{$row['username']}</td>
	<td>{$row['path']}</td>
	<td>
		<a href="{$linker->getLink(array('section' => 'extras', 'page' => 'htpasswds', 'action' => 'edit', 'id' => $row['id']))}"  title="{$lng['panel']['edit']}">
			<span class="icon-pencil"></span>
		</a>&nbsp;
		<a href="{$linker->getLink(array('section' => 'extras', 'page' => 'htpasswds', 'action' => 'delete', 'id' => $row['id']))}"  title="{$lng['panel']['delete']}">
			<span class="icon-remove"></span>
		</a>
	</td>
</tr>
