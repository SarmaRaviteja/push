Write-Host "enter the value : "
$value = Read-Host
if ( $value -le 5 ) {
    echo " $($value) is less than 5 "
    }
else {
    echo " $($value) is greater than 5 "
    }