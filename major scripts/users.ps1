#try {
$Password = Read-Host -AsSecureString

#$username = Read-Host 
New-LocalUser "ravi" -Password "$Password" -FullName "raviteja" -Description "script to create user in windows"
#tsdiscon
#tdiscon
#Remove-localuser
#}
#catch {
#echo "an error in TDISCON"
#}
