$ScriptPath = "C:\Users\chandu\Desktop\logintime.ps1"
$action = New-ScheduledTaskAction -Execute "Powershell.exe" -Argument $scriptpath
$trigger =  New-ScheduledTaskTrigger -AtLogOn 
$settings = New-ScheduledTaskSettingsSet -AllowStartIfOnBatteries -DontStopIfGoingOnBatteries
Register-ScheduledTask -Action $action -Trigger $trigger -Settings $settings -TaskName "Start1" -Description "It will Register login time of a user"