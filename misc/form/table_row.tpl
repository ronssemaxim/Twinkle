<tr>
	<td {$style}>
		<label for="{$fieldname}">{$label}{$mandatory}:
		<if $desc != ''>
			<p><small>{$desc}</small></p>
		</if>
		</label>
	</td>
	<td>
		{$data_field}
	</td>
</tr>
