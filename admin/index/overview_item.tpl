<if $lng['tasks']['outstanding_tasks'] == $text>
	<li class="list-group-item">
		<h4 class="list-group-item-heading"><span class="icon-briefcase"></span> {$text} 
			<div class="pull-right">
				<span class="badge" id="croncount"></span>&nbsp;
				<button type="button" class="btn btn-info btn-xs" id="crontriggerbtn"><span class="icon-minus" id="cronicon"></span></button>
			</div>
		</h4>
		<small><span class="pull-right">{$value}</span></small>
	</li>
<else>
	<li class="list-group-item">
		{$text}
		<small><span class="pull-right">{$value}</span></small>
	</li>
</if>
