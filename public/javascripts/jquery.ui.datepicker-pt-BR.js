/* Brazilian initialisation for the jQuery UI date picker plugin. */
/* Written by Leonildo Costa Silva (leocsilva@gmail.com). */
jQuery(function($){
	$.datepicker.regional['pt-BR'] = {
		closeText: 'Close',
		prevText: '&#x3c;Previous',
		nextText: 'Next&#x3e;',
		currentText: 'Today',
		monthNames: ['January','February','March','April','May','June',
		'July','August','September','October','November','December'],
		monthNamesShort: ['Jan','Feb','Mar','Apr','May','Jun',
		'Jul','Aug','Sep','Oct','Nov','Dec'],
		dayNames: ['Monday','Tuesday','Wednesday','Thursday','Friday','Saturday','Sunday'],
		dayNamesShort: ['Mon','Tue','Wed','Thu','Fri','Sat','Sun'],
		dayNamesMin: ['Mon','Tue','Wed','Thu','Fri','Sat','Sun'],
		weekHeader: 'Sm',
		dateFormat: 'dd/mm/yy',
		firstDay: 0,
		isRTL: false,
		showMonthAfterYear: false,
		yearSuffix: ''};
	$.datepicker.setDefaults($.datepicker.regional['pt-BR']);
});