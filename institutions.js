const institutionsTable = document.getElementById("institutions-table");
const paginationInfo = document.getElementById("pagination-info")
let searchInput = document.getElementById("search")

let mockData = [
    // { id: 1, code: "ABCD", name: "University of Mumbai", state: "Maharashtra" },
    // { id: 2, code: "EFGH", name: "Indian Institute of Technology Delhi", state: "Delhi" },
    // { id: 3, code: "IJKL", name: "University of Calcutta", state: "West Bengal" },
    // { id: 4, code: "MNOP", name: "Indian Institute of Technology Madras", state: "Tamil Nadu" },
    // { id: 5, code: "QRST", name: "University of Delhi", state: "Delhi" },
    // { id: 6, code: "UVWX", name: "Indian Institute of Technology Bombay", state: "Maharashtra" },
    // { id: 7, code: "YZAB", name: "University of Hyderabad", state: "Telangana" },
    // { id: 8, code: "CDEF", name: "Indian Institute of Technology Kanpur", state: "Uttar Pradesh" },
    // { id: 9, code: "GHIJ", name: "University of Pune", state: "Maharashtra" },
    // { id: 10, code: "KLMN", name: "Indian Institute of Technology Kharagpur", state: "West Bengal" }
];

let pageCount = 0;
let mockJSONData = {};
const URL = "MOCK_DATA.json";

$(document).ready(loadJSON)

let tempData = [];
const renderFilteredTable = (data) => {
    data.forEach((item) => addNewInstitution(item));
}

const deleteRows = () => {
    let tableLength = institutionsTable.rows.length;
    for( let i= tableLength-1;i>0;i--){
        institutionsTable.deleteRow(i);
    }
}

const addNewInstitution = (item) => {
    let newRow = institutionsTable.insertRow(-1);
    var button = document.createElement("button");
    button.innerHTML = "Visit institution page";

    var a = document.createElement('a');
    a.style.color = "blue"; 
                  
    // Create the text node for anchor element.
    var link = document.createTextNode(item['name']);
        
    // Append the text node to anchor element.
    a.appendChild(link);
    a.href = "http://localhost:8080/institutiondetail/institution.jsp?name="+item['name'];

    let cid = newRow.insertCell(0);
    let ccode = newRow.insertCell(1);
    let cname = newRow.insertCell(2);
    let cstate = newRow.insertCell(3);
    
    cid.innerHTML = item["id"];
    ccode.innerHTML = item["code"];
    cname.appendChild(a);
    cstate.innerHTML = item["state"];
}

// renderFilteredTable(mockData);
mockData.forEach((item) => addNewInstitution(item));



// Search Filter Functionality

const filterData = () => {
    let query = searchInput.value.toLowerCase();
    // console.log(query)
    tempData = mockData.filter((item)=> item["name"].toLowerCase().includes(query))
    // console.log(tempData.length)
    deleteRows();
    if(tempData.length == 0){
        let newRow = institutionsTable.insertRow(-1);
        let message = newRow.insertCell(0);
        message.innerHTML = "No results found";
    }
    else{
        renderFilteredTable(tempData)
    }
}
searchInput.addEventListener("keyup",filterData);

const resetSearch = () => {
    deleteRows();
    renderFilteredTable(mockData); 
}

let keysPressed = {};

document.addEventListener('keydown', (event) => {
    keysPressed[event.key] = true;
 
    if (keysPressed['Control'] && event.key == '/') {
        searchInput.focus();
    }
 });
 
 document.addEventListener('keyup', (event) => {
    delete keysPressed[event.key];
 });



//keyboard, click, onfocus


//AJAX Stuff

function loadJSON(){
    const xhr = new XMLHttpRequest();

    xhr.onload = function(){
        let obj = {}
        obj = JSON.parse(xhr.responseText);

        for(index in obj){
            if(index >= pageCount && index < pageCount+10){
                mockData.push(obj[index])
            }
        }

        paginationInfo.innerText = `${pageCount+1} - ${pageCount+10}`
        renderFilteredTable(mockData); 
    }

    xhr.open("GET",URL,true);
    xhr.send();
}

function fetchNext(){
        const xhr = new XMLHttpRequest();

        xhr.onload = function(){
            let obj = {}
            obj = JSON.parse(xhr.responseText);

            mockData = []
            pageCount += 10;
            deleteRows();

            for(index in obj){
                if(index >= pageCount && index < pageCount+10){
                    mockData.push(obj[index])
                }
            }
    
            paginationInfo.innerText = `${pageCount+1} - ${pageCount+10}`
            renderFilteredTable(mockData); 
        }
    
        xhr.open("GET",URL);
        xhr.send();
}

function fetchPrev(){
    const xhr = new XMLHttpRequest();

    xhr.onload = function(){
        let obj = {}
        obj = JSON.parse(xhr.responseText);

        mockData = []
        pageCount -= 10;
        deleteRows();

        for(index in obj){
            if(index >= pageCount && index < pageCount+10){
                mockData.push(obj[index])
            }
        }
        paginationInfo.innerText = `${pageCount} - ${pageCount+10}`
        renderFilteredTable(mockData); 
    }

    xhr.open("GET",URL);
    xhr.send();
}

