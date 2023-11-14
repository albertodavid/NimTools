import strutils

echo "Es mi edad múltiplo de 3?"

let years = parseInt(readLine(stdin))

echo "Tu edad es: ", years, " lo que supone que ", if (years mod 3 == 0): "si que es múltiplo de 3" else: "no es múltiplo de 3"