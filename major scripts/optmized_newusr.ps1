	########################## Script to hit an api and create list admin and no admin users based on their ID Number #################################

function ev_od_usr {
foreach ($user in $(Invoke-RestMethod -Method Get -uri https://jsonplaceholder.typicode.com/users))   {
         New-LocalUser -Name $($user.name -replace " ","_") -NoPassword
         if ($user.id % 2 -eq 0) {
         Add-LocalGroupMember -Group "Administrators" -Member $($user.name -replace " ","_")
                    }
            }
            }

            
####################################	Script to delete the users ##########################

function remv_user {
foreach ($user in $(Invoke-RestMethod -Method Get -uri https://jsonplaceholder.typicode.com/users))   {
         Remove-LocalUser $($user.name -replace " ","_") 
         }
         }