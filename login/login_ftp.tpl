	<article class="col-xs-12 col-sm-12 col-md-12 col-lg-12">

		<div class="row">
			<header class="col-xs-12 col-sm-10 col-md-8 col-lg-5 col-sm-offset-1 col-md-offset-2 col-lg-offset-3 text-center">
				<p>
					<img src="{$header_logo}" alt="Froxlor Server Management Panel" />
				</p>

				<if $update_in_progress !== ''>
					<div class="alert alert-danger text-left">
						{$update_in_progress}
					</div>
				</if>

				<if $successmessage != ''>
					<div class="alert alert-success text-left">
						<b>{$lng['success']['success']}</b> $successmessage
					</div>
				</if>

				<if $message != ''>
					<div class="alert alert-danger text-left">
						<b>{$lng['error']['error']}</b> $message
					</div>
				</if>
			</header>
		</div>

		<div class="row">
			<div class="col-xs-12 col-sm-10 col-md-8 col-lg-5 col-sm-offset-1 col-md-offset-2 col-lg-offset-3 panel">
				<form method="post" class="form-horizontal" action="$filename" enctype="application/x-www-form-urlencoded">
					<p>WebFTP Login</p>

					<div class="form-group">
						<label for="loginname" class="col-xs-12 col-sm-3 col-md-3 col-lg-3 control-label">{$lng['login']['username']}</label>
						<div class="col-xs-12 col-sm-9 col-md-9 col-lg-9">
							<input type="text" class="form-control" name="loginname" id="loginname" placeholder="" required>
						</div>
					</div>

					<div class="form-group">
						<label for="password" class="col-xs-12 col-sm-3 col-md-3 col-lg-3 control-label">{$lng['login']['password']}</label>
						<div class="col-xs-12 col-sm-9 col-md-9 col-lg-9">
							<input type="password" class="form-control" name="password" id="password" placeholder="" required>
						</div>
					</div>

					<div class="form-group">
						<label for="language" class="col-xs-12 col-sm-3 col-md-3 col-lg-3 control-label">{$lng['login']['language']}</label>
						<div class="col-xs-12 col-sm-9 col-md-9 col-lg-9">
							<select name="language" id="language" class="form-control">
								$language_options
							</select>
						</div>
					</div>

					<div class="form-group">
						<div class="col-xs-7 col-sm-9 col-md-9 col-lg-9 col-sm-offset-3 col-md-offset-3 col-lg-offset-3">
							<input type="hidden" name="send" value="send" />
							<button type="submit" value="{t}Login{/t}" class="btn btn-primary">{$lng['login']['login']}</button>
						</div>
					</div>
					<div class="form-group">
						<div class="col-xs-7 col-sm-9 col-md-9 col-lg-9 col-sm-offset-3 col-md-offset-3 col-lg-offset-3">
							<if $settings['panel']['allow_preset'] == '1'>
								<a href="$filename?action=forgotpwd">{$lng['login']['forgotpwd']}</a>
							<else>
								&nbsp;
							</if>
						</div>
					</div>
				</form>
			</div>
		</div>
	</article