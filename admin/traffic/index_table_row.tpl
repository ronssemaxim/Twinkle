		<tr>
			<td>{$virtual_host['name']}<if $customerview == 1>&nbsp;<a href="{$linker->getLink(array('section' => 'customers', 'target' => 'traffic', 'page' => $page, 'action' => 'su', 'id' => $virtual_host['customerid']))}" rel="external">[{$lng['traffic']['details']}]</a></if></td>
			<td >{$virtual_host['jan']}</td>
			<td >{$virtual_host['feb']}</td>
			<td >{$virtual_host['mar']}</td>
			<td >{$virtual_host['apr']}</td>
			<td >{$virtual_host['may']}</td>
			<td >{$virtual_host['jun']}</td>
			<td >{$virtual_host['jul']}</td>
			<td >{$virtual_host['aug']}</td>
			<td >{$virtual_host['sep']}</td>
			<td >{$virtual_host['oct']}</td>
			<td >{$virtual_host['nov']}</td>
			<td >{$virtual_host['dec']}</td>
		</tr>
