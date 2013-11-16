$header
	<article class="col-sm-9 col-md-10 col-lg-10">
		<div class="row">
			<header class="col-sm-12 col-md-12 col-lg-12">
				<h2>
					<a href="#" id="articlehead"></a><span class="icon-lock3"></span>&nbsp;
					{$lng['menue']['main']['changepassword']}
				</h2>
			</header>
		</div>
		<div class="row">
			<div class="col-sm-12 col-md-12 col-lg-12">
				<form method="post" action="{$linker->getLink(array('section' => 'index'))}" enctype="application/x-www-form-urlencoded">
					<table class="table table-responsive">
						<colgroup>
							<col class="col-xs-4">
							<col class="col-xs-8">
						</colgroup>
						<tr>
							<td><label for="theme">{$lng['panel']['theme']}:</label></td>
							<td><select id="theme" name="theme">$theme_options</select></td>
						</tr>
						<tfoot>
							<tr>
								<td>&nbsp;</td>
								<td align="left">
									<input class="btn btn-primary btn-success" type="submit" value="{$lng['menue']['main']['changetheme']}" />
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

