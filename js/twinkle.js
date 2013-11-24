/*
** Twinkle Theme
**
** 2013 Ingo Eberhardt ingo@twinlabs.de
** 
** https://github.com/oschn0r/Twinkle
**
*/

$( document ).ready(function() {

	/*
	** Inject Passy.js for a better and stronger customer/admin/ftp/mysql/htaccess/change password
	*/
	var $input = $( '#new_customer_password_suggestion, #admin_password_suggestion, #mysql_password_suggestion, #ftp_password_suggestion, #directory_password_suggestion' ),
		$realinput = $( '#new_customer_password, #admin_password, #mysql_password, #ftp_password, #directory_password' );

		$input.wrap('<div class="input-group"></div>');
		$input.after('<span class="input-group-btn"><button type="button" class="btn btn-primary" id="generate">Generate</button></span>')
		$input.after('<span class="input-group-addon passwordstrength" id="passwordstrength"></span>');

		$realinput.wrap('<div class="input-group"></div>');
		$realinput.after('<span class="input-group-addon passwordstrength" id="realpasswordstrength">no password yet</span>');

	var $output = $( '#passwordstrength' ),
		$realoutput = $( '#realpasswordstrength' );

	$.passy.requirements.length.min = 4;

	var feedback = [
		{ color: '#c00', text: 'poor' },
		{ color: '#c80', text: 'okay' },
		{ color: '#0c0', text: 'good' },
		{ color: '#0c0', text: 'fabulous!' }
	];

	$input.passy(function(strength, valid) {
		$output.text(feedback[strength].text);
		$output.css('background-color', feedback[strength].color);

		if( valid ) $input.css(' border-color', 'green' );
		else $input.css( 'border-color', 'red' );
	});

	$realinput.passy(function(strength, valid) {
		$realoutput.text(feedback[strength].text);
		$realoutput.css('background-color', feedback[strength].color);

		if( valid ) $realinput.css(' border-color', 'green' );
		else $realinput.css( 'border-color', 'red' );
	});

	$('#generate').on('click', function() {
		$input.passy( 'generate', 8 );
	});

	// initial generate strong password
	$input.passy( 'generate', 8 );

	/*
	** Draggable Dashboard
	*/
	$( "#col1, #col2" ).sortable({
			connectWith: ".connectedSortable",
			cursor: "move",
			placeholder: "sortable-placeholder",
			activate : function(event, ui) {
				ui.placeholder.height(ui.item.height());
			}
	}).disableSelection();

	/*
	** Froxlor Newsfeed
	*/
	$.ajax({
		type: "GET",
		url: "lib/ajax.php?action=newsfeed"
	})
	.done(function(html) {
		$('#newsfeeditems').append(html);
		
		$('.newsitem').each(function() {
			// process old froxlor news feed markup 
			var newstitle = $(this).find('b').html(),
				newslink = $(this).find('a').attr('href');
			
			$(this).find('b').remove();
			$(this).find('br').remove();

			var newstext = $(this).find('a').html();
			$(this).remove();
			var listitem  = '<li class="list-group-item" id="newsitem">';
				listitem += '<h5 class="list-group-item-heading"><a href="'+newslink+'" target="_blank">'+newstitle+'</a></h5>';
				listitem += newstext;
				listitem += '</li>';
			$('#newsfeeditems').append(listitem);
		});
		$('[id^=newsitem]').hide();
	}).fail(function() {
		var erroritem = '<li class="list-group-item"><small>Newsfeed Error</small></li>';
		$('#newsfeeditems').append(erroritem);
	});

	var newsshown = false;

	$('#newstriggerbtn').on('click', function() {
		if(newsshown) {
			$(this).attr('title', 'Expand Newsfeed');
			$('#newsicon').removeClass('icon-minus').addClass('icon-plus');
			$('[id^=newsitem]').slideUp();
			
		} else {
			$(this).attr('title', 'Collapse Newsfeed');
			$('#newsicon').removeClass('icon-plus').addClass('icon-minus');
			$('[id^=newsitem]').slideDown();
		}
		newsshown = !newsshown;
	});

	/*
	** Smooth Scrolldown
	*/
	smoothScrollDown();
	$(window).on('resize', function() {
		if($(window).width() < 1010) {
			$( "#col1, #col2" ).sortable("option", "disabled", true );
			$('.connectedSortable .list-group-item-heading').css("cursor", "default");
		} else {
			$('.connectedSortable .list-group-item-heading').css("cursor", "move");
			$( "#col1, #col2" ).sortable("option", "disabled", false );
		}
	});

	function smoothScrollDown() {
		// only do smooth scrolling, when window width is XS
		if($(window).width() < 768) {
			var target = $('#articlehead');

			if (target.length) {
				$('html,body').animate({ 
					scrollTop: target.offset().top
				}, 1000);
			}
		}
	}

	/*
	** Theme Informations
	*/
	var defaultFroxlorTheme = $('#theme').val();
	loadThemeDescription(defaultFroxlorTheme);

	$('#theme').on('change', function() {
		var selectedFroxlorTheme = this.options[ this.selectedIndex ].value;
		loadThemeDescription(selectedFroxlorTheme);
	});

	function loadThemeDescription(theme) {
		var themeTable = $('#themetable');

		themeTable.html('');

		if(typeof themeDescriptions === 'undefined') {
			themeTable.append('<tr><td>&nbsp;</td><td>No Information about selected Theme.</td></tr>');
		} else {

			$.each(themeDescriptions[theme], function(i, item) {
				if(typeof item === 'object') {
					// new object, iterate through it Obi Wan
					$.each(item, function(oi, objectItem) {
						themeTable.append('<tr><td>'+oi+'</td><td>'+objectItem+'</td></tr>');
					});
				} else {
					// item row
					themeTable.append('<tr><td>'+i+'</td><td>'+item+'</td></tr>');
				}
			});
		}
	}

	/*
	** Back Button in information panels
	*/
	$('#yesnobutton').click(function() {
		history.back();
	});

	/*
	** Auto-select next field in configfile - wizard
	*/
	$('#config_distribution').change(function (){
		window.location.href=window.location.href + '&distribution=' + this.options[ this.selectedIndex ].value;
	});
	$('#config_service').change(function (){
		window.location.href=window.location.href + '&service=' + this.options[ this.selectedIndex ].value;
	});
	$('#config_daemon').change(function (){
		window.location.href=window.location.href + '&daemon=' + this.options[ this.selectedIndex ].value;
	});

	/*
	** Special Logfile YesNoSure Dialog
	*/
	
	// this is necessary for the special setting feature (ref #1010)
	$.getQueryVariable = function(key) {
		var urlParams = decodeURI( window.location.search.substring(1) );
		if(urlParams == false | urlParams == '') return null;
		var vars = urlParams.split("&");
		for (var i=0;i<vars.length;i++) {
			var pair = vars[i].split("=");
			if (pair[0] == key) {
				return pair[1];
			}
		}
		return null;
	}

	$('input[name=speciallogfile]').click(function () {
		if($.getQueryVariable("page") == "domains" && $.getQueryVariable("action") == "edit") {
			$('#speciallogfilewarningmodal').modal('show');
		}
    });

	$('#speciallogyesbutton').click(function () {
		$('#speciallogfilewarningmodal').modal('hide');

		if($('#delete_stats').val().toLowerCase() != $('#delete_statistics_str').val().toLowerCase()) {
			$("#speciallogverified").val("0");

			if($('input[name=speciallogfile]').prop("checked") != false) {
				$('input[name=speciallogfile]').attr("checked", false);
			} else {
				$('input[name=speciallogfile]').attr("checked", true);
			}
		} else {
			$("#speciallogverified").val("1");
		}
    });

    $('input[id=speciallognobutton]').click(function () {
		$('#speciallogfilewarningmodal').modal('hide');

		$("#speciallogverified").val("0");
		if($('input[name=speciallogfile]').prop("checked") != false) {
			$('input[name=speciallogfile]').attr("checked", false);
		} else {
			$('input[name=speciallogfile]').attr("checked", true);
		}
    });

    /*
    ** Styles all tables in Add/Edit/Settings tables
    */
	
	$('#domain_add, #domain_edit, #customer_add, #customer_edit, #admin_add, #admin_edit, #ipsandports_add, #ipsandports_edit, #ticket_new, #category_new, #category_edit, #cron_edit, #email_edit, #forwarder_add, #autoresponder_add, #autoresponder_edit, #mysql_add, #mysql_edit, #htaccess_add, #htaccess_edit, #htpassword_add, #htpassword_edit, #ftp_add, #ftp_edit, #message_send').find('[type=text], [type=password], select, textarea').addClass('form-control');
	$('#domain_add, #domain_edit, #customer_add, #customer_edit, #admin_add, #admin_edit, #ipsandports_add, #ipsandports_edit, #ticket_new, #category_new, #category_edit, #cron_edit, #email_edit, #forwarder_add, #autoresponder_add, #autoresponder_edit, #mysql_add, #mysql_edit, #htaccess_add, #htaccess_edit, #htpassword_add, #htpassword_edit, #ftp_add, #ftp_edit, #message_send').find('[type=checkbox], [type=radio]').not("[name*=ul]").parent().wrap('<div class="checkbox"></div>');
	$('#domain_add, #domain_edit, #customer_add, #customer_edit, #admin_add, #admin_edit, #ipsandports_add, #ipsandports_edit, #ticket_new, #category_new, #category_edit, #cron_edit, #email_edit, #forwarder_add, #autoresponder_add, #autoresponder_edit, #mysql_add, #mysql_edit, #htaccess_add, #htaccess_edit, #htpassword_add, #htpassword_edit, #ftp_add, #ftp_edit, #message_send').find('[style*="color:red"]').addClass('help-block col-xs-10 col-sm-10 col-md-10 col-lg-10').wrap('<div class="alert alert-warning"></div>');

	$('#subdomain_add, #subdomain_edit').find('#path, #alias, #redirectcode, #openbasedir_path, #selectserveralias').addClass('form-control');

	$('.cronjobtask').unwrap().find('li').attr('id', 'cronitem').addClass('list-group-item').appendTo('#outstandingtasks');
	$('.cronjobtask').remove();

	var crontasksshown = true;

	$('#crontriggerbtn').on('click', function() {
		if(crontasksshown) {
			$(this).attr('title', 'Expand Cron List');
			$('#cronicon').removeClass('icon-minus').addClass('icon-plus');
			$('[id^=cronitem]').slideUp();
			
		} else {
			$(this).attr('title', 'Collapse Cron List');
			$('#cronicon').removeClass('icon-plus').addClass('icon-minus');
			$('[id^=cronitem]').slideDown();
		}
		crontasksshown = !crontasksshown;
	});

	var crons = $('[id^=cronitem]');

	$('#croncount').html(crons.length);

	// Login Name must be <12 chars
	$('#new_loginname').attr("maxlength", 12);

	$('#pagination').find("td").wrapInner('<ul class="pagination"></ul>');
	//$('#pagination').find("td").children().html().replace(/&nbsp;/g, ' ')
	$('#pagination').find("strong").wrap('<a href="#"></a>');
	$('#pagination').find("a").wrap('<li></li>');

	/*
	** Customer Hosting Packages Selector
	*/
	var serviceButton = '<div class="btn-group pull-right">';
		serviceButton += '&nbsp;<button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown">';
	    serviceButton += 'Choose Hosting Package <span class="caret"></span>';
		serviceButton += '</button>';
		serviceButton += '<ul class="dropdown-menu" role="menu">';
		serviceButton += '<li class="disabled"><a href="#">Package (Webspace/Traffic/Rest)</a></li>';
		serviceButton += '<li><a href="#" id="small">Small (500MB/5GB/50)</a></li>';
		serviceButton += '<li><a href="#" id="medium">Medium (5000MB/50GB/150)</a></li>';
		serviceButton += '<li><a href="#" id="large">Large (10000MB/100GB/350)</a></li>';
		serviceButton += '<li><a href="#" id="unlimited">Unlimited</a></li>';
		//serviceButton += '<li class="divider"></li>';
		//serviceButton += '<li><a href="#" id="configure">Configure</a></li>';
		serviceButton += '</ul>';
		serviceButton += '</div>';

	$('#servicedata [type=submit]').after(serviceButton);

	/*
	** Extends jQuery with new functions
	*/
	jQuery.fn.extend({
		highliteElementAndTimeout : function(htype) {
			/*
			** Highlites an element and set back to normal state
			*/

			if(typeof htype === 'undefined') {
				htype = 'has-success';
			}

			this.parent().addClass(htype);
			setTimeout(function(obj, htype) {
				obj.parent().removeClass(htype);
			}, 3000, this, htype);
		}
	});

	$('#small, #medium, #large, #unlimited, #configure').on('click', function(event) {
		event.preventDefault();

		var selectedPackage = $(this).attr('id');

		switch(selectedPackage) {
			case 'small' : 
							$('#diskspace').val('500').highliteElementAndTimeout();
							$('[name=diskspace_ul]').attr("checked", false);

							$('#traffic').val('5').highliteElementAndTimeout();
							$('[name=traffic_ul]').attr("checked", false);

							$('#subdomains').val('50').highliteElementAndTimeout();
							$('[name=subdomains_ul]').attr("checked", false);

							$('#emails').val('50').highliteElementAndTimeout();
							$('[name=emails_ul]').attr("checked", false);

							$('#email_accounts').val('50').highliteElementAndTimeout();
							$('[name=email_accounts_ul]').attr("checked", false);

							$('#email_forwarders').val('50').highliteElementAndTimeout();
							$('[name=email_forwarders_ul]').attr("checked", false);

							$('#email_quota').val('50').highliteElementAndTimeout();
							$('[name=email_quota_ul]').attr("checked", false);

							$('#email_autoresponder').val('50').highliteElementAndTimeout();
							$('[name=email_autoresponder_ul]').attr("checked", false);

							$('#ftps').val('50').highliteElementAndTimeout();
							$('[name=ftps_ul]').attr("checked", false);

							$('#tickets').val('50').highliteElementAndTimeout();
							$('[name=tickets_ul]').attr("checked", false);

							$('#mysqls').val('50').highliteElementAndTimeout();
							$('[name=mysqls_ul]').attr("checked", false);
							break;
			case 'medium' : 
							$('#diskspace').val('5000').highliteElementAndTimeout();
							$('[name=diskspace_ul]').attr("checked", false);

							$('#traffic').val('50').highliteElementAndTimeout();
							$('[name=traffic_ul]').attr("checked", false);

							$('#subdomains').val('150').highliteElementAndTimeout();
							$('[name=subdomains_ul]').attr("checked", false);

							$('#emails').val('150').highliteElementAndTimeout();
							$('[name=emails_ul]').attr("checked", false);

							$('#email_accounts').val('150').highliteElementAndTimeout();
							$('[name=email_accounts_ul]').attr("checked", false);

							$('#email_forwarders').val('150').highliteElementAndTimeout();
							$('[name=email_forwarders_ul]').attr("checked", false);

							$('#email_quota').val('150').highliteElementAndTimeout();
							$('[name=email_quota_ul]').attr("checked", false);

							$('#email_autoresponder').val('150').highliteElementAndTimeout();
							$('[name=email_autoresponder_ul]').attr("checked", false);

							$('#ftps').val('150').highliteElementAndTimeout();
							$('[name=ftps_ul]').attr("checked", false);

							$('#tickets').val('150').highliteElementAndTimeout();
							$('[name=tickets_ul]').attr("checked", false);

							$('#mysqls').val('150').highliteElementAndTimeout();
							$('[name=mysqls_ul]').attr("checked", false);
							break;
			case 'large' : 
							$('#diskspace').val('10000').highliteElementAndTimeout();
							$('[name=diskspace_ul]').attr("checked", false);

							$('#traffic').val('100').highliteElementAndTimeout();
							$('[name=traffic_ul]').attr("checked", false);

							$('#subdomains').val('300').highliteElementAndTimeout();
							$('[name=subdomains_ul]').attr("checked", false);

							$('#emails').val('300').highliteElementAndTimeout();
							$('[name=emails_ul]').attr("checked", false);

							$('#email_accounts').val('300').highliteElementAndTimeout();
							$('[name=email_accounts_ul]').attr("checked", false);

							$('#email_forwarders').val('300').highliteElementAndTimeout();
							$('[name=email_forwarders_ul]').attr("checked", false);

							$('#email_quota').val('300').highliteElementAndTimeout();
							$('[name=email_quota_ul]').attr("checked", false);

							$('#email_autoresponder').val('300').highliteElementAndTimeout();
							$('[name=email_autoresponder_ul]').attr("checked", false);

							$('#ftps').val('300').highliteElementAndTimeout();
							$('[name=ftps_ul]').attr("checked", false);

							$('#tickets').val('300').highliteElementAndTimeout();
							$('[name=tickets_ul]').attr("checked", false);

							$('#mysqls').val('300').highliteElementAndTimeout();
							$('[name=mysqls_ul]').attr("checked", false);
							break;
			case 'unlimited' : 
							$('#diskspace').val('').highliteElementAndTimeout();
							$('[name=diskspace_ul]').attr("checked", true);

							$('#traffic').val('').highliteElementAndTimeout();
							$('[name=traffic_ul]').attr("checked", true);

							$('#subdomains').val('').highliteElementAndTimeout();
							$('[name=subdomains_ul]').attr("checked", true);

							$('#emails').val('').highliteElementAndTimeout();
							$('[name=emails_ul]').attr("checked", true);

							$('#email_accounts').val('').highliteElementAndTimeout();
							$('[name=email_accounts_ul]').attr("checked", true);

							$('#email_forwarders').val('').highliteElementAndTimeout();
							$('[name=email_forwarders_ul]').attr("checked", true);

							$('#email_quota').val('').highliteElementAndTimeout();
							$('[name=email_quota_ul]').attr("checked", true);

							$('#email_autoresponder').val('').highliteElementAndTimeout();
							$('[name=email_autoresponder_ul]').attr("checked", true);

							$('#ftps').val('').highliteElementAndTimeout();
							$('[name=ftps_ul]').attr("checked", true);

							$('#tickets').val('').highliteElementAndTimeout();
							$('[name=tickets_ul]').attr("checked", true);

							$('#mysqls').val('').highliteElementAndTimeout();
							$('[name=mysqls_ul]').attr("checked", true);
							break;
		}
	});
	
	/*
	** Traffic diagram and table
	*/
	$.tablesorter.addParser( {
								id: 'filesize',
								is: function(s) {
									return s.match( new RegExp( /[0-9]+(\.[0-9]+)?\ (KiB|B|GiB|MiB|TiB)/ ) );
								},
								format: function(s) {
									var suf = s.match( new RegExp( /(KiB|B|GiB|MiB|TiB)/) )[1];
									var num = parseFloat( s.match( new RegExp( /^[0-9]+(\.[0-9]+)?/ ) )[0] );
									switch( suf ) {
										case 'B':
												return num;
										case 'KiB':
												return num * 1024;
										case 'MiB':
												return num * 1024 * 1024;
										case 'GiB':
												return num * 1024 * 1024 * 1024;
										case 'TiB':
												return num * 1024 * 1024 * 1024 * 1024;
									}
								},
								type: 'numeric'
							});

	var myTextExtraction = function(node) {  
											// extract data from markup and return it  
											if(node.innerHTML != '-') {
												return 1 + node.innerHTML.substr(0,node.innerHTML.length); 
											} else {
												return '0 B';
											}
										} 
	
	if(typeof statsyear === 'undefined') {
		//var statsyear = new Date().getFullYear();
	} else {

		$(statsyear).tablesorter({	theme: 'bootstrap',
									textExtraction: myTextExtraction,
									headers: {
										1: {sorter: 'filesize'},
										2: {sorter: 'filesize'},
										3: {sorter: 'filesize'},
										4: {sorter: 'filesize'},
										5: {sorter: 'filesize'},
										6: {sorter: 'filesize'},
										7: {sorter: 'filesize'},
										8: {sorter: 'filesize'},
										9: {sorter: 'filesize'},
										10: {sorter: 'filesize'},
										11: {sorter: 'filesize'},
										12: {sorter: 'filesize'}
									}
								});

		var ticks = [];
		var data = [];
		var ftp = [];
		var http = [];
		var mail = [];
		var aticks = [];
		var max = 0;
		var i = 1;
		var links = [];

		$('#datalegend').remove();

		$('#datatable tr').reverse().each(function() {
			var row = $(this);
			var day = $(row).children().first().text();
			var ftpd = $(row).children().first().next().text();
			var httpd = $(row).children().first().next().next().text();
			var maild = $(row).children().first().next().next().next().text();
			if ($(row).children().first().next().next().next().next().next().length > 0)
			{
				links.push($(row).children().last().html());
			}
			ftp.push([i, parseFloat(ftpd) / 1024]);
			http.push([i, parseFloat(httpd) / 1024]);
			mail.push([i, parseFloat(maild)] / 1024);
			aticks.push([i, day]);
			if (ftpd > max)
			{
				max = ftpd;
			}
			if (httpd > max)
			{
				max = httpd;
			}
			if (maild > max)
			{
				max = maild;
			}
			ticks.push(day);
			i++;
		});

		$('#datatable').hide();
		data.push(ftp);
		data.push(http);
		data.push(mail);

		if (links.length > 0)
		{
			var tmp = $('<div />', {id: 'linkslist'});
			$.each(links, function(i, link) {
				tmp.append(link);
				if (i != links.length - 1)
				{
					tmp.append('&nbsp;|&nbsp;');
				}
			});
			tmp.insertBefore($('#datatable'));
		}

		if($('#chartdiv').length > 0) {
		
			var plot2 = $.jqplot('chartdiv', [ftp, http, mail], {
				series: [
					{
						lineWidth:1,
						color: '#019522',
						label: 'FTP',
						showMarker: false
					},
					{
						lineWidth:1,
						color: '#0000FF',
						label: 'HTTP',
						showMarker: false
					},
					{
						lineWidth:1,
						color: '#800000',
						label: 'Mail',
						showMarker: false
					}	
				],
				axes: {
					yaxis: {
						min: 0,
						numberTicks: 10
					},
					xaxis: {
						pad: 0,
						ticks: aticks
					},
				},
				grid: {
					background: '#fff',
					borderWidth: 0,
					shadow: false
				}
			});
		}
	}
});

jQuery.fn.reverse = function() {
	return this.pushStack(this.get().reverse(), arguments);
};