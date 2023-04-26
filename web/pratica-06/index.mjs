import {movies, projectName} from './data';
import {useFooter} from "./utils/useFooter";
import {useHeader} from "./utils/useHeader";

document.title = projectName;

useHeader();

const main = document.getElementsByTagName("main")[0];

function handleClick(movieIndex) {
    sessionStorage.setItem("clickedMovie", JSON.stringify(movies[movieIndex]));
    location.href = "views/movieDetails";
}

movies.forEach((movie, index) => {
    const img = document.createElement("img");
    img.src = movie.imageUrl;
    img.alt = `${movie.name}-cover-image`;
    img.onclick = () => handleClick(index);

    main.appendChild(img);
});

useFooter();