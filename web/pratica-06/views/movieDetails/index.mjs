import {useHeader} from "../../utils/useHeader";
import {useFooter} from "../../utils/useFooter";

const movieDetails = JSON.parse(sessionStorage.getItem("clickedMovie"));

document.title = movieDetails.name;

useHeader();

const movieImg = document.createElement("img");
movieImg.id = "card-img";
movieImg.src = movieDetails.imageUrl;
movieImg.alt = `${movieDetails.name}-cover-image`;

const main = document.getElementsByTagName("main")[0];
main.appendChild(movieImg);
main.innerHTML += `<div>${movieDetails.name}</div>`;
main.innerHTML += `<div>${movieDetails.price}</div>`;
main.innerHTML += `<div>${movieDetails.exhibitionTimes}</div>`;
main.innerHTML += `<div>${movieDetails.rooms}</div>`;
main.innerHTML += `<div>${movieDetails.exhibitionTypes}</div>`;

useFooter();
