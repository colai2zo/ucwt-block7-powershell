<#  
    2d Lt Joseph H. Colaizzo
    Day 5 Worksheet 
#>

function PrintGrades {
    "Passing Grades"
    cat Pass.txt
    "Failing Grades"
    cat Fail.txt
}

function PassOrFail ($grades) {
    forEach ($grade in $grades) {
        if ($grade -gt 60) {
            $grade >> Pass.txt
        } elseif ($grade -le 59) {
            $grade >> Fail.txt
        }
    }
    PrintGrades
}

function UserInput {
    $grades = @()
    $i = 1
    do {
        [double] $grade = Read-Host "What is your grade from homework $i"
        if ($grade -gt 100 -or $grade -lt 0) {
            "Please enter a grade between 0 and 100 (inclusive)."
            continue
        }
        $i++
        $grades += $grade
    }
    until ($grades.Length -eq 5)
    PassOrFail $grades 
}

function UserName {
    $name = Read-Host "What is your name?"
    $name > Pass.txt
    $name > Fail.txt
    UserInput
}
UserName



