<html>
<body>
<h2 id="greeting">
<h2>Welcome to COMP367</h2>
<script>
	function getGreeting(yourName = "Jack") {
	    var hours = (new Date()).getHours();
	    var timeOfDay = hours > 11 ? "afternoon" : "morning"; 
		var greeting = "Good " + timeOfDay + ", " + yourName + ",";
	    return greeting;
	}
	document.getElementById("greeting").innerText = getGreeting();
</script>
</body>
</html>
