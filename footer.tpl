		</div> <!-- row -->
	</section> <!-- container -->

	<footer>
		<div class="container container-full">
			<div class="navbar navbar-default text-center">
				<div class="nav" >
					<if (Settings::Get('admin.show_version_login') == '1' && $filename == 'index.php') || ($filename != 'index.php' && Settings::Get('admin.show_version_footer') == '1')>
						<img src="templates/{$theme}/assets/img/logo_grey.png" alt="Froxlor" />
						{$version}{$branding}
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
					</if>
				</div>
			</div>
		</div>
	</footer>
	
	<script src="templates/{$theme}/js/stable/jquery.min.js"></script>
	<script src="templates/{$theme}/js/stable/jquery-ui.min.js"></script>

	<script type="text/javascript" src="js/jquery.tablesorter.min.js"></script>
	<script type="text/javascript" src="templates/{$theme}/js/latest/bootstrap.min.js"></script>
	<script type="text/javascript" src="templates/{$theme}/js/stable/jquery-passy.js"></script> 

	<script type="text/javascript" src="templates/{$theme}/js/twinkle.js"></script> 
</body>
</html>
