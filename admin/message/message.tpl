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

				<form action="$filename" method="post" enctype="application/x-www-form-urlencoded">
					<table class="table table-responsive" id="message_send">
						<colgroup>
							<col class="col-xs-4 col-sm-6 col-md-4 col-lg-4">
							<col class="col-xs-8 col-sm-6 col-md-8 col-lg-8">
						</colgroup>
						<tr>
							<td><label for="receipient">{$lng['admin']['receipient']}</label></td>
							<td><select class="form-control" name="receipient" id="receipient">$receipients</select></td>
						</tr>
						<tr>
							<td><label for="subject">{$lng['admin']['subject']}</label></td>
							<td><input class="form-control" type="text" name="subject" id="subject" value="{$lng['admin']['nosubject']}"/></td>
						</tr>
						<tr>
							<td><label for="message">{$lng['admin']['text']}</label></td>
							<td><textarea class="form-control" rows="12" name="message" id="message"></textarea></td>
						</tr>
						<tfoot>
							<tr>
								<td align="right" colspan="2">
									<input type="submit" class="btn btn-default btn-success" value="{$lng['panel']['send']}" />
								</td>
							</tr>
						</tfoot>
					</table>

					<input type="hidden" name="s" value="$s"/>
					<input type="hidden" name="page" value="$page"/>
					<input type="hidden" name="action" value="$action"/>
					<input type="hidden" name="send" value="send"/>
				</form>
			</div>
		</div>
	</article>
$footer
