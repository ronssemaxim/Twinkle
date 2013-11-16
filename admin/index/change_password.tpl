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
						<tr>
							<td>
								<label for="old_password">{$lng['changepassword']['old_password']}:</label>
							</td>
							<td>
								<div class="col-xs-9">
									<input type="password" class="form-control" id="old_password" name="old_password" />
								</div>
							</td>
						</tr>
						<tr>
							<td><label for="new_password">{$lng['changepassword']['new_password']}:</label></td>
							<td>
								<div class="col-xs-9">
									<input type="password" class="form-control" id="new_password" name="new_password" />
								</div>
							</td>
						</tr>
						<tr>
							<td><label for="new_password_confirm">{$lng['changepassword']['new_password_confirm']}:</label></td>
							<td>
								<div class="col-xs-9">
									<input type="password" class="form-control" id="new_password_confirm" name="new_password_confirm" />
								</div>
							</td>
						</tr>
						<tfoot>
							<tr>
								<td>&nbsp;</td>
								<td style="text-align:left;">
									<input type="submit" class="btn btn-primary btn-success" value="{$lng['menue']['main']['changepassword']}" />
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
