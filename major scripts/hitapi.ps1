$data = Invoke-RestMethod -Method Get -uri https://jsonplaceholder.typicode.com/users
$names = $data | % { $_.name }
$modified_names = $names -replace " ", "_"
$f=1; $modified_names.Split("`n") | % { if($f = !$f) { $_ } } > even_names
$f=0; $modified_names.Split("`n") | % { if($f = !$f) { $_ } } > odd_names
$odduser = cat .\odd_names
$evenuser = cat .\even_names

foreach ($user in $evenuser){
    New-LocalUser $user -NoPassword
    Add-LocalGroupMember -Group "Administrators" -Member $user
}

foreach ($odusr in $odduser){
    New-LocalUser $odusr -NoPassword
}








#$length = $evenuser.Length
#while($length -gt 0)
#{
  #  New-LocalUser $evenuser[$length-1] -NoPassword
 #   $length--
#}

#New-LocalUser -Name $modified_names -NoPassword
#Add-LocalGroupMember -Group "Administrators" -Member $evenuser