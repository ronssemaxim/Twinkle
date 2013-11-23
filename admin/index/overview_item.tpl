<if $lng['tasks']['outstanding_tasks'] == $text>
	<li class="list-group-item">
		<h4 class="list-group-heading">{$text} <small><span class="badge" id="croncount"></span></small>
			<span class="pull-right"><button type="button" class="btn btn-info btn-sm" id="crontriggerbtn"><span class="icon-minus" id="cronicon"></span></button></span>
		</h4>
		<span class="pull-right">{$value}</span>
	</li>
<else>
	<li class="list-group-item">
		{$text}
		<span class="pull-right">{$value}</span>
	</li>
</if>
