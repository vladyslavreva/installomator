falcon)
	name="Falcon"
 	type="pkg"
  	downloadURL="https://www.digiexam.com/hubfs/client/Digiexam_Mac.dmg"
   	appNewVersion=$( /Applications/Falcon.app/Contents/Resources/falconctl stats 2>/dev/null | grep version | awk '{print $2}')
    	expectedTeamID="73"
   ;; 
