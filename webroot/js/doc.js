
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

