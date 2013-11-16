$header
	<article class="col-sm-9 col-md-10 col-lg-10">
		<div class="row">
			<header class="col-sm-12 col-md-12 col-lg-12">
				<h2>
					<a href="#" id="articlehead"></a><span class="icon-users2"></span>&nbsp;
					{$title}
				</h2>
			</header>
		</div>

		<div class="row">
			<div class="col-sm-12 col-md-12 col-lg-12">
				<form action="{$linker->getLink(array('section' => 'ftp'))}" method="post" enctype="application/x-www-form-urlencoded">
					<table class="table table-responsive" id="ftp_add">
						<colgroup>
							<col class="col-xs-4">
							<col class="col-xs-8">
						</colgroup>
						{$ftp_add_form}
					</table>

				
					<input type="hidden" name="s" value="$s" />
					<input type="hidden" name="page" value="$page" />
					<input type="hidden" name="action" value="$action" />
					<input type="hidden" name="send" value="send" />
				</form>
			</div>
		</div>
	</article>
$footer
