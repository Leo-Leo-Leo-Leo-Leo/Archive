function saveInput() {
    var Username = document.getElementById("txtUsNm").value;
    var Password = document.getElementById("txtPsWd").value;



    if (Username != "" && Password != "") {
        document.cookie = "Username=" + Username + ",Password=" + Password;

        alert("Your information has been saved!");
    }
    else {
        alert("Please fill in both fields!!!");
    }
}

function loadInput() {
    var Cookies = document.cookie.split(",");

    for (var i = 0; i < Cookies.length; i++) {
        var LoginDetails = Cookies[i].split("=");
    }

    alert("Hello " + LoginDetails[0] + ", your Password is " + LoginDetails[1] + "!");

}
