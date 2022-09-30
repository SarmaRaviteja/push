########### Script to give the users admin permissions #############
function credt_user {
param($username, $password) 

$pom = ConvertTo-SecureString $password -AsPlainText -Force
New-LocalUser "$username" -Password "$($password)" 
Add-LocalGroupMember -Group "Administrators" -Member $username 
}