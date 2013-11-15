$header
	<article class="col-sm-9 col-md-10 col-lg-10">
		<div class="row">
			<header class="col-sm-12 col-md-12 col-lg-12">
				<h2>
					<span class="icon-ticket"></span>&nbsp;
					{$lng['ticket']['ticket_show_archived']}
				</h2>
			</header>
		</div>

		<div class="row">
			<div class="col-sm-12 col-md-12 col-lg-12">
				<if 0 < $ticket_replies_count >
					$ticket_replies
				</if>
				<p>
					<a href="{$linker->getLink(array('section' => 'tickets', 'page' => 'archive', 'action' => 'delete', 'id' => $id))}"><span class="icon-remove"></span> {$lng['panel']['delete']}</a>
				</p>
			</div>
		</div>
	</article>
$footer
