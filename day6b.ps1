<#
    2d Lt Joseph H. Colaizzo
    Day 6 Worksheet B
#>

function printFiles {
    cat High.txt
    cat Low.txt
}

function highLow ($evens, $name) {
    forEach ($even in $evens) {
        if ($even -ge 50) {
            $even >> High.txt
        } else {
            $even >> Low.txt
        }
    }
}

function numInput ($name) {
    $evens = @()
    do{
        [int] $num = Read-Host "Please enter an even number"
        if ($num % 2) { # Odd
            "Please try again (only even numbers accepted)."
        } else {
            $evens += $num
        }
    } until ($evens.Length -eq 5)
    highLow $evens $name
}


function userName {
    $name = Read-Host "Please enter your name"
    numInput $name
}

userName
printFiles
