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
				<form method="post" action="{$linker->getLink(array('section' => 'index'))}" enctype="application/x-www-form-urlencoded" class="form-horizontal">
					<div class="form-group">
						<label for="old_password" class="control-label col-xs-12 col-sm-12 col-md-3 col-lg-3">{$lng['changepassword']['old_password']}</label>
						<div class="col-xs-12 col-sm-12 col-md-7 col-lg-7">
							<input type="password" class="form-control" id="old_password" name="old_password" />
						</div>
					</div>

					<div class="form-group">
						<label for="new_password" class="control-label col-xs-12 col-sm-12 col-md-3 col-lg-3">{$lng['changepassword']['new_password']}</label>
						<div class="col-xs-12 col-sm-12 col-md-7 col-lg-7">
							<input type="password" class="form-control" id="new_password" name="new_password" />
						</div>
					</div>

					<div class="form-group">
						<label for="new_password_confirm" class="control-label col-xs-12 col-sm-12 col-md-3 col-lg-3">{$lng['changepassword']['new_password_confirm']}</label>
						<div class="col-xs-12 col-sm-12 col-md-7 col-lg-7">
							<input type="password" class="form-control" id="new_password_confirm" name="new_password_confirm" />
						</div>
					</div>

					<div class="col-xs-7 col-sm-7 col-md-7 col-lg-7 col-md-offset-3 col-lg-offset-3">
						<input type="submit" class="btn btn-primary btn-success" value="{$lng['menue']['main']['changepassword']}" />
					</div>
							
					<input type="hidden" name="s" value="$s" />
					<input type="hidden" name="page" value="$page" />
					<input type="hidden" name="send" value="send" />
				</form>
			</div>
		</div>
	</article>
$footer
