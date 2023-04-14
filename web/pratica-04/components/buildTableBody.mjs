import {buildSchoolSubjectRows} from "./buildSchoolSubjectRows.mjs";
import {buildAverageGradesRow} from "./buildAverageGradesRow.mjs";

export function buildTableBody(
    {
        students,
        tableBody,
        schoolSubjectKey,
        schoolSubjectName
    }) {
    let gradesSum = 0;

    students.forEach((student, index) =>
        gradesSum += buildSchoolSubjectRows({
            tableBody: tableBody,
            schoolSubjectName: schoolSubjectName,
            studentName: student.name,
            studentFirstGrade: student.grades[schoolSubjectKey].firstGrade,
            studentSecondGrade: student.grades[schoolSubjectKey].secondGrade,
            index: index,
            length: students.length
        })
    );

    buildAverageGradesRow({
        tableBody: tableBody,
        schoolSubjectName: schoolSubjectName,
        averageGrades: gradesSum / students.length
    });
}