#Clear-Variable ad
#Clear-Variable nad
foreach ( $user in $((Get-LocalUser).name)) {
    if ( $((Get-LocalGroupMember -Group "administrators").name) -match $user) {
    $ad += " $($user) "
    }
    else {
    $nad += " $($user) "
    }
    }
    echo " Admin Users are "
    $ad

    echo " Non-Admin Users are "
    $nad