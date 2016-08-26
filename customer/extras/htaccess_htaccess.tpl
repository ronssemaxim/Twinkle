<tr>
	<td>{$row['path']}</td>
	<td>{$row['options_indexes']}</td>
	<td>{$row['error404path']}</td>
	<td>{$row['error403path']}</td>
	<td>{$row['error500path']}</td>
	<if $cperlenabled == 1 >
	<td>{$row['options_cgi']}</td>
	</if>
	<td>
		<a href="{$linker->getLink(array('section' => 'extras', 'page' => 'htaccess', 'action' => 'edit', 'id' => $row['id']))}"  title="{$lng['panel']['edit']}">
			<span class="icon-pencil"></span>
		</a>&nbsp;
		<a href="{$linker->getLink(array('section' => 'extras', 'page' => 'htaccess', 'action' => 'delete', 'id' => $row['id']))}"  title="{$lng['panel']['delete']}">
			<span class="icon-remove"></span>
		</a>
	</td>
</tr>
