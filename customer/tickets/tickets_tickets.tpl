<tr>
	<td>{$row['lastchange']}</td>
	<td>{$row['ticket_answers']}</td>
	<td>{$row['subject']}</td>
	<td>{$row['status']}</td>
	<td>{$row['lastreplier']}</td>
	<td>{$row['priority']}</td>
	<td>
		<if $cananswer < 1 >
			<a href="{$linker->getLink(array('section' => 'tickets', 'page' => 'tickets', 'action' => 'answer', 'id' => $row['id']))}" title="{$lng['ticket']['show']}">
				<span class="icon-search3"></span>
			</a>
		</if>
		<if 0 < $cananswer >
			<a href="{$linker->getLink(array('section' => 'tickets', 'page' => 'tickets', 'action' => 'answer', 'id' => $row['id']))}" title="{$lng['ticket']['answer']}">
				<span class="icon-bubble2"></span>
			</a>
		</if>
		<if $reopen < 1 >
			&nbsp;<a href="{$linker->getLink(array('section' => 'tickets', 'page' => 'tickets', 'action' => 'close', 'id' => $row['id']))}" title="{$lng['ticket']['close']}">
				<span class="icon-lock3"></span>
			</a>
		</if>
		<if 0 < $reopen >
			&nbsp;<a href="{$linker->getLink(array('section' => 'tickets', 'page' => 'tickets', 'action' => 'reopen', 'id' => $row['id']))}" title="{$lng['ticket']['reopen']}">
				<span class="icon-unlocked"></span>
			</a>
		</if>
	</td>
</tr>

