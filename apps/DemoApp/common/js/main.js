function wlCommonInit(){
    WL.App.addActionReceiver ("backToWebView", actionReceiver);  
}

function actionReceiver(received){
    if (received.action == "backToWebView"){
    	$("#guestList").append(
    		"<hr>" + 
    		"<p id='guestName'><b>Guest name:</b> " + received.data.firstName + " " + received.data.lastName + "</p>" +
			"<p id='arrivalDate'><b>Arrival date:</b> " + received.data.arrivalDate + "</p>"
		);			
    }
}

