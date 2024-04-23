teamviewercustom)
    name="TeamViewerHost"
    type="pkg"
    packageID="com.teamviewer.teamviewer"
    teamviewerConfigID="6b3yjfa"
    archiveName="TeamViewer-idc$teamviewerConfigID.pkg"
    downloadURL="https://dl.teamviewer.com/download/version_15x/CustomDesign/Install%20TeamViewer-idc$teamviewerConfigID.pkg"
    appNewVersion=$(curl -fs "https://www.teamviewer.com/en/download/macos/" | grep "Current version" | awk -F': ' '{ print $2 }' | sed 's/<[^>]*>//g')
    expectedTeamID="H7UGFBUGV6"
    ;;