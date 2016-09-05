$header
	<article class="col-sm-9 col-md-10 col-lg-10">
		<div class="row">
			<header class="col-sm-12 col-md-12 col-lg-12">
				<h2>
					<a href="#" id="articlehead"></a><span class="icon-cog"></span>&nbsp;
					{$dist_display}
					<small>
						[<a href="{$linker->getLink(array('section' => 'configfiles', 'page' => $page, 'distribution' => $distribution, 'service' => $service))}">{$lng['panel']['back']}</a>]
					</small>
				</h2>
			</header>
		</div>

		<div class="row">
			<div class="col-sm-12 col-md-12 col-lg-12">
				<ol class="breadcrumb">
				  <li>{$dist_display}</li>
				  <li>{$services[$service]->title}</li>
				  <li class="active">{$daemons[$daemon]->title}</li>
				</ol>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-12 col-md-12 col-lg-12">
				<div class="text-muted">
					<p>{$lng['admin']['configfiles']['legend']}</p><br />
					<p>
						{$lng['admin']['configfiles']['commands']}<br />
						<textarea class="shell form-control" rows="2" readonly>
	chmod u+x example-script.sh
	./example-script.sh</textarea>
					</p><br />
				</div>
				<p>
					{$lng['admin']['configfiles']['files']}
				</p>
				<form id="configfiles_setmysqlpw" action="#" class="form-horizontal">
					<div class="form-group has-warning">
						<label for="configfiles_mysqlpw" class="col-xs-12 col-sm-3 col-md-3 col-lg-3 control-label">MYSQL_PASSWORD: </label>
						<div class="col-xs-12 col-sm-9 col-md-9 col-lg-9">
							<input type="text" class="form-control" name="configfiles_mysqlpw" id="configfiles_mysqlpw" placeholder="" value="" />
						</div>
					</div>

					<div class="form-group">
						<div class="col-xs-7 col-sm-9 col-md-9 col-lg-9 col-sm-offset-3 col-md-offset-3 col-lg-offset-3">
							<input type="submit" class="btn btn-primary" value="{$lng['panel']['set']}" />
						</div>
					</div>
				</form>
			</div>
		</div>

		<div class="row">
			<div class="col-sm-12 col-md-12 col-lg-12">
				{$configpage}
			</div>
		</div>
	</article>
$footer
