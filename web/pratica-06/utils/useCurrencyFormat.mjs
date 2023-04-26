function useCurrencyFormat(number) {
    return number.toFixed(2).padStart(5, "0");
}

export {
    useCurrencyFormat
}