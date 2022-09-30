
$got_call = Read-host " Did you get any call from sashi? If yes then enter 'yes' or If not then enter 'no' "
if ( $got_call -eq 'yes' ) {
    echo " Then Sashi is your friend "
    }
    else {
    echo " Then sashi is not your friend "
    }