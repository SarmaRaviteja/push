############ Script to create the users by passing the parameters ################
function nopass_cret_user {
param($username) 
New-LocalUser $username -nopassword
########### Script to give the users admin permissions #############
Add-LocalGroupMember -Group "Administrators" -Member $username
}