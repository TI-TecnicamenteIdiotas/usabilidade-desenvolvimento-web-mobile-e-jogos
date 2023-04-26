import {projectName} from "../data/index.mjs";

function useHeader() {
    const header = document.getElementsByTagName("header")[0];
    header.innerText = projectName;
}

export {
    useHeader
}