# Problem 1
$bestTrainingSquadron = 333
$bestTrainingSquadron

# Problem 2
$bestStudyTool = "Anki > Quizlet"
$bestStudyTool

# Problem 3
$nouns = @()
$nouns

# Problem 4
$nouns = @("table", "chair", "computer", "envelope", "bottle")
$nouns

# Problem 5
$nouns += $bestStudyTool
$nouns

# Problem 6
# Note: PS rounds as follows for range: Anything greater than 0.5, round up.
$range = 1.2..10.5
$range


# Problem 7
$range += $bestTrainingSquadron
$range

# Problem 8
$isCorrectAnswer = $true
$isCorrectAnswer

# Problem 9
$topBases = @{lackland = "Texas"; hickam = "Hawaii"; ramstein = "Germany"; aviano = "Italy"; keesler = "Mississippi"}
$topBases.ramstein = "Europe"
$topBases.Remove("keesler")
$topBases

# Problem 10
$str = [string]$bestTrainingSquadron
$str.GetType().Name
$str

# Problem 11
$nouns += $str
$nouns

# Problem 12
$a = 1
$b = 2
$c = 3
$d = 4
(($c - $b) / ($d - $c)) % $c * $d

# Problem 13
$a -gt $b # False
$d -ge $c # True
$a -lt $b # True
$d -le $a # False
$b -eq $c # False
$b -ne $c # True

# Problem 14
($a -gt $b) -and ($d -ge $c)
($a -gt $b) -or ($d -ge $c)
($a -gt $b) -xor ($d -ge $c)
-not ($a -lt $b)