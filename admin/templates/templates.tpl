$header
	<article class="col-sm-9 col-md-10 col-lg-10">
		<div class="row">
			<header class="col-sm-12 col-md-12 col-lg-12">
				<h2>
					<a href="#" id="articlehead"></a><span class="icon-envelop"></span>&nbsp;
					{$lng['admin']['templates']['templates']}
				</h2>
			</header>
		</div>

		<div class="row">
			<div class="col-sm-12 col-md-12 col-lg-12">
				<if $add>
					<a href="{$linker->getLink(array('section' => 'templates', 'page' => $page, 'action' => 'add'))}"  class="btn btn-link"><span class="icon-plus"></span> {$lng['admin']['templates']['template_add']}</a>
				</if>
				<div class="table-responsive">
					<table class="table">
						<thead>
							<tr>
								<th>{$lng['login']['language']}</th>
								<th>{$lng['admin']['templates']['action']}</th>
								<th>{$lng['panel']['options']}</th>
							</tr>
						</thead>
						<tbody>
							{$templates}
						</tbody>
					</table>
				</div>
			</div>
		</div>

		<div class="row">
			<header class="col-sm-12 col-md-12 col-lg-12">
				<h2>
					<span class="icon-file-xml"></span>&nbsp;
					{$lng['admin']['templates']['filetemplates']}
				</h2>
			</header>
		</div>
		
		<div class="row">
			<div class="col-sm-12 col-md-12 col-lg-12">
				<if $filetemplateadd>
					<a href="{$linker->getLink(array('section' => 'templates', 'page' => $page, 'action' => 'add', 'files' => 'files'))}" class="btn btn-link"><span class="icon-plus"></span>  {$lng['admin']['templates']['template_add']}</a>
				</if>
			
				<table class="table table-responsive">
					<thead>
						<tr>
							<th>{$lng['admin']['templates']['action']}</th>
							<th>&nbsp;</th>
							<th>{$lng['panel']['options']}</th>
						</tr>
					</thead>
					<tbody>
						{$filetemplates}
					</tbody>
				</table>
			</div>
		</div>
	</article>
$footer
