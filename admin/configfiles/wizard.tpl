$header
	<article class="col-sm-9 col-md-10 col-lg-10">
		<div class="row">
			<header class="col-sm-12 col-md-12 col-lg-12">
				<h2>
					<a href="#" id="articlehead"></a><span class="icon-cog"></span>&nbsp;
					{$lng['admin']['configfiles']['serverconfiguration']}&nbsp;
					<small>
						[<a href="{$linker->getLink(array('section' => 'configfiles', 'page' => 'overview'))}">{$lng['admin']['configfiles']['overview']}</a>]
					</small>
				</h2>
			</header>
		</div>

		<div class="row">
			<div class="col-sm-12 col-md-12 col-lg-12">
				<form action="$filename" method="get" enctype="application/x-www-form-urlencoded">
					<table class="table table-responsive">
						<tr>
							<td><b>{$lng['admin']['configfiles']['distribution']}:</b></td>
							<td>
								<if $distribution != ''>
									<input type="hidden" name="distribution" value="$distribution"/>
									<a href="{$linker->getLink(array('section' => 'configfiles', 'page' => $page))}">{$configfiles[$distribution]['label']}</a>
								<else>
									<div class="col-xs-6">
										<select class="form-control" id="config_distribution" name="distribution">
											<option value="choose">{$lng['admin']['configfiles']['choosedistribution']}</option>
											{$distributions_select}
										</select>
									</div>
								</if>
							</td>
						</tr>
						<tr>
							<td><b>{$lng['admin']['configfiles']['service']}:</b></td>
							<td>
								<if $service != ''>
									<input type="hidden" name="service" value="$service"/>
									<a href="{$linker->getLink(array('section' => 'configfiles', 'page' => $page, 'distribution' => $distribution))}">{$configfiles[$distribution]['services'][$service]['label']}</a>
								<else>
									<div class="col-xs-6">
										<select class="form-control" id="config_service" name="service">
											<option value="choose">{$lng['admin']['configfiles']['chooseservice']}</option>
											{$services_select}
										</select>
									</div>
								</if>
							</td>
						</tr>
						<tr>
							<td><b>{$lng['admin']['configfiles']['daemon']}:</b></td>
							<td>
								<div class="col-xs-6">
									<select class="form-control" id="config_daemon" name="daemon">
										<option value="choose">{$lng['admin']['configfiles']['choosedaemon']}</option>
										{$daemons_select}
									</select>
								</div>
							</td>
						</tr>
						<tfoot>
							<tr>
								<td>&nbsp;</td>
								<td style="text-align:left;">
									<input type="submit" class="btn btn-primary" value="{$lng['panel']['next']}" />
								</td>
							</tr>
						</tfoot>
					</table>
					<input type="hidden" name="s" value="$s" />
					<input type="hidden" name="page" value="$page" />
				</form>
			</div>
		</div>
	</article>
$footer
