var userDataArr = this.document.cookie.split(';');

var divHist = $("#divGallery");
divHist.load(userDataArr[6],

    function (responseTxt, status, xhr) {
        if (status == "error")
            alert("Error: " + xhr.status + ": " + xhr.statusText);
    }
);

// When the user scrolls down 20px from the top of the document, show the button
window.onscroll = function () { scrollFunction(); };

function scrollFunction() {
    if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
        document.getElementById("btnUp").style.display = "block";
    } else {
        document.getElementById("btnUp").style.display = "none";
    }
}
// When the user clicks on the button, scroll to the top of the document
function topFunction() {

    document.body.scrollTop = 0;
    document.documentElement.scrollTop = 0;

}	

