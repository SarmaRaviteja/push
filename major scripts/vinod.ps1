$bullet_bike = Read-host " Did you purchased Pulasr NS 200 Bike ? If yes then enter 'yes' or If not then enter 'no' "
if ( $bullet_bike -eq 'yes' ) {
        $num_plate = Read-host " Is your bike number plate is 0573? If yes then enter 'yes' or If not then enter 'no' "
    if ( $num_plate -eq 'yes' ) {
            echo " Then your name is chutiya_Vinod "
            }
            else {
            echo " Then your bike number plate is not 0573 "
            }
            }
            else {
            echo " Then you have to buy a Pulsar NS 200 "
            }