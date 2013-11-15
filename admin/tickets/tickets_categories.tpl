<tr>
	<td>{$row['name']}</td>
	<td>{$row['logicalorder']}</td>
	<td>{$row['ticketcount']}&nbsp;({$row['ticketcountnotclosed']}&nbsp;{$lng['ticket']['open']}&nbsp;|&nbsp;{$closedtickets_count}&nbsp;{$lng['ticket']['closed']})</td>
	<td>
		<a href="{$linker->getLink(array('section' => 'tickets', 'page' => 'categories', 'action' => 'editcategory', 'id' => $row['id']))}" title="{$lng['panel']['edit']}">
			<span class="icon-pencil"></span>
		</a>&nbsp;
		<a href="{$linker->getLink(array('section' => 'tickets', 'page' => 'categories', 'action' => 'deletecategory', 'id' => $row['id']))}" title="{$lng['panel']['delete']}">
			<span class="icon-remove"></span>
		</a>
	</td>
</tr>

