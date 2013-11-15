		</div> <!-- row -->
	</section> <!-- container -->

	<footer>
		<div class="container container-full">
			<div class="navbar navbar-default text-center">
				<div class="nav" style="line-height:50px;">
					<img src="templates/{$theme}/assets/img/logo_grey.png" alt="Froxlor" />
					<if ($settings['admin']['show_version_login'] == '1' && $filename == 'index.php') || ($filename != 'index.php' && $settings['admin']['show_version_footer'] == '1')>
						{$version}{$branding}
					</if>
					&copy; 2009-{$current_year} by <a href="http://www.froxlor.org/" rel="external">the Froxlor Team</a>
					<if $lng['translator'] != ''>
						{$lng['panel']['translator']}: {$lng['translator']}
					</if>
					&nbsp;
					<div class="footer-label">
						<span class="visible-xs"><span class="icon-mobile"> Mobile XS</span></span>
						<span class="visible-sm"><span class="icon-tablet"> Tablet SM</span></span>
						<span class="visible-md"><span class="icon-laptop"> Laptop MD</span></span>
						<span class="visible-lg"><span class="icon-screen2"> Desktop LG</span></span>
					</div>
				</div>
			</div>
		</div>
	</footer>

	<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
	<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/jquery-ui.min.js"></script>
	<script>
	  // CDN Fallback
	  if(typeof jQuery == 'undefined') { 
	    document.write(unescape('%3Cscript src="templates/{$theme}/js/libs/jquery.min.js"%3E%3C/script%3E'));
	    document.write(unescape('%3Cscript src="templates/{$theme}/js/libs/jquery-ui.min.js"%3E%3C/script%3E'));
	  }
	</script>
	<script type="text/javascript" src="js/jquery.tablesorter.min.js"></script>
	<script type="text/javascript" src="templates/{$theme}/js/libs/bootstrap.min.js"></script> 

	<script type="text/javascript" src="js/jquery.jqplot.min.js"></script>
	<script type="text/javascript" src="js/plugins/jqplot.barRenderer.min.js"></script>
	<script type="text/javascript" src="js/plugins/jqplot.donutRenderer.min.js"></script>
	<script type="text/javascript" src="js/plugins/jqplot.enhancedLegendRenderer.min.js"></script>
	<script type="text/javascript" src="js/plugins/jqplot.categoryAxisRenderer.min.js"></script>
	<script type="text/javascript" src="js/plugins/jqplot.highlighter.min.js"></script> 
	<script type="text/javascript" src="js/plugins/jqplot.pointLabels.min.js"></script>

	<script type="text/javascript" src="templates/{$theme}/js/twinkle.js"></script> 
</body>
</html>
