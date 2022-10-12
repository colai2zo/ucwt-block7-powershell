# Problem 1
$i = 90
while ($i -le 100) {
    echo $i
    $i += 7
}

# Problem 2
$favoriteFoods = @()
for ($i = 0; $i -lt 5; $i++) {
    $favoriteFoods += Read-Host -Prompt "Enter your favorite food"
}
echo $favoriteFoods


# Problem 3
$nums = @(1..20)
foreach ($n in $nums) {
    if ($n % 6 -eq 0) {
        echo $n
    }
}

# Problem 4
$found = $false
foreach ($n in $nums) {
    if ($n % 4 -eq 0) {
        echo $n
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
echo $favoriteCharacters

# Problem 6 
$numLines = 5
for ($i = 1; $i -le $numLines; $i++) {
    $line = " " * ($numLines - $i) + "*" * $i
    echo $line
}

# Video For Loop Exercise
$students = @()
$null > EvenNames.txt
$null > OddNames.txt
[int]$numStudents = Read-Host "How many students are in the class?"
for ($i = 1; $i -le $numStudents; $i++) {
    $name = Read-Host "Enter student $i`'s name"
    $students += $name
    if ($name.Length %2 -eq 0) {
        $name >> EvenNames.txt
    } else {
        $name >> OddNames.txt
    }
}


# Video Foreach loop exercise
$names = @("Bob", "John", "Joey", "Janet", "Annie", "Brandon")
$ANames = @()
foreach ($name in $names) {
    if ($name.IndexOf("a") -ge 0) {
        $ANames += $name
    }
}
$ANames

# Video Exercise 4
$i = 0
do {
    $i
    $i += 2
} until ($i -gt 20)

$i = 0
do {
    $i
    $i += 2
} while ($i -le 20)