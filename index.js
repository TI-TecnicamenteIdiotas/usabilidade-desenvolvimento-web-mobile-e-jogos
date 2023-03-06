const dateNow = new Date();
let answerInput = null;
let answerInputElement = null;

const birthDateElement = document.getElementById("ageInput");
const futureDateElement = document.getElementById("dateInput");
function submitQuestion1() {
    const birthDateString = birthDateElement.value;
    const birthDate = new Date(birthDateString);

    answerInputElement = document.getElementById("atividade-1-answer");

    if (birthDateString === undefined
        || birthDateString === null
        || birthDateString === '') {
        answerInputElement.value = `Insira uma data válida`;
        return;
    }

    const futureDateString = futureDateElement.value;
    const futureDate = new Date(futureDateString);

    let age = dateNow.getFullYear() - birthDate.getFullYear();

    if (dateNow.getMonth() <= birthDate.getMonth()
        && dateNow.getDate() < birthDate.getDate())
        age -= 1;

    if (futureDateString === undefined
        || futureDateString === null
        || futureDateString === '') {
        answerInputElement.value = `Sua idade é: ${age}`;
        return;
    }

    age += futureDate.getFullYear() - dateNow.getFullYear();
    answerInputElement.value = `Sua idade será: ${age}`;
}

const salaryElement = document.getElementById("salary");
const salaryBonusElement = document.getElementById("salary-bonus");
function submitQuestion2() {
    const salaryString = salaryElement.value;
    const salary = Number(salaryString);

    const salaryBonusString = salaryBonusElement.value;
    const salaryBonus = Number(salaryBonusString);

    answerInputElement = document.getElementById("atividade-2-answer");
    answerInputElement.value = salary + (salary * salaryBonus / 100);
}

const celsiusTempElement = document.getElementById("celsius-temp");
function onChangeQuestion3() {
    const celsiusTempString = celsiusTempElement.value;
    const celsiusTemp = Number(celsiusTempString);

    answerInputElement = document.getElementById("atividade-3-answer");
    answerInputElement.value = (celsiusTemp * 18) + 32;
}

const firstGradeElement = document.getElementById("first-grade");
const secondGradeElement = document.getElementById("second-grade");
const thirdGradeElement = document.getElementById("third-grade");
function submitQuestion4() {
    const firstGradeString = firstGradeElement.value;
    const firstGrade = Number(firstGradeString);

    const secondGradeString = secondGradeElement.value;
    const secondGrade = Number(secondGradeString);

    const thirdGradeString = thirdGradeElement.value;
    const thirdGrade = Number(thirdGradeString);

    answerInputElement = document.getElementById("atividade-4-answer");
    answerInputElement.value = (firstGrade + secondGrade + thirdGrade) / 3
}

const firstPeccaryElement = document.getElementById("first-peccary");
const secondPeccaryElement = document.getElementById("second-peccary");
function submitQuestion5() {
    const firstPeccaryString = firstPeccaryElement.value;
    const firstPeccary = Number(firstPeccaryString);

    const secondPeccaryString = secondPeccaryElement.value;
    const secondPeccary = Number(secondPeccaryString);

    answerInputElement = document.getElementById("atividade-5-answer");
    answerInputElement.value = (firstPeccary ** 2) + (secondPeccary ** 2);
}

const circleRadiusElement = document.getElementById("circle-radius");
const aElement = document.getElementById("atividade-6-answer-a");
const bElement = document.getElementById("atividade-6-answer-b");
const cElement = document.getElementById("atividade-6-answer-c");
function onChangeQuestion6() {
    const circleRadius = Number(circleRadiusElement.value);

    aElement.value = 2 * 3.14 * circleRadius;
    bElement.value = 3.14 * (circleRadius ** 2);
    cElement.value = 3/4 * 3.14 * circleRadius ** 3;
}