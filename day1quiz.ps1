# Problem 1
$x = "43"
$x

# Problem 2
$x = 43
$x

# Problem 3
$bool = $false
$bool

# Problem 4
$array = 4..9
$array

# Problem 5
<# 
Name: Joseph Colaizzo
Date: 11 October 2022
Class Number: 22023
#>

# Problem 6
$a = "strong"
$a += "3r"
$a

# Problem 7
$userInfo = @{name = "Bob"; state = "Hawaii"; country = "usa"}

# Problem 8
$userInfo.name = "George"
$userInfo.state = "Mississippi"
$userInfo

# Problem 9
$age = 36
$lowerLimit = 18

# Problem 10
$age -gt $lowerLimit

# Problem 11
$upperLimit = 45

# Problem 12
$upperLimit -gt $age -and $age -gt $lowerLimit

# Problem 13
$age %2 -eq 0

# Problem 14
[int32] $a = Read-Host -Prompt "Enter a number bigger than 10 or smaller than 5"
($a -lt 5) -or ($a -gt 10)

# Problem 15
$a = 45
$b = 12
$c = 0
$c += $b
$c += $a
$c