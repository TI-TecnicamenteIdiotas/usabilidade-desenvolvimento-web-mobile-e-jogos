export function buildAverageGradesRow(
    {
        tableBody,
        schoolSubjectName,
        averageGrades,
    }) {
    const averageGradesTextNode = document.createTextNode(`${schoolSubjectName}: ${averageGrades.toFixed(2)}`);
    const averageGradesCell = document.createElement("td");
    averageGradesCell.setAttribute("colspan", "4");
    averageGradesCell.appendChild(averageGradesTextNode);

    const averageGradesRow = document.createElement("tr");
    averageGradesRow.classList.add("average-row");
    averageGradesRow.appendChild(averageGradesCell);

    tableBody.appendChild(averageGradesRow);
}