$(document).ready(loadXML)
let x

function loadXML(){
    
    const tmpl = $('#item_template').html()
    const container = $('#app');

    var xhttp = new XMLHttpRequest(); 
    xhttp.onreadystatechange = function() 
    { 
        if (this.readyState == 4 && this.status == 200) { 
            myFunction(this); 
        } 
    }; 
    xhttp.open("GET", "convertjson.xml", true);
    xhttp.send(); 

    function myFunction(xml) { 
        var xmlDoc = xml.responseXML; 
        // console.log(xmlDoc)
        x = xmlDoc.getElementsByTagName("row");
        for (i=0; i < 100; i++){
            // console.log(x[i].childNodes)
            addItem(container, tmpl, i); 
        }
    }   

}


function addItem(container, template, id) {

    let college = x[i].childNodes[5].innerHTML
    let type = x[i].childNodes[7].innerHTML
    let state = x[i].childNodes[9].innerHTML
    let district = x[i].childNodes[11].innerHTML

    container.append(Mustache.render(template, { college, type, state, district }));
}