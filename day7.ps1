<# 
    2d Lt Joseph H. Colaizzo
    Day 7 Worksheet
#>

$FootballTeam = @{City = "Indianapolis"; State = "Indiana"; Country = "United States"; Mascot = "Colts"}
$FootballTeam.Add("Best Player", "Peyton Manning")
$FootballTeam.City = "Baltimore"

function WriteToFile ($Cities) {
    "Cities" > cities.txt
    $Cities >> cities.txt
    cat cities.txt
}

function AskUser {
    $Cities = @()
    do {
        $Cities += Read-Host "Enter a city you would like to explore"
    } until ($Cities.Length -eq 8)
    $Cities
    WriteToFile $Cities
}

function main ($TeamInfo) {
    $TeamInfo.Mascot = Read-Host "Enter a new mascot"
    AskUser
}

main $FootballTeam


