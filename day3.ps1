# Problem 1
$i = 90
while ($i -le 100) {
    Write-Host $i
    $i += 7
}

# Problem 2
$favoriteFoods = @()
for ($i = 0; $i -lt 5; $i++) {
    $favoriteFoods += Read-Host -Prompt "Enter your favorite food"
}
Write-Host $favoriteFoods


# Problem 3
$nums = @(1..20)
foreach ($n in $nums) {
    if ($n % 6 -eq 0) {
        Write-Host $n
    }
}

# Problem 4
$found = $false
foreach ($n in $nums) {
    if ($n % 4 -eq 0) {
        Write-Host $n
        if ($found -eq $true) {
            break
        }
        $found = $true
    }
}

# Problem 5
# If we change while into until, it only runs once, because until keeps the loop going if the condition is false.
$favoriteCharacters = @()
do {
    $favoriteCharacters += Read-Host -Prompt "What is your favorite Star Wars character?"
} while ($favoriteCharacters.Length -lt 4)
Write-Host $favoriteCharacters

# Problem 6
for ($i = 1; $i -le 5; $i++) {
    $line = " " * (5 - $i) + "*" * $i
    Write-Host $line
}
    