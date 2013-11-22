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
				<form action="{$linker->getLink(array('section' => 'email'))}" method="post" enctype="application/x-www-form-urlencoded" id="email_edit" class="form-horizontal">

					{$email_edit_form}

					<div class="col-xs-12 col-sm-12 col-md-7 col-lg-7 col-md-offset-3 col-lg-offset-3">	
						<a class="btn btn-default" href="{$linker->getLink(array('section' => 'email', 'page' => 'emails'))}">{$lng['emails']['back_to_overview']}</a>
					</div>
				</form>
			</div>
		</div>
	</article>
$footer