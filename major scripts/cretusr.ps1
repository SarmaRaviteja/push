############ Script to create the users by passing the parameters ################
function user_cret {
param($username, $password) 

$secpass = ConvertTo-SecureString $password -AsPlainText -Force

New-LocalUser $username -Password $secpass

########### Script to give the users admin permissions #############

Add-LocalGroupMember -Group "Administrators" -Member $username
}