function useSaveStorage(object) {
    sessionStorage.setItem("clickedMovie", JSON.stringify(object));
}

export {
    useSaveStorage
}