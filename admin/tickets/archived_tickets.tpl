<tr>
	<td>{$ticket['lastchange']}</td>
	<td>{$ticket['ticket_answers']}</td>
	<td>{$ticket['subject']}</td>
	<td>{$ticket['lastreplier']}</td>
	<td>{$ticket['priority']}</td>
	<td>
		<a href="{$linker->getLink(array('section' => 'tickets', 'page' => 'archive', 'action' => 'view', 'id' => $ticket['id']))}" style="text-decoration:none;" title="{$lng['ticket']['show']}">
			<span class="icon-search3"></span>
		</a>		
		&nbsp;<a href="{$linker->getLink(array('section' => 'tickets', 'page' => 'archive', 'action' => 'delete', 'id' => $ticket['id']))}" style="text-decoration:none;" title="{$lng['panel']['delete']}">
			<span class="icon-remove"></span>
		</a>
	</td>
</tr>
