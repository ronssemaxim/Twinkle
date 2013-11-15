$header
	<article class="col-sm-9 col-md-10 col-lg-10">
		<div class="row">
			<header class="col-sm-12 col-md-12 col-lg-12">
				<h4>
					&nbsp;
				</h4>
			</header>
		</div>

		<div class="row">
			<div class="col-sm-12 col-md-12 col-lg-12">
				<form action="$yesfile" method="post">
					<div class="alert alert-danger fade in">
						<h4><span class="icon-question2"></span> {$lng['question']['question']}</h4>
						<p>$text</p>
						<p>
							<input type="submit" class="btn btn-primary btn-danger" name="submitbutton" value="{$lng['panel']['yes']}" />&nbsp;
							<input type="button" class="btn btn-primary btn-default" value="{$lng['panel']['no']}" id="yesnobutton" />
						</p>
					</div>

					<input type="hidden" name="s" value="$s" />
					<input type="hidden" name="send" value="send" />
					{$hiddenparams}
				</form>
			</div>
		</div>
	</article>
$footer
