$header
	<article class="col-sm-9 col-md-10 col-lg-10">
		<div class="row">
			<header class="col-sm-12 col-md-12 col-lg-12">
				<h2>
					<span class="icon-mail3"></span>&nbsp;
					{$title}
				</h2>
			</header>
		</div>

		<div class="row">
			<div class="col-sm-12 col-md-12 col-lg-12">
				<form action="{$linker->getLink(array('section' => 'email'))}" method="post" enctype="application/x-www-form-urlencoded">
					<table class="table table-responsive" id="email_edit">
						{$email_edit_form}
						<tr>
							<td class="maintitle" colspan="2">
								<a href="{$linker->getLink(array('section' => 'email', 'page' => 'emails'))}">{$lng['emails']['back_to_overview']}</a>
							</td>
						</tr>
					</table>
				</form>
			</div>
		</div>
	</article>
$footer
