teamviewerhostcustom)
    name="TeamViewerHost"
    type="pkg"
    teamviewerConfigID="6f3jm76"
    archiveName="TeamViewerHost-idc$teamviewerConfigID.pkg"
    downloadURL="https://dl.teamviewer.com/download/version_15x/CustomDesign/Install%20TeamViewerHost-idc$teamviewerConfigID.pkg"
    appNewVersion=$(curl -fs "https://www.teamviewer.com/en/download/macos/" | grep "Current version" | awk -F': ' '{ print $2 }' | sed 's/<[^>]*>//g')
    appName="TeamViewer.app"
    expectedTeamID="H7UGFBUGV6"
    ;;