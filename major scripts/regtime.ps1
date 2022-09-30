$ScriptPath = "C:\Users\chandu\Desktop\logintime.ps1"
$action = New-ScheduledTaskAction -Execute "Powershell.exe" -Argument $scriptpath
$trigger =  New-ScheduledTaskTrigger  -Once -At 2022-08-10T12:06:30+05:30
$settings = New-ScheduledTaskSettingsSet -AllowStartIfOnBatteries -DontStopIfGoingOnBatteries
Register-ScheduledTask -Action $action -Trigger $trigger -Settings $settings -TaskName "login1" -Description "It will Register login time of a user"