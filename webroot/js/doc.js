
// email
$(function() {
	// e.g. <span class='email' data-name='dan' data-domain='example.com'>dan at example.com</span>
	// using js to generate this dynamically gives a bit of anti-spam protection, since most scrapers dont bother with js
	$('.email').each(function() {
		var e = $(this).data('name')+'@'+$(this).data('domain');
		$(this).html('<a href="mailto:'+e+'">'+e+'</a>');
	});
});

// ContactUs formsubmission creates a "thank you" section
// TODO replace with a My-Loop form
$(function (){

	$('form#contactform').submit(function(e){
		var $f = $(this);
		var data = {};
		$("input,select,textarea", $f).each(function(){
			data[$(this).attr('name')] = $(this).val();
		});
		console.log("data", data);
		$.ajax({
			url: $f.attr('action'),
			data: data
		}).then(function(r) {
			console.log(r);
			notify("Thank you for your interest in My-Loop.");
		});
		e.preventDefault();
	});
	
	function notify(msg) {
		$('form#contactform').append("<div class='alert alert-success' role='alert'>"+msg+"</div>");
	}

});

