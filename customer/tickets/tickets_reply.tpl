$header
	<article class="col-sm-9 col-md-10 col-lg-10">
		<div class="row">
			<header class="col-sm-12 col-md-12 col-lg-12">
				<h2>
					<span class="icon-ticket"></span>&nbsp;
					{$title}
				</h2>
			</header>
		</div>

		<if 0 < $ticket_replies_count >
		$ticket_replies
		</if>

		<div class="row">
			<div class="col-sm-12 col-md-12 col-lg-12">
				<form action="{$linker->getLink(array('section' => 'tickets'))}" method="post" enctype="application/x-www-form-urlencoded">
					<if $isclosed < 1 >
						<table class="table table-responsive">
							{$ticket_reply_form}
						</table>
					</if>

					<if 0 < $isclosed >
						<a href="{$linker->getLink(array('section' => 'tickets', 'page' => 'tickets', 'action' => 'reopen', 'id' => $id))}">{$lng['ticket']['ticket_reopen']}</a>
					</if>

					
					<input type="hidden" name="s" value="$s" />
					<input type="hidden" name="page" value="$page" />
					<input type="hidden" name="action" value="$action" />
					<input type="hidden" name="send" value="send" />
					<input type="hidden" name="id" value="$id" />
				</form>
			</div>
		</div>
	</article>
$footer
