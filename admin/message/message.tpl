$header
	<article class="col-sm-9 col-md-10 col-lg-10">
		<div class="row">
			<header class="col-sm-12 col-md-12 col-lg-12">
				<h2>
					<a href="#" id="articlehead"></a><span class="icon-share"></span>&nbsp;
					{$lng['admin']['message']}
				</h2>
			</header>
		</div>

		<div class="row">
			<div class="col-sm-12 col-md-12 col-lg-12">
				<if 0 < $success >
					<div class="alert alert-success fade in">
						<h4><span class="icon-checkmark"></span> {$lng['success']['success']}</h4>
						<p>{$successmessage}</p>
					</div>
				</if>

				<form action="$filename" method="post" enctype="application/x-www-form-urlencoded" id="message_send" class="form-horizontal">
					<div class="form-group">
						<label for="receipient" class="control-label col-xs-12 col-sm-12 col-md-3 col-lg-3">{$lng['admin']['receipient']}</label>
						<div class="col-xs-12 col-sm-12 col-md-7 col-lg-7">
							<select class="form-control" name="receipient" id="receipient">$receipients</select>
						</div>
					</div>

					<div class="form-group">
						<label for="subject" class="control-label col-xs-12 col-sm-12 col-md-3 col-lg-3">{$lng['admin']['subject']}</label>
						<div class="col-xs-12 col-sm-12 col-md-7 col-lg-7">
							<input class="form-control" type="text" name="subject" id="subject" value="{$lng['admin']['nosubject']}"/>
						</div>
					</div>

					<div class="form-group">
						<label for="subject" class="control-label col-xs-12 col-sm-12 col-md-3 col-lg-3">{$lng['admin']['text']}</label>
						<div class="col-xs-12 col-sm-12 col-md-7 col-lg-7">
							<textarea class="form-control" rows="12" name="message" id="message"></textarea>
						</div>
					</div>
					
					<div class="col-md-offset-3 col-lg-offset-3">
						<input type="submit" class="btn btn-default btn-success" value="{$lng['panel']['send']}" />
					</div>
					
					

					<input type="hidden" name="s" value="$s"/>
					<input type="hidden" name="page" value="$page"/>
					<input type="hidden" name="action" value="$action"/>
					<input type="hidden" name="send" value="send"/>
				</form>
			</div>
		</div>
	</article>
$footer
