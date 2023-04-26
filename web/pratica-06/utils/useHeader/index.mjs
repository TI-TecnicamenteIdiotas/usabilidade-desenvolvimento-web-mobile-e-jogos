import {projectName} from "../../data";

function useHeader() {
    const header = document.getElementsByTagName("header")[0];
    header.innerText = projectName;
}

export {
    useHeader
}