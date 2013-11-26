$header
	<article class="col-sm-9 col-md-10 col-lg-10">
		<div class="row">
			<header class="col-sm-12 col-md-12 col-lg-12">
				<h2>
					<a href="#" id="articlehead"></a><span class="icon-insert-template"></span>&nbsp;
					{$lng['menue']['main']['changetheme']}
				</h2>
			</header>
		</div>
		<div class="row">
			<div class="col-sm-12 col-md-12 col-lg-12">
				<form method="post" action="{$linker->getLink(array('section' => 'index'))}" enctype="application/x-www-form-urlencoded">
					<if isset($json_infos)>
						<script type="text/javascript">
							var themeDescriptions = {$json_infos};
						</script>
					</if>
					<div class="table-responsive ">
						<table class="table theme-table">
							<colgroup>
								<col class="col-xs-3">
								<col class="col-xs-9">
							</colgroup>
							<thead>
								<tr>
									<td><label for="theme">{$lng['panel']['theme']}:</label></td>
									<td>
										<div class="col-xs-9">
											<select id="theme" class="form-control" name="theme">
												$theme_options
											</select>
										</div>
									</td>
								</tr>
							</thead>
							<tbody id="themetable">
							</tbody>						
							<tfoot>
								<tr>
									<td>&nbsp;</td>
									<td style="text-align:left;">
										<input type="submit" class="btn btn-primary btn-success" value="{$lng['menue']['main']['changetheme']}" />
									</td>
								</tr>
							</tfoot>
						</table>
						<input type="hidden" name="s" value="$s" />
						<input type="hidden" name="page" value="$page" />
						<input type="hidden" name="send" value="send" />
					</div>
				</form>
			</div>
		</div>
	</article>
$footer
