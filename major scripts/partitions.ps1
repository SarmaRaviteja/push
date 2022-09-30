#######################Command to Create a Partitions in windows Machine ############################

 new-partition -disknumber X -usemaximumsize | format-volume -filesystem NTFS -newfilesystemlabel newdrive


#######################Command to make multiple partitions or partitions of different sizes ###########################

new-partition -disknumberX -size XXgb - driveletter X | format-volume -filesystem NTFS -new filesystemlabel newdrive1
new-partition -disknumberX -size $MaxSize - driveletter Y | format-volume -filesystem NTFS -new filesystemlabel newdrive2
