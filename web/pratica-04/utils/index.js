function getRandomGrade() {
    return Math.floor(Math.random() * 31);
}

const schoolSubjects = {
    "web": "Web",
    "programingLogic": "Lógica de Programação"
};

const students = [
    {
        name: "Almir",
        grades: {
            web: {
                firstGrade: getRandomGrade(),
                secondGrade: getRandomGrade()
            },
            programingLogic: {
                firstGrade: getRandomGrade(),
                secondGrade: getRandomGrade()
            }
        }
    },
    {
        name: "Gabriel",
        grades: {
            web: {
                firstGrade: getRandomGrade(),
                secondGrade: getRandomGrade()
            },
            programingLogic: {
                firstGrade: getRandomGrade(),
                secondGrade: getRandomGrade()
            }
        }
    },
    {
        name: "Pedro",
        grades: {
            web: {
                firstGrade: getRandomGrade(),
                secondGrade: getRandomGrade()
            },
            programingLogic: {
                firstGrade: getRandomGrade(),
                secondGrade: getRandomGrade()
            }
        }
    },
    {
        name: "Wesley",
        grades: {
            web: {
                firstGrade: getRandomGrade(),
                secondGrade: getRandomGrade()
            },
            programingLogic: {
                firstGrade: getRandomGrade(),
                secondGrade: getRandomGrade()
            }
        }
    },
];

export {
    schoolSubjects,
    students
};