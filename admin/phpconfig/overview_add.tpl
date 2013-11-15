$header
	<article class="col-sm-9 col-md-10 col-lg-10">
		<div class="row">
			<header class="col-sm-12 col-md-12 col-lg-12">
				<h2>
					<span class="icon-cog2"></span>&nbsp;
					{$title}
				</h2>
			</header>
		</div>

		<div class="row">
			<div class="col-sm-12 col-md-12 col-lg-12">
				<form action="{$linker->getLink(array('section' => 'phpsettings'))}" method="post" enctype="application/x-www-form-urlencoded">
					<table class="table table-responsive">
						{$phpconfig_add_form}
					</table>

					<input type="hidden" name="s" value="$s" />
					<input type="hidden" name="page" value="$page" />
					<input type="hidden" name="action" value="$action" />
					<input type="hidden" name="send" value="send" />
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
								<strong>{$lng['admin']['phpconfig']['template_replace_vars']}</strong>
							</td>
						</tr>
						<tr>
							<td><em>{PEAR_DIR}</em></td>
							<td>{$lng['admin']['phpconfig']['pear_dir']}</td>
						</tr>
						<tr>
							<td><em>{OPEN_BASEDIR_C}</em></td>
							<td>{$lng['admin']['phpconfig']['open_basedir_c']}</td>
						</tr>
						<tr>
							<td><em>{OPEN_BASEDIR}</em></td>
							<td>{$lng['admin']['phpconfig']['open_basedir']}</td>
						</tr>
						<tr>
							<td><em>{OPEN_BASEDIR_GLOBAL}</em></td>
							<td>{$lng['admin']['phpconfig']['open_basedir_global']}</td>
						</tr>
						<tr>
							<td><em>{TMP_DIR}</em></td>
							<td>{$lng['admin']['phpconfig']['tmp_dir']}</td>
						</tr>
						<tr>
							<td><em>{CUSTOMER_EMAIL}</em></td>
							<td>{$lng['admin']['phpconfig']['customer_email']}</td>
						</tr>
						<tr>
							<td><em>{ADMIN_EMAIL}</em></td>
							<td>{$lng['admin']['phpconfig']['admin_email']}</td>
						</tr>
						<tr>
							<td><em>{DOMAIN}</em></td>
							<td>{$lng['admin']['phpconfig']['domain']}</td>
						</tr>
						<tr>
							<td><em>{CUSTOMER}</em></td>
							<td>{$lng['admin']['phpconfig']['customer']}</td>
						</tr>
						<tr>
							<td><em>{ADMIN}</em></td>
							<td>{$lng['admin']['phpconfig']['admin']}</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</article>
$footer
