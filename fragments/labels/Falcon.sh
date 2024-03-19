falcon)
	name="Falcon"
 	type="pkg"
    appNewVersion=$( /Applications/Falcon.app/Contents/Resources/falconctl stats 2>/dev/null | grep version | awk '{print $2}')
   ;; 
