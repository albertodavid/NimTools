import modules/readMyFile
import modules/generateWeb

proc main() =
    echo "Welcome to Perso·nim. By Scthch"
    echo "-------------------------------"
    echo "Select an option:"
    echo "1. Generate one identity"
    echo "2. Batch identity generation"
    echo "3. Exit"

    echo "\nSelect an option: "
    let menuSelection = (readLine(stdin)) 
    

    case menuSelection
        of "1": 
            generateWeb.generateWebpage()
        of "2":
            echo "dosss"
        of "3":
            echo "adios"
        else: 
            echo "No menu selected. Exiting..."

main()