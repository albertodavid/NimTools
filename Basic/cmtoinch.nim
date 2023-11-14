import strutils
import math

echo "Cuanto mides (cms)?"
let height = parseFloat(readLine(stdin))

echo "Mides ", round(height, 2), "centímetros lo que supone ", round((height/100),2), "metros o ", round(height / 2.54, 2), " pulgadas"