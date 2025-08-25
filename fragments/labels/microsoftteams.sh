microsoftteams)
    name="Microsoft Teams"
    type="pkg"
    packageID="com.microsoft.teams2"
    # Fetch the latest version number from the Microsoft documentation page
    appNewVersion=$(curl -s https://learn.microsoft.com/en-us/officeupdates/teams-app-versioning | grep -oE '2[0-9]{4}\.[0-9]+\.[0-9]+\.[0-9]+' | head -n 1)
    downloadURL="https://statics.teams.cdn.office.net/production-osx/${appNewVersion}/MicrosoftTeams.pkg"
    expectedTeamID="UBF8T346G9"
    blockingProcesses=( Teams MSTeams "Microsoft Teams" "Microsoft Teams WebView" "Microsoft Teams WebView Helper" "Microsoft Teams Launcher" "Microsoft Teams (work preview)" "Microsoft Teams classic Helper" "com.microsoft.teams2.respawn")
    ;;
