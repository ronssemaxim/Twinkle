$header
	<article class="col-sm-9 col-md-10 col-lg-10">
		<div class="row">
			<header class="col-sm-12 col-md-12 col-lg-12">
				<h2>
					<a href="#" id="articlehead"></a><span class="icon-ticket"></span>&nbsp;
					{$title}
				</h2>
			</header>
		</diV>

		<if 0 < $isclosed >
			<div class="alert alert-danger fade in">
				<h4><span class="icon-info"></span> {$lng['ticket']['ticket_reopen']}</h4>
				<p>
					<a class="btn btn-primary" href="{$linker->getLink(array('section' => 'tickets', 'page' => 'tickets', 'action' => 'reopen', 'id' => $id))}"> {$lng['ticket']['ticket_reopen']}</a>
				</p>
			</div>
		</if>

		<if 0 < $ticket_replies_count >
			$ticket_replies
		</if>

		<div class="row">
			<div class="col-sm-12 col-md-12 col-lg-12">
				<form action="{$linker->getLink(array('section' => 'tickets'))}" method="post" enctype="application/x-www-form-urlencoded" class="form-horizontal">
					{$ticket_reply_form}

					<input type="hidden" name="s" value="$s" />
					<input type="hidden" name="page" value="$page" />
					<input type="hidden" name="action" value="$action" />
					<input type="hidden" name="id" value="$id" />
					<input type="hidden" name="send" value="send" />
				</form>
			</div>
		</div>
	</article>
$footer
