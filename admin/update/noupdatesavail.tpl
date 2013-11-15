$header
	<article class="col-sm-9 col-md-10 col-lg-10">
		<div class="row">
			<header class="col-sm-12 col-md-12 col-lg-12">
				<h2>
					<span class="icon-lightning"></span>&nbsp;
				</h2>
			</header>
		</div>

		<div class="row">
			<div class="col-sm-12 col-md-12 col-lg-12">
				<div class="alert alert-success fade in">
					<h4><span class="icon-checkmark"></span> {$lng['update']['update']}</h4>
					<p>{$successmessage}</p>
					<if $redirect_url != ''>
						<a class="btn btn-primary" href="{$redirect_url}">{$lng['success']['clickheretocontinue']}</a>
					</if>
				</div>
			</div>
		</div>
	</article>
$footer
