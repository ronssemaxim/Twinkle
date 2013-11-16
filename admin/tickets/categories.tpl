$header
	<article class="col-sm-9 col-md-10 col-lg-10">
		<div class="row">
			<header class="col-sm-12 col-md-12 col-lg-12">
				<h2>
					<a href="#" id="articlehead"></a><span class="icon-ticket"></span>&nbsp;
					{$lng['menue']['ticket']['categories']}
				</h2>
			</header>
		</div>

		<div class="row middle">		
			<div class="col-sm-3 col-md-3 col-lg-3">
				<a href="{$linker->getLink(array('section' => 'tickets', 'page' => 'categories', 'action' => 'addcategory'))}" class="btn btn-link"><span class="icon-plus"></span> {$lng['ticket']['ticket_newcateory']}</a>
			</div>

			<div class="col-sm-9 col-md-9 col-lg-9">
				<div class="row">
					<form action="{$linker->getLink(array('section' => 'tickets'))}" method="post" enctype="application/x-www-form-urlencoded">
						{$searchcode}
						<input type="hidden" name="s" value="$s"/>
						<input type="hidden" name="page" value="$page"/>
						<input type="hidden" name="send" value="send" />
					</form>
				</div>
			</div>
		</div>

		<div class="row">
			<div class="col-sm-12 col-md-12 col-lg-12">
				<table class="table table-responsive">
					<thead>
						<tr>
							<th>{$lng['ticket']['category']}&nbsp;{$arrowcode['name']}</th>
							<th>{$lng['ticket']['logicalorder']}&nbsp;{$arrowcode['logicalorder']}</th>
							<th>{$lng['ticket']['ticketcount']}&nbsp;<if $categories_count < 0 >{$arrowcode['ticketcount']}</if></th>
							<th>{$lng['panel']['options']}</th>
						</tr>
					</thead>
					<if $pagingcode != ''>
						<tfoot>
							<tr>
								<td colspan="4">{$pagingcode}</td>
							</tr>
						</tfoot>
					</if>
					<tbody>
						$ticketcategories
					</tbody>
				</table>
			</div>
		</div>

		<if 15 < $categories_count >
			<div class="row">
				<div class="col-sm-12 col-md-12 col-lg-12">
					<a href="{$linker->getLink(array('section' => 'tickets', 'page' => 'categories', 'action' => 'addcategory'))}" class="btn btn-link"><span class="icon-plus"></span> {$lng['ticket']['ticket_newcateory']}</a>
				</div>
			</div>
		</if>
	</article>
$footer

