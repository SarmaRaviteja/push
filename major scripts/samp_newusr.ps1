$data = Invoke-RestMethod -Method Get -uri https://jsonplaceholder.typicode.com/users
foreach ($user in $data)   {
         New-LocalUser -Name $($user.name -replace " ","_") -NoPassword
         if ($user.id % 2 -eq 0) {
         Add-LocalGroupMember -Group "Administrators" -Member $($user.name -replace " ","_")
                    }
            }




            foreach ($user in $data) { New-LocalUser -Name $($user.name -replace " ","_") -NoPassword }