const institutionsTable = document.getElementById("institutions-table");

const mockData = [
    { id: 1, code: "ABCD", name: "University of Mumbai", state: "Maharashtra" },
    { id: 2, code: "EFGH", name: "Indian Institute of Technology Delhi", state: "Delhi" },
    { id: 3, code: "IJKL", name: "University of Calcutta", state: "West Bengal" },
    { id: 4, code: "MNOP", name: "Indian Institute of Technology Madras", state: "Tamil Nadu" },
    { id: 5, code: "QRST", name: "University of Delhi", state: "Delhi" },
    { id: 6, code: "UVWX", name: "Indian Institute of Technology Bombay", state: "Maharashtra" },
    { id: 7, code: "YZAB", name: "University of Hyderabad", state: "Telangana" },
    { id: 8, code: "CDEF", name: "Indian Institute of Technology Kanpur", state: "Uttar Pradesh" },
    { id: 9, code: "GHIJ", name: "University of Pune", state: "Maharashtra" },
    { id: 10, code: "KLMN", name: "Indian Institute of Technology Kharagpur", state: "West Bengal" }
];
  
const addNewInstitution = (item) => {
    let newRow = institutionsTable.insertRow(-1);

    let cid = newRow.insertCell(0);
    let ccode = newRow.insertCell(1);
    let cname = newRow.insertCell(2);
    let cstate = newRow.insertCell(3);

    cid.innerHTML = item["id"];
    ccode.innerHTML = item["code"];
    cname.innerHTML = item["name"];
    cstate.innerHTML = item["state"];
}

mockData.forEach((item) => addNewInstitution(item));




