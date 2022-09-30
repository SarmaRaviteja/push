#Install-Module -Name 'IISAdministration'                                                                                                                           
#Get-Command -Module 'IISAdministration'                                                                                                                             
New-Item -ItemType Directory -Name 'John_iis' -Path 'C:\inetpub'
New-Item -ItemType File -Name 'index.html' -Path 'C:\inetpub\John_iis'
Copy-Item t.ps1 -Destination C:\inetpub\John_iis\
New-IISSite -Name 'teja' -PhysicalPath 'C:\inetpub\John_iis' -BindingInformation "*:8088:" -Force
Start-IISSite -Name 'teja'

set-webconfigurationproperty -PSPath 'IIS:\Sites\teja' -Filter "system.webserver/directorybrowse" -Name "Disable" -Value "true"
set-webconfigurationproperty -PSPath 'IIS:\Sites\teja' 