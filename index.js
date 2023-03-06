const dateNow = new Date();
let answerInputElement = null;

const birthDateElement = document.getElementById("ageInput");
const futureDateElement = document.getElementById("dateInput");
function submitQuestion1() {
	answerInputElement = document.getElementById("atividade-1-answer");

	const birthDateString = birthDateElement.value;
	if (!birthDateString || birthDateString === '') {
		answerInputElement.value = `Insira uma data válida`;
		return;
	}

	const birthDate = new Date(birthDateString);
	let age = dateNow.getFullYear() - birthDate.getFullYear();

	if (dateNow.getMonth() <= birthDate.getMonth()
		&& dateNow.getDate() < birthDate.getDate())
		age -= 1;

	const futureDateString = futureDateElement.value;
	if (!futureDateString || futureDateString === '') {
		answerInputElement.value = `Sua idade é: ${age}`;
		return;
	}

	const futureDate = new Date(futureDateString);
	age += futureDate.getFullYear() - dateNow.getFullYear();
	answerInputElement.value = `Sua idade será: ${age}`;
}

const salaryElement = document.getElementById("salary");
const salaryBonusElement = document.getElementById("salary-bonus");
function submitQuestion2() {
	const salary = Number(salaryElement.value);
	const salaryBonus = Number(salaryBonusElement.value);

	answerInputElement = document.getElementById("atividade-2-answer");
	answerInputElement.value = salary + (salary * salaryBonus / 100);
}

const celsiusTempElement = document.getElementById("celsius-temp");
celsiusTempElement.addEventListener("input", (event) => {
	const celsiusTemp = Number(celsiusTempElement.value);

	answerInputElement = document.getElementById("atividade-3-answer");
	answerInputElement.value = (celsiusTemp * 18) + 32;
});

const firstGradeElement = document.getElementById("first-grade");
const secondGradeElement = document.getElementById("second-grade");
const thirdGradeElement = document.getElementById("third-grade");
function submitQuestion4() {
	const firstGrade = Number(firstGradeElement.value);
	const secondGrade = Number(secondGradeElement.value);
	const thirdGrade = Number(thirdGradeElement.value);

	answerInputElement = document.getElementById("atividade-4-answer");
	answerInputElement.value = (firstGrade + secondGrade + thirdGrade) / 3
}

const firstPeccaryElement = document.getElementById("first-peccary");
const secondPeccaryElement = document.getElementById("second-peccary");
function submitQuestion5() {
	const firstPeccary = Number(firstPeccaryElement.value);
	const secondPeccary = Number(secondPeccaryElement.value);

	answerInputElement = document.getElementById("atividade-5-answer");
	answerInputElement.value = (firstPeccary ** 2) + (secondPeccary ** 2);
}

const circleRadiusElement = document.getElementById("circle-radius");
const aElement = document.getElementById("atividade-6-answer-a");
const bElement = document.getElementById("atividade-6-answer-b");
const cElement = document.getElementById("atividade-6-answer-c");
circleRadiusElement.addEventListener("input", (event) => {
	const circleRadius = Number(event.target.value);

	aElement.value = 2 * 3.14 * circleRadius;
	bElement.value = 3.14 * (circleRadius ** 2);
	cElement.value = 3 / 4 * 3.14 * circleRadius ** 3;
});