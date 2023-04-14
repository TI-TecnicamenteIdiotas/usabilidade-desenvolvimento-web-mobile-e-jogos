import {schoolSubjects, students} from "./utils/index.mjs";
import {buildTableBody} from "./components/buildTableBody.mjs";

const tableBody = document.getElementsByTagName("tbody")[0];

Object.entries(schoolSubjects).forEach(schoolSubject => buildTableBody({
    students: students,
    tableBody: tableBody,
    schoolSubjectKey: schoolSubject[0],
    schoolSubjectName: schoolSubject[1]
}));