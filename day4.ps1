# Problem 1
Get-Help Get-Random

# Problem 2
Get-Childitem

# Problem 3
Get-Variable > C:\Users\joeyc\Desktop\var.txt

# Problem 4
$minute = Get-Date -Format mm

# Problem 5
Get-ComputerInfo

# Problem 6
function populateArray {
    $numbers = @()
    while ($numbers.Length -lt 10) {
        $numbers += Read-Host "Please enter a random number"
    }
    $numbers
}

# Problem 7
function raise ($base, $power) {
    return [Math]::Pow($base, $power)
}

# Problem 8
$arr = @(1..10)
function randomMultiplier ($arr) {
    $randomArr = @()
    foreach ($e in $arr) {
        $multiplier = Get-Random -Minimum 2 -Maximum 20
        $randomArr += ($e * $multiplier)
    }
    $randomArr
}
randomMultiplier $arr

# Problem 9
function div13 ($num) {
    $num / 13
}

function findMultipleOf13 {
    $num = $null
    do {
        $num = Get-Random -Minimum 13 -Maximum 100
    } until ($num % 13 -eq 0)
    div13 $num
}
findMultipleOf13     