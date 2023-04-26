import {useHeader} from "../../utils/useHeader";
import {useFooter} from "../../utils/useFooter";

const movieDetails = JSON.parse(sessionStorage.getItem("clickedMovie"));

document.title = movieDetails.name;

useHeader();

const main = document.getElementsByTagName("main")[0];
const table = document.createElement("table");
const tableHead = table.createTHead();
const tableHeadRow = tableHead.insertRow(0);
const tableBody = table.createTBody();
const tableBodyRow = tableBody.insertRow(0);

let tempIndex = 0;
Object.entries(movieDetails).forEach((value, index) => {
    if (index === 1)
        tempIndex -= 1;

    if (index !== 1) {
        const tableHeadRowCell = tableHeadRow.insertCell(tempIndex);
        tableHeadRowCell.innerHTML = `<b>${value[0]}</b>`;

        const tableBodyRowCell = tableBodyRow.insertCell(tempIndex);
        tableBodyRowCell.innerHTML = value[1];
    }
});

main.appendChild(table);

useFooter();

