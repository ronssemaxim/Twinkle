$header
	<article class="col-sm-9 col-md-10 col-lg-10">
		<div class="row">
			<header class="col-sm-12 col-md-12 col-lg-12">
				<h2>
					<a href="#" id="articlehead"></a><span class="icon-flag"></span>&nbsp;
					{$lng['menue']['main']['changelanguage']}
				</h2>
			</header>
		</div>
		<div class="row">
			<div class="col-sm-12 col-md-12 col-lg-12">
				<form method="post" action="{$linker->getLink(array('section' => 'index'))}" enctype="application/x-www-form-urlencoded" class="form-horizontal">					
					
					<div class="form-group">
						<label for="def_language" class="control-label col-xs-12 col-sm-12 col-md-3 col-lg-3">{$lng['login']['language']}</label>
						<div class="col-xs-12 col-sm-12 col-md-7 col-lg-7">
							<select class="form-control" id="def_language" name="def_language">
								$language_options
							</select>
						</div>
					</div>

					<div class="col-xs-7 col-sm-7 col-md-7 col-lg-7 col-md-offset-3 col-lg-offset-3">
						<input type="submit" class="btn btn-primary btn-success" value="{$lng['menue']['main']['changelanguage']}" />
					</div>
								
					<input type="hidden" name="s" value="$s" />
					<input type="hidden" name="page" value="$page" />
					<input type="hidden" name="send" value="send" />
				</form>
			</div>
		</div>
	</article>
$footer
