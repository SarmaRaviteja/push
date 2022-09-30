
$bullet_bike = Read-host " Did you purchased Royal Enfield Bike ? If yes then enter 'yes' or If not then enter 'no' "
if ( $bullet_bike -eq 'yes' ) {
        $num_plate = Read-host " Is your bike number plate is 0819? If yes then enter 'yes' or If not then enter 'no' "
    if ( $num_plate -eq 'yes' ) {
            echo " Then you are M. Ravi Teja "
            }
            else {
            echo " Then your bike number plate is not 0819 "
            }
            }
            else {
            echo " Then you have to buy a Royal enfiled "
            }