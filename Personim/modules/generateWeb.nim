
import strformat
import strutils
import std/random
randomize()
import readMyFile

proc generateWebpage*() = 

    let names = readMyFile.readDatabase("databases/names.txt")
    let surnames = readMyFile.readDatabase("databases/surnames.txt")
    let nicks = readMyFile.readDatabase("databases/nicks.txt")
    #let addresses = readMyFile.readDatabase("databases/addresses.txt")
    let jobs = readMyFile.readDatabase("databases/jobs.txt")
    let emails = readMyFile.readDatabase("databases/email.txt")
    let phones = readMyFile.readDatabase("databases/phones.txt")
    let bdays = readMyFile.readDatabase("databases/bdays.txt")

    let name = names[rand(names.len()-1)] & " " & surnames[rand(surnames.len()-1)] & " " & surnames[rand(surnames.len()-1)]
    let username = nicks[rand(nicks.len()-1)] & intToStr(rand(999))
    let address = "Calle 123" 
    let email = username & "@" & emails[rand(emails.len()-1)]
    let phone = phones[rand(phones.len()-1)]
    let job = jobs[rand(jobs.len()-1)]
    let birthday = bdays[rand(bdays.len()-1)]
    
    let webTemplate = fmt"""

    <!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="src/styles.css"  />
    <title>Perso · Nim</title>

</head>
<body>
    <header>
        <h1>Perso·Nim</h1>
    </header>

    <div class="card">
        <div class="profile-info">
        <img class="profile-picture" src="https://thispersondoesnotexist.com/" alt="Foto de perfil">
        <h1>{name}</h1>
        <p>@{username}</p>
    </div>
        <p>Address: {address}</p>
        <p>Email: {email}</p>
        <p>Phone: {phone}</p>
        <p>Job: {job}</p>
        <p>Birthday: {birthday}</p>
    </div>
</body>
</html>

    """

    writeFile("user.html", webTemplate)