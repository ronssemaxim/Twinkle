jQuery.fn.reverse = function() {
	return this.pushStack(this.get().reverse(), arguments);
};

$( document ).ready(function() {

	var defaultFroxlorTheme = $('#theme').val();
	loadThemeDescription(defaultFroxlorTheme);

	$('#theme').on('change', function() {
		var selectedFroxlorTheme = this.options[ this.selectedIndex ].value;
		loadThemeDescription(selectedFroxlorTheme);
	});

	function loadThemeDescription(theme) {
		var themeTable = $('#themetable');

		themeTable.html('');

		if(typeof themeDescriptions[theme] === 'undefined') {
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

	if(typeof dashboard === 'undefined') {
		//console.log("no dashboard");
	} else 
	{
		//console.log("dashboard");
		var jqplotOptions = {
							show: true,
							seriesColors:['#73C774', '#C7754C', '#17BDB8'],
							seriesDefaults: {
								renderer:$.jqplot.DonutRenderer,
								rendererOptions:{
									// Donut's can be cut into slices like pies.
									sliceMargin: 4,
									// Pies and donuts can start at any arbitrary angle.
									startAngle: -90,
									showDataLabels: true,
									// By default, data labels show the percentage of the donut/pie.
									// You can show the data 'value' or data 'label' instead.
									dataLabels: 'value'
								}

							},
							legend: {
                        show: true,
                        location: 's',
                        placement: 'outside' ,
                        renderer: $.jqplot.EnhancedLegendRenderer,
                        rendererOptions: { }
                    },
							grid: {
								shadow: false,
								drawBorder: false,
								background: '#ffffff'
							}
						};

		jqplotOptions.title = customers_used_title;
		jqplotOptions.seriesDefaults.rendererOptions.dataLabels = customers_dataLabelVal;
		var chart_customers = $.jqplot('chart_customers', [customers_used], jqplotOptions);

		jqplotOptions.title = domains_used_title;
		jqplotOptions.seriesDefaults.rendererOptions.dataLabels = domains_dataLabelVal;
		var chart_domains = $.jqplot('chart_domains', [domains_used], jqplotOptions);

		jqplotOptions.title = subdomains_used_title;
		jqplotOptions.seriesDefaults.rendererOptions.dataLabels = subdomains_dataLabelVal;
		var chart_subdomains = $.jqplot('chart_subdomains', [subdomains_used], jqplotOptions);

		jqplotOptions.title = diskspace_used_title;
		jqplotOptions.seriesDefaults.rendererOptions.dataLabels = diskspace_dataLabelVal;
		var chart_diskspace = $.jqplot('chart_diskspace', [diskspace_used], jqplotOptions);
	/*
		$("#chart_diskspace").bind('jqplotDataHighlight', function(ev, seriesIndex, pointIndex, data) {
	              	           var total = 250;
	              	           var percent = 0;
	              	           if(total != 0)
	              	           {
	              	        	 	percent = Math.round((data[1]/total)*100);
	               	           }
	               	           
	                           var $this = $(this);
	                           $this.find('.tooltip').remove();
	                           $this.append($('<div class="tooltip jqplot-highlighter-tooltip" ></div>').text(data[0]+' : '+data[1]+' ('+ percent +'%)').css('opacity',1));
	                       }); 
	 
	    $("#chart_diskspace").bind('jqplotDataUnhighlight', function(ev, seriesIndex, pointIndex, data) {
	               var $this = $(this);
	               $this.find('.tooltip').remove();
	    });*/

		/*jqplotOptions.title = traffic_used_title;
		var chart_traffic = $.jqplot('chart_traffic', [traffic_used], jqplotOptions);

		jqplotOptions.title = mysqls_used_title;
		var chart_mysqls = $.jqplot('chart_mysqls', [mysqls_used], jqplotOptions);

		jqplotOptions.title = emails_used_title;
		var chart_mysqls = $.jqplot('chart_emails', [emails_used], jqplotOptions);

		jqplotOptions.title = accounts_used_title;
		var chart_accounts = $.jqplot('chart_accounts', [accounts_used], jqplotOptions);

		jqplotOptions.title = email_forwarders_used_title;
		var chart_email_forwarders = $.jqplot('chart_email_forwarders', [email_forwarders_used], jqplotOptions);

		jqplotOptions.title = email_autoresponder_used_title;
		var chart_email_autoresponder = $.jqplot('chart_email_autoresponder', [email_autoresponder_used], jqplotOptions);

		jqplotOptions.title = email_quota_used_title;
		var chart_email_quota = $.jqplot('chart_email_quota', [email_quota_used], jqplotOptions);

		jqplotOptions.title = ftps_used_title;
		var chart_ftps = $.jqplot('chart_ftps', [ftps_used], jqplotOptions);

		jqplotOptions.title = tickets_used_title;
		var chart_tickets = $.jqplot('chart_tickets', [tickets_used], jqplotOptions);*/

		$(".jqplot-data-label:contains('∞')").css('font-size', '3em')
											 .css('line-height', '17px');
	}

	// NO Button
	$('#yesnobutton').click(function() {
		history.back();
	});

	// Auto-select next field in configfile - wizard
	$('#config_distribution').change(function (){
		window.location.href=window.location.href + '&distribution=' + this.options[ this.selectedIndex ].value;
	});
	$('#config_service').change(function (){
		window.location.href=window.location.href + '&service=' + this.options[ this.selectedIndex ].value;
	});
	$('#config_daemon').change(function (){
		window.location.href=window.location.href + '&daemon=' + this.options[ this.selectedIndex ].value;
	});

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

	$('#domain_add, #domain_edit, #customer_add, #customer_edit, #admin_add, #admin_edit, #ipsandports_add, #ipsandports_edit, #ticket_new, #category_new, #category_edit, #cron_edit, #email_edit, forwarder_add').find('[type=text], [type=password], select, textarea').addClass('form-control').wrap('<div class="col-xs-9"></div>')
	$('#domain_add, #domain_edit, #customer_add, #customer_edit, #admin_add, #admin_edit, #ipsandports_add, #ipsandports_edit, #ticket_new, #category_new, #category_edit, #cron_edit, #email_edit, forwarder_add').find('[type=checkbox]').parent().wrap('<div class="col-xs-12"></div>');
	$('#domain_add, #domain_edit, #customer_add, #customer_edit, #admin_add, #admin_edit, #ipsandports_add, #ipsandports_edit, #ticket_new, #category_new, #category_edit, #cron_edit, #email_edit, forwarder_add').find('th').wrapInner('<h3></h3>');

	//console.log($('#email_part').parent().text());
	$('#subdomain_add, #subdomain_edit').find('#path, #alias, #redirectcode, #openbasedir_path, #selectserveralias').addClass('form-control').wrap('<div class="col-xs-9"></div>')
	$('#email_part, #subdomain').addClass('form-control').wrap('<div class="col-xs-12 col-sm-5 col-md-6 col-lg-6"></div>');
	$('#domain').addClass('form-control').wrap('<div class="col-xs-12 col-sm-5 col-md-5 col-lg-5 pull-right"></div>');

	$('#settings_overview').find('[type=text], [type=password], select, textarea').addClass('form-control').parent().wrapInner('<div class="col-xs-6"></div>')
	$('#settings_overview').find('[type=checkbox]').css('margin-right', '5px').parent().wrap('<div class="col-xs-3"></div>');
	$('#settings_overview').find('th').wrapInner('<h3></h3>');

	/*
	** Tablesorter
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
