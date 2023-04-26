const exhibitionTypeEnum = {
    "2D": "2D",
    "3D": "3D",
}

const {night, midday, afternoon, morning} = {
    morning: "06:00",
    midday: "12:00",
    afternoon: "18:00",
    night: "00:00"
}

const roomsEnum = {
    200: "200",
    204: "204",
    400: "400",
    404: "404"
}

class movie {
    constructor({name, imageUrl, price, exhibitionTimes, rooms, exhibitionTypes}) {
        this.name = name;
        this.imageUrl = imageUrl;
        this.price = price;
        this.exhibitionTimes = exhibitionTimes;
        this.rooms = rooms;
        this.exhibitionTypes = exhibitionTypes;
    }
}

const moviesToReplicate = [
    new movie({
        name: "wall-e",
        imageUrl: "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/Agc6lw8pb6BIGVeguvdjDT0p9Mb.jpg",
        price: 10,
        exhibitionTimes: [morning, midday, afternoon, night],
        rooms: [roomsEnum["200"], roomsEnum["400"]],
        exhibitionTypes: [exhibitionTypeEnum["2D"], exhibitionTypeEnum["3D"]]
    }),
    new movie({
        name: "the incredibles",
        imageUrl: "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/2LqaLgk4Z226KkgPJuiOQ58wvrm.jpg",
        price: 1,
        exhibitionTimes: [morning, midday, afternoon, night],
        rooms: [roomsEnum["200"], roomsEnum["400"]],
        exhibitionTypes: [exhibitionTypeEnum["2D"], exhibitionTypeEnum["3D"]]
    }),
    new movie({
        name: "up",
        imageUrl: "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/mFvoEwSfLqbcWwFsDjQebn9bzFe.jpg",
        price: 10,
        exhibitionTimes: [morning, midday, afternoon, night],
        rooms: [roomsEnum["200"], roomsEnum["400"]],
        exhibitionTypes: [exhibitionTypeEnum["2D"], exhibitionTypeEnum["3D"]]
    }),
    new movie({
        name: "zootopia",
        imageUrl: "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/hlK0e0wAQ3VLuJcsfIYPvb4JVud.jpg",
        price: 10,
        exhibitionTimes: [morning, midday, afternoon, night],
        rooms: [roomsEnum["200"], roomsEnum["400"]],
        exhibitionTypes: [exhibitionTypeEnum["2D"], exhibitionTypeEnum["3D"]]
    }),
    new movie({
        name: "frozen",
        imageUrl: "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/kgwjIb2JDHRhNk13lmSxiClFjVk.jpg",
        price: 10,
        exhibitionTimes: [morning, midday, afternoon, night],
        rooms: [roomsEnum["200"], roomsEnum["400"]],
        exhibitionTypes: [exhibitionTypeEnum["2D"], exhibitionTypeEnum["3D"]]
    }),
    new movie({
        name: "despicable me",
        imageUrl: "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/9lOloREsAhBu0pEtU0BgeR1rHyo.jpg",
        price: 10,
        exhibitionTimes: [morning, midday, afternoon, night],
        rooms: [roomsEnum["200"], roomsEnum["400"]],
        exhibitionTypes: [exhibitionTypeEnum["2D"], exhibitionTypeEnum["3D"]]
    })
];

const movies = [...moviesToReplicate.reverse(), ...moviesToReplicate.reverse(), ...moviesToReplicate.reverse()];

const projectName = "Cine FliX";
const projectAddress = "Avenida Afonso Pensa, N. 1.800, Centro, Belo Horizonte, MG, Brasil, CEP.: 31.435-700.";
const projectPhone = "+55 (31) 1234-1234";
const projectWhatsapp = "+55 (31) 91234-1234";
const projectFacebook = "Facebook";

export {
    movies,
    projectName,
    projectAddress,
    projectPhone,
    projectWhatsapp,
    projectFacebook,
}