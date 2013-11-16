$header
	<article class="col-sm-9 col-md-10 col-lg-10">
		<div class="row">
			<header class="col-sm-12 col-md-12 col-lg-12">
				<h2>
					<a href="#" id="articlehead"></a><span class="icon-lightning"></span>&nbsp;
					{$lng['update']['update']}
				</h2>
			</header>
		</div>
	
		<div class="row">
			<div class="col-sm-12 col-md-12 col-lg-12">
				<form action="{$linker->getLink(array('section' => 'updates'))}" method="post">
					{$update_information}
					<input type="submit" class="btn btn-primary" value="{$lng['update']['proceed']}" />
			
					<input type="hidden" name="s" value="$s"/>
					<input type="hidden" name="page" value="$page"/>
					<input type="hidden" name="send" value="send" />				
				</form>
			</div>
		</div>
	</article>
$footer
