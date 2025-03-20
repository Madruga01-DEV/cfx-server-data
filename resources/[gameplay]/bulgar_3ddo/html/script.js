addEventListener("message", function(event){
	if (event.data.toggleDo == true) {
		document.getElementById("data").innerHTML = event.data.html;
        $("#data").show()
    }else{
    	$("#data").hide()
    }
});
