	<article class="col-sm-9 col-md-10 col-lg-10">
		<div class="row">
			<header class="col-sm-12 col-md-12 col-lg-12">
				<h2>
					<a href="#" id="articlehead"></a><span class="icon-cogs"></span>&nbsp;
					{$lng['admin']['serversettings']}&nbsp;
					<small>
						[<a href="$filename?page=overview&amp;part=&amp;s=$s">{$lng['admin']['configfiles']['compactoverview']}
						</a>]
					</small>
				</h2>
			</header>
		</div>
		
		<div class="row">
			<div class="col-sm-12 col-md-12 col-lg-12">
				$fields
					
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 id="servicedata">&nbsp;
						<input type="submit" class="btn btn-default btn-success pull-right" value="{$lng['panel']['save']}" />
						</h3>
					</div>
				</div>
			</div>
		</div>
	</article>
