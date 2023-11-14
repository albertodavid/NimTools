import strutils

echo "Bienvenido a la calculadora de Días creada en Nim"

let years = parseInt(readLine(stdin))
let days = years * 365
echo "Hola, tienes: ", years, " años!, lo que supone: ", days, " días!!"  