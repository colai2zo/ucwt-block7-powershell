# Problem 1
$numbers = @(1..5)
Write-Host $numbers # Space separated
Write-Output $numbers # Newline separated

# Problems 2 and 3
$a = 335
$b = 334
if ($a -lt $b) {
    echo "This statement is true"
} else {
    echo "This statement is false"
}

# Problem 4
$favoriteWord = Read-Host -Prompt "What is your favorite word?"

# Problems 5 and 6
if (($a -gt $b) -and ($favoriteWord -eq "Anki")) {
    echo $favoriteWord
} elseif (($a -gt $b) -or ($favoriteWord -eq "Anki")) {
    echo "Partially Correct"
} else {
    echo "WRONG!"
}