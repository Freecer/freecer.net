/*  ✰ Jacktha  ✰ */

// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

// Form Validation script - used by the Contact Form script
function validateMyAjaxInputs() {

	$.validity.start();
	// Validator methods go here:
	$("#name").require();
	$("#email").require().match("email");
	$("#subject").require();	

	// End the validation session:
	var result = $.validity.end();
	return result.valid;
}

		

