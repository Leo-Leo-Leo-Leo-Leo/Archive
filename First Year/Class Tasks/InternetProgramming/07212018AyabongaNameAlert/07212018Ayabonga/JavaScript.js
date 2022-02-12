RequestAndDisplay();

function RequestAndDisplay() {
    var input = prompt("What is your name and surname seperated by a space?", "");

    if (input != "") {
        var NameSurname = input.split(" ");

        if (NameSurname[0] == "" || NameSurname[0] == undefined || NameSurname[1] == undefined) {
            alert("You did not enter a name and surname seperated by a space!");
        }
        else {
            alert("Your name is " + NameSurname[0]);
            alert("and your surname is " + NameSurname[1]);
        }
    }
    else {
        alert("Please enter a name and surname");
    }

    location.reload();

}