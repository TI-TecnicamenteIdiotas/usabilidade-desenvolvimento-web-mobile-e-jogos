export function buildSchoolSubjectRows(
    {
        tableBody,
        schoolSubjectName,
        studentName,
        studentFirstGrade,
        studentSecondGrade,
        index,
        length
    }) {
    if (index === 0) {
        const tableRow = document.createElement("tr");
        tableRow.classList.add("school-subject-row");

        const schoolSubjectTextNode = document.createTextNode(schoolSubjectName);
        const schoolSubjectCell = document.createElement("td");
        schoolSubjectCell.setAttribute("rowspan", length + 2);
        schoolSubjectCell.appendChild(schoolSubjectTextNode);

        tableRow.appendChild(schoolSubjectCell);
        tableBody.appendChild(tableRow);
    }

    const nameTextNode = document.createTextNode(studentName);
    const nameCell = document.createElement("td");
    nameCell.appendChild(nameTextNode);

    const firstGradeTextNode = document.createTextNode(studentFirstGrade);
    const firstGradeCell = document.createElement("td");
    firstGradeCell.appendChild(firstGradeTextNode);

    const secondGradeTextNode = document.createTextNode(studentSecondGrade);
    const secondGradeCell = document.createElement("td");
    secondGradeCell.appendChild(secondGradeTextNode);

    const gradesSum = Number(studentFirstGrade) + Number(studentSecondGrade);
    const gradesSumTextNode = document.createTextNode(gradesSum.toString());
    const gradesSumCell = document.createElement("td");
    gradesSumCell.appendChild(gradesSumTextNode);

    const tableRow = document.createElement("tr");
    tableRow.appendChild(nameCell);
    tableRow.appendChild(firstGradeCell);
    tableRow.appendChild(secondGradeCell);
    tableRow.appendChild(gradesSumCell);

    if (index % 2 === 0)
        tableRow.classList.add("even");
    else
        tableRow.classList.add("odd");

    tableRow.addEventListener("click", (_) => alert(`Clicou em ${studentName}`));

    tableBody.appendChild(tableRow);

    return gradesSum;
}