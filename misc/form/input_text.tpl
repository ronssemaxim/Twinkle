<if $ulfield != ''>
	<div class="input-group">
		<input type="{$type}" class="form-control" name="{$fieldname}" id="{$fieldname}" value="{$value}"{$extras} /> 
		<span class="input-group-addon">
			{$ulfield}
		</span>
	</div>
<else>
	<input type="{$type}" class="form-control" name="{$fieldname}" id="{$fieldname}" value="{$value}"{$extras} />
</if>
