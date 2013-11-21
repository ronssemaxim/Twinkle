$header
	<article class="col-sm-9 col-md-10 col-lg-10">
		<div class="row">
			<header class="col-sm-12 col-md-12 col-lg-12">
				<h2>
					<a href="#" id="articlehead"></a><span class="icon-cog"></span>&nbsp;
					{$configfiles[$distribution]['label']}
					<small>
						[<a href="{$linker->getLink(array('section' => 'configfiles', 'page' => $page, 'distribution' => $distribution, 'service' => $service))}">{$lng['panel']['back']}</a>]
					</small>
				</h2>
			</header>
		</div>

		<div class="row">
			<div class="col-sm-12 col-md-12 col-lg-12">
				<ol class="breadcrumb">
				  <li>{$configfiles[$distribution]['label']}</li>
				  <li>{$configfiles[$distribution]['services'][$service]['label']}</li>
				  <li class="active">{$configfiles[$distribution]['services'][$service]['daemons'][$daemon]['label']}</li>
				</ol>
			</div>
		</div>

		<div class="row">
			<div class="col-sm-12 col-md-12 col-lg-12">
					{$configpage}
					<if $restart != ''>
						<div class="form-group col-xs-12 col-sm-12 col-md-12 col-lg-12">
							<h4>{$lng['admin']['configfiles']['restart']}</h4>
								<textarea class="form-control" rows="3" cols="70" readonly="readonly">$restart</textarea></td>
							</h4>
						</div>
					</if>
			</div>
		</div>
	</article>
$footer
