import {useHeader} from "../../utils/useHeader.mjs";
import {useFooter} from "../../utils/useFooter.mjs";
import {useTitle} from "../../utils/useTitle.mjs";
import {useFirstLetterToUpperCase} from "../../utils/useFirstLetterToUpperCase.mjs";
import {useCurrencyFormat} from "../../utils/useCurrencyFormat.mjs";
import {useLoadStorage} from "../../utils/useLoadStorage.mjs";

const movieDetails = useLoadStorage();

useTitle();
useHeader();

const movieImg = document.createElement("img");
movieImg.id = "card-img";
movieImg.src = movieDetails.imageUrl;
movieImg.alt = `${movieDetails.name}-cover-image`;

const movieDetailsCard = document.createElement("div");
movieDetailsCard.id = "movie-details-card";
movieDetailsCard.appendChild(movieImg);

movieDetailsCard.innerHTML += `<div>Nome: ${useFirstLetterToUpperCase(movieDetails.name)}</div>`;
movieDetailsCard.innerHTML += `<div>Preço: ${useCurrencyFormat(movieDetails.price)}</div>`;
movieDetailsCard.innerHTML += `<div>Horários: ${movieDetails.exhibitionTimes}</div>`;
movieDetailsCard.innerHTML += `<div>Salas: ${movieDetails.rooms}</div>`;
movieDetailsCard.innerHTML += `<div>Tipos de exibição: ${movieDetails.exhibitionTypes}</div>`;

const main = document.getElementsByTagName("main")[0];
main.appendChild(movieDetailsCard);

useFooter();
