
import strutils
proc readDatabase*(ef: string): seq =

    let f = readFile(ef)
    result = f.split(", ")
