

$( document ).ready(function() {

	$('#plant_images_other').change(function() { 
		// select the form and submit
		$('#other-image-upload').submit(); 
	});

	$('#plant_images_featured').change(function() { 
		// select the form and submit
		$('#featured-image-upload').submit(); 
	});

});