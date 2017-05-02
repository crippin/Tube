if(document.getElementById("loggedin")){
	button = document.getElementById("logoutrefresh")

	button.onclick =  function(e) { return myHandler(e); };

	function myHandler(e) {
	
		location.reload();
		console.log(e);
		return true;
	}
}