teamviewerhostcustom)
    name="TeamViewerHost"
    type="pkg"
    packageID="com.teamviewer.teamviewerhost"
    teamviewerConfigID="6f3jm76"
    archiveName="TeamViewerHost-idc$teamviewerConfigID.pkg"
    downloadURL="https://dl.teamviewer.com/download/version_15x/CustomDesign/Install%20TeamViewerHost-idc$teamviewerConfigID.pkg"
    appNewVersion=$(curl -fsL "https://www.teamviewer.com/en/download/portal/macos/" | grep -Eo 'Current version[^0-9]{1,30}[0-9]+(\.[0-9]+)+' | head -n 1 | grep -Eo '[0-9]+(\.[0-9]+)+')
    expectedTeamID="H7UGFBUGV6"
    ;;