$action = New-ScheduledTaskAction -Execute "Powershell.exe"  'C:\Users\lenovo\Desktop\ravi\Powershell scripting docs\teja.ps1'
$trigger =  New-ScheduledTaskTrigger -Once -At 2022-08-08T15:32Z
Register-ScheduledTask -Action $action -Trigger $trigger -TaskName "1-2 task" -Description "creates a file"