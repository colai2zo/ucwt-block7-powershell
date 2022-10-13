<#
    2d Lt Joseph H. Colaizzo
    Day 6 Worksheet A
#>

# Problem 2
$a = 5
$b = "Name"
$c = @()

# Problem 3
function main ($a, $b, $c) {
    $number = Read-Host "Please input a number"
    if ($a -eq $number) {
        "`$a and `$number are the same."
    } else {
        "`$a and `$number are different."
    }

    #Problem 4
    $c += "name"
    do {
        $c += Read-Host "Please enter a name"
    } until ($c.Length -eq 5)

    # Problem 5
    forEach ($name in $c) {
        if ($name.Length -gt 5) {
            $name >> LongName.txt
        } else {
            $name >> ShortName.txt
        }
    }
}

function PrintTextFile {
    try {
        cat LongName.txt
    } catch {
        "Unable to read LongName.txt or does not exist."
    }
    try {
        cat ShortName.txt
    } catch {
        "Unable to read ShortName.txt or does not exist."
    }
}

$null > LongName.txt
$null > ShortName.txt
main $a $b $c
PrintTextFile

$profile = @{Hometown = "Chicago"; Height = 60; Weight = 150; Name = "Fred"}
$profile.Age = 39
$profile.Weight = 200
$profile.Hometown = Read-Host "Enter your hometown"
$profile
$profile.Count