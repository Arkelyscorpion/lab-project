function loadDoc(){
  const xhttp = new XMLHttpRequest();
  xhttp.open("GET", "file.xml",false);
  xhttp.send();
  const xmlDoc = xhttp.responseXML;
  console.log(xmlDoc);
  const x = xmlDoc.getElementsByTagName("ARTIST");
  let txt = "";
  for (let i = 0; i < x.length; i++) {
    txt += x[i].childNodes[0].nodeValue + "<br>";
    console.log(x[i].childNodes[0]);
  }
  // document.getElementById("demo").innerHTML = txt;
  document.getElementById("demo").innerHTML =
    xhttp.getAllResponseHeaders();
}