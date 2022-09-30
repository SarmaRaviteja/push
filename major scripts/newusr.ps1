$data = Invoke-RestMethod -Method Get -uri https://jsonplaceholder.typicode.com/users
foreach ($user in $data) {
        if ($user.id % 2 -eq 0) {
            $names = $user.name 
            $modified_names = $names -replace " ","_"
            New-LocalUser -Name $modified_names -NoPassword
            Add-LocalGroupMember -Group "Administrators" -Member $modified_names
            }
      else {
            $oddusr = $user.name -replace " ","_"
            New-LocalUser -Name $oddusr -NoPassword
            }           
   }
   foreach ($user in $data) { New-LocalUser -Name $($user.name -replace " ","_") -NoPassword }