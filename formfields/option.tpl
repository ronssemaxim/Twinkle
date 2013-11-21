<div class="form-group">
	<div class="col-xs-12 col-sm-12 col-md-6 col-lg-4">{$label}</div>
	<div class="col-xs-12 col-sm-12 col-md-6 col-lg-8">
		<select class="form-control" name="{$fieldname}<if $multiple == true>[]</if>"<if $multiple == true> multiple="multiple"</if>>{$options}</select>
	</div>
</div>