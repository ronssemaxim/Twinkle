$header
	<article class="col-sm-9 col-md-10 col-lg-10">
		<div class="row">
			<header class="col-sm-12 col-md-12 col-lg-12">
				<h2>
					<a href="#" id="articlehead"></a><span class="icon-users3"></span>&nbsp;
					{$title}
				</h2>
			</header>
		</div>

		<div class="row">
			<div class="col-sm-12 col-md-12 col-lg-12">
				<form action="{$linker->getLink(array('section' => 'admins'))}" method="post" enctype="application/x-www-form-urlencoded">
					<table class="table table-responsive" id="admin_add">
						<colgroup>
							<col class="col-xs-4">
							<col class="col-xs-8">
						</colgroup>
						{$admin_add_form}
					</table>

					<input type="hidden" name="s" value="$s" />
					<input type="hidden" name="page" value="$page" />
					<input type="hidden" name="action" value="$action" />
					<input type="hidden" name="send" value="send" />
				</form>
			</div>
		</div>
	
		<div class="row">
			<div class="col-sm-12 col-md-12 col-lg-12">
				<span style="color:#ff0000;">*</span>: {$lng['admin']['valuemandatory']}<br />
			</div>>
		</div>
	</article>
$footer
