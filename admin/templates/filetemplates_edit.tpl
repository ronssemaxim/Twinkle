$header
	<article class="col-sm-9 col-md-10 col-lg-10">
		<div class="row">
			<header class="col-sm-12 col-md-12 col-lg-12">
				<h2>
					<span class="icon-file-xml"></span>&nbsp;
					{$title}
				</h2>
			</header>
		</div>

		<div class="row">
			<div class="col-sm-12 col-md-12 col-lg-12">	
				<form action="{$linker->getLink(array('section' => 'templates'))}" method="post" enctype="application/x-www-form-urlencoded">
					<table class="table table-responsive">
						{$filetemplate_edit_form}
					</table>

					<input type="hidden" name="s" value="$s" />
					<input type="hidden" name="page" value="$page" />
					<input type="hidden" name="action" value="$action" />
					<input type="hidden" name="id" value="$id" />
					<input type="hidden" name="filesend" value="filesend" />
				</form>
			</div>
		</div>
		
		<div class="row">
			<header class="col-sm-12 col-md-12 col-lg-12">
				<h3>
					<span class="icon-info"></span>&nbsp;
					{$lng['admin']['templates']['template_replace_vars']}
				</h3>
			</header>
		</div>	
		
		<div class="row">
			<div class="col-sm-12 col-md-12 col-lg-12">	
				<table class="table table-responsive">
					<thead>
						<tr>
							<th>{$lng['panel']['variable']}</th>
							<th>{$lng['panel']['description']}</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td colspan="2">
								<strong>{$lng['admin']['templates']['index_html']}</strong>
							</td>
						</tr>
						<tr>
							<td><em>{SERVERNAME}</em></td>
							<td>{$lng['admin']['templates']['SERVERNAME']}</td>
						</tr>
						<tr>
							<td><em>{CUSTOMER}</em></td>
							<td>{$lng['admin']['templates']['CUSTOMER']}</td>
						</tr>
						<tr>
							<td><em>{ADMIN}</em></td>
							<td>{$lng['admin']['templates']['ADMIN']}</td>
						</tr>
						<tr>
							<td><em>{CUSTOMER_EMAIL}</em></td>
							<td>{$lng['admin']['templates']['CUSTOMER_EMAIL']}</td>
						</tr>
						<tr>
							<td><em>{ADMIN_EMAIL}</em></td>
							<td>{$lng['admin']['templates']['ADMIN_EMAIL']}</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</article>
$footer
