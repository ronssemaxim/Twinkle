$header
	<script type="text/javascript">
		// needed to feed $.Tablesorter
		var statsyear = '#stats{$overview['year']}';
	</script>

	<article class="col-sm-9 col-md-10 col-lg-10">
		<div class="row">
			<header class="col-sm-12 col-md-12 col-lg-12">
				<h2>
					<a href="#" id="articlehead"></a><span class="icon-stats"></span>&nbsp;
					{$lng['admin']['traffic']}
				</h2>
			</header>
			<div class="row">
				<div class="col-sm-12 col-md-12 col-lg-12">
					{$stats_tables}
				</div>
			</div>
		</div>
	</article>
$footer
