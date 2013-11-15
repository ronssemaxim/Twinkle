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
				<div class="alert alert-success fade in">
					<h4><span class="icon-error"></span> {$lng['success']['success']}</h4>
					<p>$success_message</p>
					<p>
						<if $redirect_url != ''>
							<a href="{$redirect_url}">{$lng['success']['clickheretocontinue']}</a>
						</if>
					</p>
				</div>
			</div>
		</div>
	</article>
$footer
