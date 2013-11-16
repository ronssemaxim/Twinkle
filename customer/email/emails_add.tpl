$header
	<article class="col-sm-9 col-md-10 col-lg-10">
		<div class="row">
			<header class="col-sm-12 col-md-12 col-lg-12">
				<h2>
					<a href="#" id="articlehead"></a><span class="icon-mail3"></span>&nbsp;
					{$title}
				</h2>
			</header>
		</div>

		<div class="row">
			<div class="col-sm-12 col-md-12 col-lg-12">
				<if $domains == ''>
					<div class="alert alert-success">
						<p><b>{$lng['admin']['warning']}</b></p>
        				<p>{$lng['emails']['noemaildomainaddedyet']}</p>
      				</div>
				<else>
					<form action="{$linker->getLink(array('section' => 'email'))}" method="post" enctype="application/x-www-form-urlencoded">		
						<table class="table table-responsive" id="email_add">
							<colgroup>
								<col class="col-xs-4">
								<col class="col-xs-8">
							</colgroup>
							{$email_add_form}
						</table>

						<input type="hidden" name="s" value="$s" />
						<input type="hidden" name="page" value="$page" />
						<input type="hidden" name="action" value="$action" />
						<input type="hidden" name="send" value="send" />
					</form>
				</if>
			</div>
		</div>
	</article>
$footer
