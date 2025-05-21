sketch)
    name="Sketch"
    type="zip"
    downloadURL=$( curl -sf https://www.sketch.com/releases/mac/ | grep 'href="https://download.sketch.com' | tr '"' "\n" | grep -E "https.*.zip" | head -n 1 )
    appNewVersion=$( grep -oE '\d+\.\d+' <<< $downloadURL)
    expectedTeamID="WUGMZZ5K46"
    ;;
