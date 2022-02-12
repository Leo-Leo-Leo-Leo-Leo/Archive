
function RunDemo() {
    var userData = "Adolf" + ";"  
    + "3456" + ";"     
    + "Adolf" + ";" 
    + "Hitler" + ";" 
    + "Profiles/About/Pics/profile3.jpg" + ";" 
    + "45" + ";" 
    + "MCSD" + ";" 
    + "glassofjuice@gmail.com" + ";" 
    + "Profiles/About/History/profile3.txt" + ";" 
    + "Profiles/About/Additional/profile3.txt" + ";"
    + "Profiles/Gallery/profile3.html" + ";" 
    + "Profiles/Social/profile3.html";

    document.cookie = userData;

    document.location.href = "PageHome.html";
}

window.onload = function(){   
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            LoadXML(this.responseXML);
        }
    };
    xhttp.open("GET", "person.xml", true);
    xhttp.send();
}

function LoadXML(xml){
    var xmlPerson = xml;
    var x = xmlPerson.getElementsByTagName('password')[0].childNodes[0].nodeValue;

    var xmlUserName = xmlPerson.getElementsByTagName("username");//saves a user tag's data in a readable html format for the javascript from the xml stored in the array
    var xmlPassword = xmlPerson.getElementsByTagName("password");   

    sessionStorage.setItem("Users",JSON.stringify(xmlUserName));
    sessionStorage.setItem("Passwords",JSON.stringify(xmlPassword));
}
    
function LoadProfile() { 
    var username = document.getElementById("txtUserName").value; //getting string Username and Password from UI entered by user.
    var password = document.getElementById("txtPassword").value; //^    
    var accepted = false;//this boolean will be used in the username and password validation.

    var Users = JSON.parse(sessionStorage.getItem("Users"));
    var Passwords = JSON.parse(sessionStorage.getItem("Passwords"));

    var i = 0;// a counting var also used as an index in the array.
    while (i < Users.length) {//this loop will validate the name and password

        if (username == Users[i].childNodes[0].nodeValue.ToString() && password == Passwords[i].childNodes[0].nodeValue.ToString()) {// the validation
            accepted = true;
            alert("Accepted");//response to user
            break;
        }
        accepted = false;
        i++;
    }

    if (accepted === true) {
        sessionStorage.clear();

        var userData = "";
        
        userData = xmlPerson.getElementsByTagName("name")[0].childNodes[0].nodeValue;
        userData += ";" + xmlPerson.getElementsByTagName("surname")[0].childNodes[0].nodeValue;
        userData += ";" + xmlPerson.getElementsByTagName("imgpath")[0].childNodes[0].nodeValue;
        userData += ";" + xmlPerson.getElementsByTagName("age")[0].childNodes[0].nodeValue;
        userData += ";" + xmlPerson.getElementsByTagName("degree")[0].childNodes[0].nodeValue;
        userData += ";" + xmlPerson.getElementsByTagName("email")[0].childNodes[0].nodeValue;
        userData += ";" + xmlPerson.getElementsByTagName("history")[0].childNodes[0].nodeValue;
        userData += ";" + xmlPerson.getElementsByTagName("additional")[0].childNodes[0].nodeValue;
        userData += ";" + xmlPerson.getElementsByTagName("surname")[0].childNodes[0].nodeValue;
        userData += ";" + xmlPerson.getElementsByTagName("imgpath")[0].childNodes[0].nodeValue;
        userData += ";" + xmlPerson.getElementsByTagName("gallery")[0].childNodes[0].nodeValue;
        userData += ";" + xmlPerson.getElementsByTagName("social")[0].childNodes[0].nodeValue;

        document.cookie = userData;

        document.location.href = "PageHome.html";//changes page      
    }
    else {
        alert("Denied");//response to user
    }
}
