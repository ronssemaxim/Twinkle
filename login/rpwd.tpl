$header
	<article class="col-xs-12 col-sm-12 col-md-12 col-lg-12">

		<div class="row">
			<header class="col-xs-12 col-sm-10 col-md-8 col-lg-5 col-sm-offset-1 col-md-offset-2 col-lg-offset-3 text-center">
				<p>
					<img src="{$header_logo}" alt="Froxlor Server Management Panel" />
				</p>
				<h4>{$lng['pwdreminder']['choosenew']}</h4>
				<if $message != ''>
					<div class="alert alert-danger text-left">
						<b>{$lng['error']['error']}</b> $message
					</div>
				</if>
			</header>

			<div class="row">
				<div class="col-xs-12 col-sm-10 col-md-8 col-lg-5 col-sm-offset-1 col-md-offset-2 col-lg-offset-3 panel">
					<form method="post" class="form-horizontal" action="{$filename}?action=resetpwd&resetcode={$activationcode}" enctype="application/x-www-form-urlencoded">						
						<div class="form-group">
							<label for="new_password" class="col-xs-12 col-sm-4 col-md-4 col-lg-4 control-label">{$lng['changepassword']['new_password']}</label>
							<div class="col-xs-12 col-sm-8 col-md-8 col-lg-8">
								<input type="password" class="form-control" name="new_password" id="new_password" placeholder="" required/>
							</div>
						</div>

						<div class="form-group">
							<label for="new_password_confirm" class="col-xs-12 col-sm-4 col-md-4 col-lg-4 control-label">{$lng['changepassword']['new_password_confirm']}</label>
							<div class="col-xs-12 col-sm-8 col-md-8 col-lg-8">
								<input type="password" class="form-control" name="new_password_confirm" id="new_password_confirm" placeholder="" required/>
							</div>
						</div>

						<div class="form-group">
							<div class="col-xs-7 col-sm-9 col-md-9 col-lg-9 col-sm-offset-3 col-md-offset-3 col-lg-offset-3">
								<input type="hidden" name="action" value="$action" />
								<input type="hidden" name="send" value="send" />
								<button type="submit" class="btn btn-primary">{$lng['login']['remind']}</button>&nbsp;
								<a class="btn btn-default" href="index.php">{$lng['login']['backtologin']}</a>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</article>
$footer
