window.onload = function(){
    var userDataArr = this.document.cookie.split(';');

    var divHist = $("#divSocial");
    divHist.load(userDataArr[7],
    
        function (responseTxt, status, xhr) {
            if (status == "error")
                alert("Error: " + xhr.status + ": " + xhr.statusText);
        }
    );
}
