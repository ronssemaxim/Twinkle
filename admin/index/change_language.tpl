$header
	<article class="col-sm-9 col-md-10 col-lg-10">
		<div class="row">
			<header class="col-sm-12 col-md-12 col-lg-12">
				<h2>
					<span class="icon-flag"></span>&nbsp;
					{$lng['menue']['main']['changelanguage']}
				</h2>
			</header>
		</div>
		<div class="row">
			<div class="col-sm-12 col-md-12 col-lg-12">
				<form method="post" action="{$linker->getLink(array('section' => 'index'))}" enctype="application/x-www-form-urlencoded">					
					<table class="table table-responsive">
						<tr>
							<td><label for="def_language">{$lng['login']['language']}:</label></td>
							<td>
								<div class="col-xs-9">
									<select class="form-control" id="def_language" name="def_language">
										$language_options
									</select>
								</div>
							</td>
						</tr>
						<tfoot>
							<tr>
								<td>&nbsp;</td>
								<td style="text-align:left;">
									<input type="submit" class="btn btn-primary btn-success" value="{$lng['menue']['main']['changelanguage']}" />
								</td>
							</tr>
						</tfoot>
					</table>
					<input type="hidden" name="s" value="$s" />
					<input type="hidden" name="page" value="$page" />
					<input type="hidden" name="send" value="send" />
				</form>
			</div>
		</div>
	</article>
$footer
