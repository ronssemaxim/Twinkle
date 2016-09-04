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
				<form action="$filename" method="get" enctype="application/x-www-form-urlencoded" class="form-horizontal" id="wizzard">
					<div class="form-group col-xs-12 col-sm-12 col-md-12 col-lg-12">
						<div class="col-xs-12 col-sm-12 col-md-3 col-lg-3">
							<label class="control-label">{$lng['admin']['configfiles']['distribution']}</label>
						</div>
						<div class="col-xs-12 col-sm-12 col-md-9 col-lg-7">
							<if $distribution != ''>
								<input type="hidden" name="distribution" value="$distribution"/>
								<a href="{$linker->getLink(array('section' => 'configfiles', 'page' => $page))}">{$dist_display} <span class="icon-checkmark"></span></a>
							<else>
								<select class="form-control" id="config_distribution" name="distribution">
									<option value="choose">{$lng['admin']['configfiles']['choosedistribution']}</option>
									{$distributions_select}
								</select>
							</if>
						</div>
					</div>

					<div class="form-group col-xs-12 col-sm-12 col-md-12 col-lg-12">
						<div class="col-xs-12 col-sm-12 col-md-3 col-lg-3">
							<label class="control-label">{$lng['admin']['configfiles']['service']}</label>
						</div>
						<div class="col-xs-12 col-sm-12 col-md-9 col-lg-7">
							<if $service != ''>
								<input type="hidden" name="service" value="$service"/>
								<a href="{$linker->getLink(array('section' => 'configfiles', 'page' => $page, 'distribution' => $distribution))}">{$services[$service]->title} <span class="icon-checkmark"></span></a> <small><span class="icon-point-left"></span> Click again to change the service or go ahead</small>
							<else>
								<select class="form-control" id="config_service" name="service">
									<option value="choose">{$lng['admin']['configfiles']['chooseservice']}</option>
									{$services_select}
								</select>
							</if>
						</div>
					</div>					
							
					<div class="form-group col-xs-12 col-sm-12 col-md-12 col-lg-12">
						<div class="col-xs-12 col-sm-12 col-md-3 col-lg-3">
							<label class="control-label">{$lng['admin']['configfiles']['daemon']}</label>
						</div>
						<div class="col-xs-12 col-sm-12 col-md-9 col-lg-7">
							<select class="form-control" id="config_daemon" name="daemon">
								<option value="choose">{$lng['admin']['configfiles']['choosedaemon']}</option>
								{$daemons_select}
							</select>
						</div>
					</div>

					<div class="form-group">
						<div class="col-xs-7 col-sm-7 col-md-10 col-lg-9 col-xs-offset-5 col-sm-offset-5 col-md-offset-2 col-lg-offset-3">
							<input type="submit" class="btn btn-primary btn-lg" value="{$lng['panel']['next']}" />
						</div>
					</div>	
					
					<input type="hidden" name="s" value="$s" />
					<input type="hidden" name="page" value="$page" />
				</form>
			</div>
		</div>
	</article>
$footer
