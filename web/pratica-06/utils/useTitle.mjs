import {projectName} from "../data/index.mjs";

function useTitle() {
    document.title = projectName;
}

export {
    useTitle
}