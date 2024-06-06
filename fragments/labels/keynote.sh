keynote)
    name="Keynote"
    type="pkg"
    appNewVersion=$(curl -fs "https://apps.apple.com/us/app/keynote/id409183694" | grep -o 'Version [0-9]\+\.[0-9]\+\(\.[0-9]\+\)\?' | head -1 | awk '{print $2}')
    expectedTeamID="74J34U3R6X"
    jamfPolicyEvent="keynote_pkg"
    jamfDownload="true"
    ;;
