	<article class="col-xs-12 col-sm-12 col-md-12 col-lg-12">

		<div class="row">
			<header class="col-xs-12 col-sm-10 col-md-8 col-lg-5 col-sm-offset-1 col-md-offset-2 col-lg-offset-3 text-center">
				<p>
					<img src="{$header_logo}" alt="Froxlor Server Management Panel" />
				</p>

				{if isset($successmessage)}
					<div class="alert alert-success text-left">
						<b>{t}Success{/t}</b> $successmessage
					</div>
				{/if}

				{if isset($message)}
					<div class="alert alert-danger text-left">
						<b><span class="icon-warning"></span>asd {t}Error{/t}</b> $message
					</div>
				{/if}
			</header>
		</div>

		<div class="row">
			<div class="col-xs-12 col-sm-10 col-md-8 col-lg-5 col-sm-offset-1 col-md-offset-2 col-lg-offset-3 panel">
				<form method="post" class="form-horizontal" action="webftp.php" enctype="application/x-www-form-urlencoded">
					<div class="form-group">
						<h3 class="col-xs-offset-4 col-sm-offset-4 col-md-offset-5 col-lg-offset-5">WebFTP Login</h3>
					</div>

					<div class="form-group">
						<label for="loginname" class="col-xs-12 col-sm-3 col-md-3 col-lg-3 control-label">{t}Username{/t}</label>
						<div class="col-xs-12 col-sm-9 col-md-9 col-lg-9">
							<input type="text" class="form-control" name="loginname" id="loginname" placeholder="" required>
						</div>
					</div>

					<div class="form-group">
						<label for="password" class="col-xs-12 col-sm-3 col-md-3 col-lg-3 control-label">{t}Password{/t}</label>
						<div class="col-xs-12 col-sm-9 col-md-9 col-lg-9">
							<input type="password" class="form-control" name="password" id="password" placeholder="" required>
						</div>
					</div>

					<div class="form-group">
						<div class="col-xs-7 col-sm-9 col-md-9 col-lg-9 col-sm-offset-3 col-md-offset-3 col-lg-offset-3">
							<input type="hidden" name="send" value="send" />							
							<button type="submit" value="{t}Login{/t}" class="btn btn-primary">{t}Login{/t}</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</article>