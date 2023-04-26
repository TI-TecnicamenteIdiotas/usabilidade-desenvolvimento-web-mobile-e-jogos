function useLoadStorage() {
    return JSON.parse(sessionStorage.getItem("clickedMovie"));
}

export {
    useLoadStorage
}