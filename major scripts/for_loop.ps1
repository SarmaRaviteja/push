#$names = @()


#$data = Invoke-RestMethod -Method Get -uri https://jsonplaceholder.typicode.com/users
#$names = @()
#foreach ($user in $data) {
 #       if ($user.id % 2 -eq 0) {
  #          $names += $user.name
   #         $modified_names = $names -replace " ","_"
    #        New-LocalUser -Name $modified_names -NoPassword
     #       Add-LocalGroupMember -Group "Administrators" -Member $modified_names
      #      Clear-Variable names
       #     }
      #else {
      #      $oddusr = $user.name -replace " ","_"
      #      New-LocalUser -Name $oddusr -NoPassword
      #      Clear-Variable oddusr        
      #}
                
   #}




  # foreach ($user in $data) {
   #     if ($user.id % 2 -eq 0 ) {
    #        $names += $user.name 
     #       $names
      #      echo "hello $($names)"
       #     Clear-Variable names
       # }
        #else {
         #     $r = $user.name -replace " ","_"
          #    echo "hello $($r)"
           #   Clear-Variable r
            #  }
   #}