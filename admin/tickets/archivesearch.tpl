$header
	<article class="col-sm-9 col-md-10 col-lg-10">
		<div class="row">
			<header class="col-sm-12 col-md-12 col-lg-12">
				<h2>
					<span class="icon-ticket"></span>&nbsp;
					{$lng['ticket']['archivesearch']}
				</h2>
			</header>
		</div>

		<div class="row">
			<div class="col-sm-12 col-md-12 col-lg-12">
				<form action="{$linker->getLink(array('section' => 'tickets'))}" method="post">
					<table class="table table-responsive">
			      		<if 0 < $tickets_count >
							<tr>
								<th class="field_display_border_left">{$lng['ticket']['archivedtime']}</th>
								<th class="field_display">{$lng['ticket']['ticket_answers']}</th>
								<th class="field_display">{$lng['ticket']['subject']}</th>
								<th class="field_display">{$lng['ticket']['lastreplier']}</th>
								<th class="field_display">{$lng['ticket']['priority']}</th>
				        		<th class="field_display_search">&nbsp;</th>
							</tr>
							$tickets
			      		</if>
			      		<if $tickets_count < 1 >
			        		<tr>
								<td class="field_display_border_left" colspan="6">{$lng['ticket']['noresults']}</td>
							</tr>
						</if>
					</table>

					<input type="hidden" name="s" value="$s"/>
					<input type="hidden" name="page" value="$page"/>
					<input type="hidden" name="send" value="send" />
				</form>
			</div>
		</div>
	</article>
$footer
