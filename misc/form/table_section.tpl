<tr>
	<th>
		{$title}
	</th>

	<if $lng['admin']['servicedata'] == $title>
		<th style="text-align:right;" id="servicedata">
	<else>
		<th style="text-align:right;">
	</if>
		<input type="submit" class="btn btn-default btn-success" value="{$lng['panel']['save']}" />
	</th>
</tr>
