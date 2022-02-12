window.onload = function(){

    var userDataArr = document.cookie.split(';');

    this.document.getElementById("imgProfilePic").src = userDataArr[0];    
    this.document.getElementById("lblFirstname").innerText = "Firstname: " + userDataArr[1];
    this.document.getElementById("lblSurname").innerText = "Surname: " + userDataArr[2];
    this.document.getElementById("lblAge").innerText = "Age: " + userDataArr[3];
    this.document.getElementById("lblOccupation").innerText = "Occupation: " + userDataArr[4];
    this.document.getElementById("lblEmailAdrs").innerText = "E-Mail Address: " + userDataArr[5];

    var divHist = $("#divHistory");
    divHist.load(userDataArr[6],
    
        function (responseTxt, status, xhr) {
            if (status == "error")
                alert("Error: " + xhr.status + ": " + xhr.statusText);
        }
    );
    
    var divAdd = $("#divAdditional");
    divAdd.load(userDataArr[7],
    
        function (responseTxt, status, xhr) {
            if (status == "error")
                alert("Error: " + xhr.status + ": " + xhr.statusText);
        }
    );
}