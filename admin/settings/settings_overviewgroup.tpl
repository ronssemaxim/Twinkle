<if $lng['admin']['aps'] != $title>
	<div class="form-group">
		<h4 class="control-label col-xs-12 col-sm-12 col-md-4 col-lg-3">{$title}</h4>

		<div class="form-group col-xs-12 col-sm-12 col-md-4 col-lg-3" id="activate_selects">
			{$option}
		</div>

		<if $activated == 1>
			<div class="col-xs-12 col-sm-12 col-md-3 col-lg-3">
				<a class="btn btn-default" href="$filename?page=overview&amp;part=$part&amp;s=$s">{$lng['admin']['serversettings']}</a>
			</div>
		<else>
			<div class="col-xs-12 col-sm-12 col-md-3 col-lg-3">
				<a class="btn btn-default" disabled="disabled" href="$filename?page=overview&amp;part=$part&amp;s=$s">{$lng['admin']['serversettings']}</a>
			</div>
		</if>
	</div>
</if>