$header
	<article class="col-sm-9 col-md-10 col-lg-10">
		<div class="row">
			<header class="col-sm-12 col-md-12 col-lg-12">
				<h2>
					<a href="#" id="articlehead"></a><span class="icon-globe2"></span>&nbsp;
					{$title}
				</h2>
			</header>
		</div>

		<div class="row">
			<div class="col-sm-12 col-md-12 col-lg-12">
				<form action="{$linker->getLink(array('section' => 'domains'))}" method="post" enctype="application/x-www-form-urlencoded" id="domain_edit" role="form" class="form-horizontal">
					
					{$domain_edit_form}

					<input type="hidden" name="delete_statistics_str" id="delete_statistics_str" value="{$lng['admin']['delete_statistics']}">
					<input type="hidden" name="speciallogverified" id="speciallogverified" value="0" />
					<input type="hidden" name="s" value="$s" />
					<input type="hidden" name="page" value="$page" />
					<input type="hidden" name="action" value="$action" />
					<input type="hidden" name="id" value="$id" />
					<input type="hidden" name="send" value="send" />
				</form>
			</div>
		</div>

		<div class="row">
			<div class="col-sm-12 col-md-12 col-lg-12">
				<span style="color:#ff0000;">*</span>: {$lng['admin']['valuemandatory']}<br />
				<span style="color:#ff0000;">**</span>: {$lng['admin']['valuemandatorycompany']}
			</div>
		</div>
	</article>

	<div class="modal fade" id="speciallogfilewarningmodal" tabindex="-1" role="dialog" aria-labelledby="" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">{$lng['admin']['delete_statistics']}</h4>
				</div>
				<div class="modal-body">
					{$speciallogwarning}
					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
						<input type="text" class="form-control" name="delete_stats" id="delete_stats" placeholder="Sicherheitsabfrage">&nbsp;
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary" id="speciallogyesbutton">{$lng['panel']['delete']}</button>
					<button type="button" class="btn btn-default" data-dismiss="modal" id="speciallognobutton">{$lng['panel']['cancel']}</button>
				</div>
			</div>
		</div>
	</div>
$footer
