Write-Host " Enter the value of y "
[int]$y = Read-Host

if ( $y -gt 10 ) {
       if ( $y -gt 15) {
           echo " $($y) is greater than 15 "
           }
       else {
       echo " $($y) is greater than 10 "
       }
       }
       else {
       echo " $($y) is not greater than 10 "
       }