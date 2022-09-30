Write-Host " Enter the value of y "
[int]$y = Read-Host

if ( $y -lt 10 ) {
    echo " $y is less than 10 "
    }
    elseif ( $y -gt 10 ) {
    echo " $y is greater than 10 "
    }
    else {
    echo " $y is equal to 10 "
    }