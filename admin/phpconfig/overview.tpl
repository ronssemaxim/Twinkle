$header
	<article class="col-sm-9 col-md-10 col-lg-10">
		<div class="row">
			<header class="col-sm-12 col-md-12 col-lg-12">
				<h2>
					<a href="#" id="articlehead"></a><span class="icon-cog2"></span>&nbsp;
					{$lng['menue']['phpsettings']['maintitle']}
				</h2>
			</header>
		</div>

		<div class="row middle">
			<div class="col-sm-12 col-md-12 col-lg-12">
				<a href="{$linker->getLink(array('section' => 'phpsettings', 'page' => $page, 'action' => 'add'))}" class="btn btn-link"><span class="icon-plus"></span> {$lng['admin']['phpsettings']['addnew']}</a>
			</div>
		</div>

		<div class="row">
			<div class="col-sm-12 col-md-12 col-lg-12">
				<table class="table table-responsive">
					<thead>
						<tr>
							<th>{$lng['admin']['phpsettings']['description']}</th>
							<th>{$lng['admin']['phpsettings']['activedomains']}</th>
							<th>{$lng['admin']['phpsettings']['binary']}</th>
							<th>{$lng['admin']['phpsettings']['file_extensions']}</th>
							<th>{$lng['panel']['options']}</th>
					</thead>
					<tbody>
						$tablecontent
					</tbody>
				</table>
			</div>
		</div>

		<div class="row">
			<div class="col-sm-12 col-md-12 col-lg-12">
				<if 15 < $count>
					<a href="{$linker->getLink(array('section' => 'phpsettings', 'page' => $page, 'action' => 'add'))}" class="btn btn-link"><span class="icon-plus"></span> {$lng['admin']['phpsettings']['addnew']}</a>
				</if>
			</div>
		</div>
	</article>
$footer
