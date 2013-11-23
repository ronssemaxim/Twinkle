<div class="form-group">
	<label for="{$fieldname}" class="control-label col-xs-12 col-sm-3 col-md-4 col-lg-3">{$label}{$mandatory}</label>
	<div class="col-xs-10 col-sm-8 col-md-8 col-lg-7">
		{$data_field}
		<if $desc != ''>
			<p class="help-block col-xs-10 col-sm-10 col-md-10 col-lg-10"><span class="icon-info"></span> {$desc}</p>
		</if>
	</div>
</div>