$action = New-ScheduledTaskAction -Execute "powershell.exe" -Argument "C:\Users\lenovo\Desktop\ravi\Powershell scripting docs\logintime.ps1"

$trigger = New-ScheduledTaskTrigger -Once -At 2022-08-09T19:00:00+11:30 

$settings = New-ScheduledTaskSettingsSet -AllowStartIfOnBatteries -DontStopIfGoingOnBatteries

Register-ScheduledTask -Action $action -Trigger $trigger -Description "test task 2" -TaskName "test_task_2" -Settings $settings