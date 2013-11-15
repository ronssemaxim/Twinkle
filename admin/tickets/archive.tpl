$header
	<article class="col-sm-9 col-md-10 col-lg-10">
		<div class="row">
			<header class="col-sm-12 col-md-12 col-lg-12">
				<h2>
					<span class="icon-ticket"></span>&nbsp;
					{$lng['ticket']['lastarchived']}
				</h2>
			</header>
		</div>

		<div class="row">
			<div class="col-sm-12 col-md-12 col-lg-12">
				<table class="table table-responsive">
					<thead>
						<tr>
							<th>{$lng['ticket']['archivedtime']}</th>
							<th>{$lng['ticket']['ticket_answers']}</th>
							<th>{$lng['ticket']['subject']}</th>
							<th>{$lng['ticket']['lastreplier']}</th>
							<th>{$lng['ticket']['priority']}</th>
							<th>{$lng['panel']['options']}</th>
						</tr>
					</thead>
					<tbody>
						$tickets
					</tbody>
				</table>
			</div>
		</div>
	
		<div class="row">
			<div class="col-sm-12 col-md-12 col-lg-12">
				<form action="{$linker->getLink(array('section' => 'tickets'))}" method="post" enctype="application/x-www-form-urlencoded">
		
					<table class="table table-responsive">
						<thead>
							<tr>
								<th colspan="2">{$lng['ticket']['search']}</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>{$lng['ticket']['subject']}:</td>
								<td ><input type="text" name="subject" class="form-control" /></td>
							</tr>
							<tr>
								<td>{$lng['ticket']['priority']}:</td>
								<td >{$priorities_options}</td>
							</tr>
				 			<tr>
								<td>{$lng['ticket']['category']}:</td>
								<td>{$category_options}</td>
				 			</tr>
				 			<tr>
								<td>{$lng['ticket']['lastchange']}:</td>
								<td>
									<label for="fromdate">{$lng['ticket']['lastchange_from']}<br /><input type="text" id="fromdate" name="fromdate" class="form-control" /></label>
									<label for="todate">{$lng['ticket']['lastchange_to']}<br /><input type="text" id="todate" name="todate" class="form-control" /></label>
								</td>
				 			</tr>
							<tr>
								<td>{$lng['ticket']['message']}:</td>
								<td><textarea rows="12" cols="50" class="form-control" name="message"></textarea></td>
							</tr>
				 			<tr>
								<td>{$lng['ticket']['customer']}:</td>
								<td><select name="customer" class="form-control" >$customers</select></td>
				 			</tr>	
				 		</tbody>

			 			<tfoot>
							<tr>
								<td class="main_field_confirm" colspan="2" align="right"><input type="hidden" name="send" value="send" /><input type="submit" class="btn btn-primary" value="{$lng['panel']['search']}" /></td>
							</tr>
			 			</tfoot>
					</table>

					<input type="hidden" name="s" value="$s"/>
					<input type="hidden" name="page" value="$page"/>
					<input type="hidden" name="send" value="send" />

				</form>
			</div>
		</div>
	</article>
$footer
