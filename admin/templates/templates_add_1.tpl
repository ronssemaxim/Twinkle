$header
	<article class="col-sm-9 col-md-10 col-lg-10">
		<div class="row">
			<header class="col-sm-12 col-md-12 col-lg-12">
				<h2>
					<span class="icon-envelop"></span>&nbsp;
					{$lng['admin']['templates']['template_add']}
				</h2>
			</header>
		</div>

		<div class="row">
			<div class="col-sm-12 col-md-12 col-lg-12">
				<form method="post" action="{$linker->getLink(array('section' => 'templates'))}" enctype="application/x-www-form-urlencoded" class="form-horizontal">
					<div class="form-group">
						<label class="control-label col-sm-2" for="language">{$lng['login']['language']}:</label>
						<div class="col-sm-4">
							<select id="language" class="form-control" name="language">$language_options</select>
						</div>
					</div>

					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-4">
							<input type="submit" class="btn btn-primary" value="{$lng['panel']['next']}" />
						</div>
					</div>
		
					<input type="hidden" name="s" value="$s" />
					<input type="hidden" name="page" value="$page" />
					<input type="hidden" name="action" value="$action" />
					<input type="hidden" name="prepare" value="prepare" />
					
				</form>
			</div>
		</div>
	</article>
$footer
