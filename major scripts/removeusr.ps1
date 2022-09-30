function remv_user {
foreach ($user in $(Invoke-RestMethod -Method Get -uri https://jsonplaceholder.typicode.com/users))   {
        Remove-LocalUser $($user.name -replace " ","_") 
        }
        }