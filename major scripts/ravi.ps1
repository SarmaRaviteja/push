#new-item apple

#New-Item -ItemType directory "$(Get-Date -f MM_dd_yyyy)" -command will create the directory with the name assigend as month,date and year.

#New-Item -ItemType directory "$(Get-Date -f hhmmss)" - Command will create the directory with the name assigned as present time.

#New-Item -ItemType directory "$(Get-Date -f ss)"- Command will create the directory with the name assigned as Seconds.

#New-Item -ItemType directory "$(Get-Date -f mm)"-Command will create the directory with the name assigned as minutes.

#New-Item -ItemType directory "$(Get-Date -f hh)"-Command will create the directory with the name assigned as hour.

#New-Item -ItemType directory "$(Get-Date -f ss-backup)" - this command will create a directory with the name assigend as "13-backup".

#Remove-Item <filename>,<filename> - command to delete multiple files.
#
#new-item -ItemType directory <directory name>,<directory name > - command to create multiple directories. 

#New-item ravi1,ravi2 - command to create multiple files. 

#(1..2) | ForEach-Object {New-item "sharma$_"} - command will create new files with the name assigned as sharma1 and sharma2. 

#Remove-Item vinod* - command will delete all the files with the name vinod using wild card. 

#(1..2) | ForEach-Object {New-Item -ItemType directory "vinod$_"} - command to create multiple directories. 

#Get-help - command used to help us like as same as "man" command in linux. 

#new-item 
#remember about the '-include' and '-exclude' commands

#The below are the modes of a file:
#d - Directory
#a - Archive
#r - Read-only
#h - Hidden
#s - System
#l - Reparse point, symlink, etc.
#------
#darhsl >> d-----, -a----, --r---,---h--,----s-,-----l
#$_ in the PowerShell is the 'THIS' toke.
#file objects have a property called Length which is the size of the file in bytes.

#1..20 | % {if($_ % 2 -eq 0 ) {"$_ is even"} }
#1..20 | % {if($_ % 2 -eq 1 ) {"$_ is odd"} }

#echo " enter any number: "
# $a=7 
# $c=$a%2  
# if($c -eq 0)  
# {  
# echo "The number is even"  
# } else  
# {  
# echo "The number is Odd"  
# }  

#echo " enter a number: "
#Read-Host a 
#$c=$a%2
#if($c -eq 0)
#{
#echo "The number is even"
#} else
#{
#echo "The number is Odd"
# }
