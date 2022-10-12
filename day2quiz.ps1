# Problem 1

[double]$favoriteNumber = Read-Host "What is your favorite number"
if ($favoriteNumber -le 100.0 -and $favoriteNumber -ge 0.0) {
    echo "You entered a number between 0 and 100"
} else { 
    echo "you entered a negative number or number bigger than 100"
}

# Problem 2
$favoriteCar = Read-Host "What is your favorite car"
if ($favoriteCar.Length %2 -eq 0) {
    echo "You picked an even word"
} else {
    echo "You picked an odd word...how odd!?"
}

# Problem 3
$branchCode = Read-Host "Enter A, N, M, S, or F"
switch ($branchCode) {
    "A" { "Army" }
    "N" { "Navy" }
    "M" { "Marines" }
    "S" { "Space Force" }
    "F" { "Air Force" }
}