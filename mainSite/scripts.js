//------Functions for Part:4 Register Now------
	function isRegisterFormValid(){
		
		// Using regular expressions anystring@anystring.anystring.
		// (string at least one)@(string at least one).(string at least one) 
		var mailPattern = /\S+@\S+\.\S+/;
			
		// Get html form values.
		var mailStr = document.getElementById("email").value.toString(); 
		var pass1 = document.getElementById("password1").value.toString(); 
		var pass2 = document.getElementById("password2").value.toString(); 
		
		// Check password.
		if(pass1.localeCompare(pass2)!= 0){
			alert("Passwords don't match.");
			return false;
		}
		
		// Check mail.
		if(!mailStr.match(mailPattern)){
			alert("Mail isn't valid.");
			return false;
		}
		
		return true;		
	}
//---------------------------------------------


//------Functions for Part:13 Contact----------
	function mailSend(){
		
		alert("Τhe e-mail has been sent!!!");
		
		// Clear Form
		var nameStr=document.getElementById("fullName").value = "";
		var mailStr=document.getElementById("email").value = "";
		var textSt=document.getElementById("textAr").value = "";
		
		return false;		
	}
//---------------------------------------------


//------Functions for Part:12 Insert POI-------
function isPoiFormValid(){
	
	// Using regular expressions (+ or -)number.number .
	// (+ or -)(number at least one).(number at least one) 
	var coorPattern = /[+-]?\d+.\d+/;
	
	// Get html form values.
	var lat = document.getElementById("lat").value.toString();
	var lng = document.getElementById("lng").value.toString();

	// Check coordinates both must be right.
	if( lat.match(coorPattern) && lng.match(coorPattern)){	
			return true ;
	}
	
	alert("Coordinates aren't valid.");
	// Clear Coordinates Forms.
	var latStr=document.getElementById("lat").value = "";
	var lngStr=document.getElementById("lng").value = "";
		
	return false;
}
//---------------------------------------------


